####################################################################################################################
import maya.cmds as cmds

goalSmooth = 2.5 # Сглаживание позиции
timeScale = 0.7 # Скейл времени
goalW = 0.5 # Влияние физики

cycle = False # Проверка цикла

pRad = 0.253 # Размер меша частицы
pShape = 4 # Тип отображения частицы

asT = cmds.playbackOptions (query=True, min=True) # Левая граница анимации
aeT = cmds.playbackOptions (query=True, max=True) # Правая граница анимации

####################################################################################################################
#"https://vk.com/geneugene3d"

if cmds.window ("main", exists = True):
	cmds.deleteUI ("main")

overUI = cmds.window ("main", title='PosOverlapper v0.07', mxb=False, s=False)
cmds.columnLayout (rs=5)

cmds.text (l=" Just run this script", h=30, hl=True, ann="This is my first script")



cmds.floatSliderGrp ("s1", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
v=goalSmooth, cc=('goalSmooth=printSmoothV()'), pre=1, cal=(1, "left"), el="~2.5", w=500, ann="Основное значение от 2 до 5")

cmds.floatSliderGrp ("s2", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
v=timeScale, cc=('timeScale=printScaleV()'), pre=1, cal=(1, "left"), el="~0.7", w=500, ann="Основное значение от 0.5 до 1")

cmds.floatSliderGrp ("s3", l='Weight', f=True, min=0.0, max=1.0, 
v=goalW, cc=('goalW=printWeightV()'), pre=1, cal=(1, "left"), el="~0.5", w=500, ann="Основное значение 0.5")



cmds.button (label="Run script", command=('positionStart()'), h=60, w=150)
cmds.button (label="Delete layer", command=('deleteMainLayer()'), h=40, w=150)

cmds.window ("main", e=True,wh=(10,10) , rtf=True)
cmds.showWindow (overUI)

####################################################################################################################

def printSmoothV():
	goalSmooth = cmds.floatSliderGrp ("s1", q=True, v=True)
	print "Position smooth =", goalSmooth
	return goalSmooth
	
def printScaleV():
	timeScale = cmds.floatSliderGrp ("s2", q=True, v=True)
	print "Position scale =", timeScale
	return timeScale
	
def printWeightV():
	timeScale = cmds.floatSliderGrp ("s3", q=True, v=True)
	print "Position weight =", goalW
	return timeScale

def deleteMainLayer():
	cmds.delete ("OVERLAPPER")

####################################################################################################################
### Main (need to rebuld code)


def positionStart():
	
	cmds.currentTime (asT) # Установка времени в начало анимации
	
	listObjects = cmds.ls (sl=True) # Список трансформов

	mainLayer = "" # Имя глвыного слоя

	if (cmds.objExists("OVERLAPPER")):
		print "\n||| OVERLAPPER layer already exist |||\n"
	else:
		mainLayer = cmds.animLayer ("OVERLAPPER")
		print "\n||| OVERLAPPER layer created |||\n"





	for i in range(len(listObjects)): # Основной цикл
		
		aimLoc = listObjects[i] + "_aim_loc" # Имя аим локатора
		tempLoc = listObjects[i] + "_temp_loc" # Имя физ локатора
		tempPart = listObjects[i] + "_temp_part" # Имя физ частицы
		tempNucl = "nucleus1" # Имя физ ноды
	
		partAimLoc = aimLoc + ".translate" # Обращение к позиции аим локатора
		partRtype = tempPart + "Shape.particleRenderType" # Обращение к типу отображения частицы
		partRrad = tempPart + "Shape.radius" # Обращение к размеру частицы
		partRsm = tempPart + "Shape.goalSmoothness" # Обращение к мягкости физики
		partRwe = tempPart + "Shape.goalWeight[0]" # Обращение к весу ноды
		partPos = tempPart + ".center" # Обращение к центру частицы
		partNucl = tempNucl + ".timeScale" # Обращение к скейлу времени физ ноды
		
		cmds.spaceLocator (n = tempLoc) # Создаём физ локатор
		cmds.matchTransform (tempLoc, listObjects[i], pos=True) # Перемещаем локатор в пивот объекта
		
		objCenter = tempLoc + ".translate" # Обращение к центру объекта
		objC = cmds.getAttr (objCenter) # Записываем центр объекта
		
		locCenter = tempLoc + ".center" # Обращение к центру физ локатора
		locTr = tempLoc + ".translate" # Обращение к позиции физ локатора
		
		cmds.nParticle (p = objC, n = tempPart , c = 1) # Создаём частицу в целевой позиции
		cmds.goal (tempPart, w=goalW, utr=1, g = tempLoc)# Создаём физическую связь
		
		cmds.select (tempLoc, r=True) # Выделяем физ локатор
		cmds.select (listObjects[i], add=True) # Выделяем целевого родителя
		cmds.parent (r=True) # Создаём иерархию
		
		cmds.matchTransform (tempLoc, listObjects[i], pos=True) # Перемещаем локатор в пивот объекта





		cmds.setAttr (partRtype, pShape)
		cmds.setAttr (partRrad, pRad)
		cmds.setAttr (partRsm, goalSmooth)
		cmds.setAttr (partRwe, goalW)
		cmds.setAttr (partNucl, timeScale)
		




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
		cmds.select (listObjects[i], add=True) # Выделяем объект как подчиненного
		cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн
		




		layerBase = "overlap_" # Имя базы слоя
		layerName = layerBase + listObjects[i] # Имя слоя	
		layerComp = listObjects[i] + '_layer_{0}'.format(0) # Имя компонента слоя

		if (cmds.objExists(layerName)):
			
			cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
			cmds.delete (aimLoc) # Удаляем объекты скрипта
			cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
			cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
			cmds.rename ("BakeResults", layerComp) # Переименовываем слой
		else:
			cmds.animLayer (layerName) # Создаём пустой слой для всех оверлапов объекта
			cmds.animLayer (layerName, e=True, p = mainLayer) # Переносим базу слоя в главный слой
			cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
			cmds.delete (aimLoc) # Удаляем объекты скрипта
			cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
			cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
			cmds.rename ("BakeResults", layerComp) # Переименовываем слой
		

		
		cmds.select (d=True) # Деселект
		
	for l in listObjects:
		cmds.select (l, add=True)
		
	print "\n||| The Overlapper just saved your time |||\n"

####################################################################################################################