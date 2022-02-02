###############################################################################################################
                                                                                                  #  Подготовка

listObjects = cmds.ls (sl=True) # Список трансформов
if (cmds.objExists("OVERLAPPER")):
	print "\n||| OVERLAPPER layer already exist |||\n"
else:
	mainLayer = cmds.animLayer ("OVERLAPPER")


###############################################################################################################
                                                                                       #  Глобальные переменные

timeScale = 0.7 # Скейл времени
goalSmooth = 1.5 # Сглаживание позиции
goalW = 0.6 # Влияние физики
cycle = False # Проверка цикла

pRad = 0.253 # Размер меша частицы
pShape = 4 # Тип отображения частицы

asT = cmds.playbackOptions (query=True, min=True) # Левая граница анимации
aeT = cmds.playbackOptions (query=True, max=True) # Правая граница анимации
cmds.currentTime (asT) # Установка времени в начало анимации

c = 0 # Счётчик для цикла


###############################################################################################################
                                                                                                      #  Методы

def setAttributes ():
	cmds.setAttr (partRtype, pShape)
	cmds.setAttr (partRrad, pRad)
	cmds.setAttr (partRsm, goalSmooth)
	cmds.setAttr (partRwe, goalW)
	
	cmds.setAttr (partNucl, timeScale)
	
def layerCreation ():
	cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
	cmds.delete (aimLoc) # Удаляем объекты скрипта
	cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
	cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
	cmds.rename ("BakeResults", layerComp) # Переименовываем слой

def bakingToLocator ():
	cmds.duplicate (tempLoc, rr=True, n = aimLoc) # Дублируем локатор
	cmds.select (aimLoc, r=True) # Выделяем аим локатор
	cmds.parent (w=True) # Разбираем иерархию
	
	cmds.connectAttr (partPos, partAimLoc, f=True) # Привязываем аим локатор к частице
	if (cycle):
		cmds.bakeResults (aimLoc, t = (asT, aeT*3), sm=True, at = "translate") # Запекание аим локатора для цикла
		cmds.select (aimLoc, r=True) # Выделяем аим локатор
		cmds.keyframe (tc = -aeT, r=True) # Сдвигаем тройной цикл на один проход влево
	else:
		cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # Запекание аим локатора для линейной анимации
		
	cmds.delete (tempLoc, tempPart, tempNucl) # Удаляем объекты физики
	cmds.select (aimLoc, r=True) # Выделяем аим локатор как родителя
	cmds.select (listObjects[c], add=True) # Выделяем объект как подчиненного
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн
	
def layerCreation ():
#cmds.delete ("_layer_0", "_layer_1", "_layer_2")
	
	layerBase = "overlap_" # Имя базы слоя
	layerComp = listObjects[c] + '_layer_{0}'.format(0) # Имя компонента слоя
	layerName = layerBase + listObjects[c] # Имя слоя	
	
	if (cmds.objExists(layerName)):
		
		cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
		cmds.delete (aimLoc) # Удаляем объекты скрипта
		cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
		cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
		cmds.rename ("BakeResults", layerComp) # Переименовываем слой
	else:
		cmds.animLayer (layerName) # Создаём пустой слой для всех оверлапов объекта
		cmds.animLayer (layerName, e=True, p = mainLayer) # Переносим базу слоя в главный слой
		cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
		cmds.delete (aimLoc) # Удаляем объекты скрипта
		cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
		cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
		cmds.rename ("BakeResults", layerComp) # Переименовываем слой

###############################################################################################################
                                                                                                       #  Вызов

for i in listObjects: # Основной цикл
	
	aimLoc = i + "_aim_loc" # Имя аим локатора
	tempLoc = i + "_temp_loc" # Имя физ локатора
	tempPart = i + "_temp_part" # Имя физ частицы
	tempNucl = "nucleus1" # Имя физ ноды

	partAimLoc = aimLoc + ".translate" # Обращение к позиции аим локатора
	partRtype = tempPart + "Shape.particleRenderType" # Обращение к типу отображения частицы
	partRrad = tempPart + "Shape.radius" # Обращение к размеру частицы
	partRsm = tempPart + "Shape.goalSmoothness" # Обращение к мягкости физики
	partRwe = tempPart + "Shape.goalWeight[0]" # Обращение к весу ноды
	partPos = tempPart + ".center" # Обращение к центру частицы
	partNucl = tempNucl + ".timeScale" # Обращение к скейлу времени физ ноды
	
	cmds.spaceLocator (n = tempLoc) # Создаём физ локатор
	cmds.matchTransform (tempLoc, listObjects[c], pos=True) # Перемещаем локатор в пивот объекта
	
	objCenter = tempLoc + ".translate" # Обращение к центру объекта
	objC = cmds.getAttr (objCenter) # Записываем центр объекта
	
	locCenter = tempLoc + ".center" # Обращение к центру физ локатора
	locTr = tempLoc + ".translate" # Обращение к позиции физ локатора
	
	cmds.nParticle (p = objC, n = tempPart , c = 1) # Создаём частицу в целевой позиции
	cmds.goal (tempPart, w=goalW, utr=1, g = tempLoc)# Создаём физическую связь
	
	cmds.select (tempLoc, r=True) # Выделяем физ локатор
	cmds.select (listObjects[c], add=True) # Выделяем целевого родителя
	cmds.parent (r=True) # Создаём иерархию
	
	cmds.matchTransform (tempLoc, listObjects[c], pos=True) # Перемещаем локатор в пивот объекта
	
	setAttributes ()
	bakingToLocator ()
	layerCreation ()
	
	cmds.select (d=True) # Деселект
	c += 1
	
#c = 0 # Счётчик для цикла

for l in listObjects:
	cmds.select (l, add=True) # 
	
	
###############################################################################################################
                                                                                                        #  Логи

#print "\n>>> Границы таймлайна:", asT, "---", aeT
print "\n||| The Overlapper just saved your time |||\n"

                                                                                                  #  Завершение
###############################################################################################################