global asT; asT = cmds.playbackOptions (query=True, min=True) # Левая граница анимации
global aeT; aeT = cmds.playbackOptions (query=True, max=True) # Правая граница анимации
resetLoopTime()

global listObjects; listObjects = cmds.ls (sl=True) # Список трансформов

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


global listFixed; listFixed = listObjects [:]

for i in range (len(listFixed)):
	listFixed[i] = listFixed[i].replace("|", "_")


#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

global mainLayerName; mainLayerName = "OVERLAPPER" # Имя главного слоя

if (cmds.objExists(mainLayerName)):
	print "\n||| OVERLAPPER start |||\n"
else:
	cmds.animLayer (mainLayerName)
	print "\n||| OVERLAPPER start ||| Layer created |||\n"

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#for i in range(len(listFixed)): # Основной цикл
		
global aimLoc; aimLoc = listFixed[i] + "_aim_loc" # Имя аим локатора
global tempLoc; tempLoc = listFixed[i] + "_temp_loc" # Имя физ локатора
global tempPart; tempPart = listFixed[i] + "_temp_part" # Имя физ частицы
global tempNucl; tempNucl = "nucleus1" # Имя физ ноды

global partAimLoc; partAimLoc = aimLoc + ".translate" # Обращение к позиции аим локатора
global partRtype; partRtype = tempPart + "Shape.particleRenderType" # Обращение к типу отображения частицы
global partRrad; partRrad = tempPart + "Shape.radius" # Обращение к размеру частицы
global partRsm; partRsm = tempPart + "Shape.goalSmoothness" # Обращение к мягкости физики
global partRwe; partRwe = tempPart + "Shape.goalWeight[0]" # Обращение к весу ноды
global partPos; partPos = tempPart + ".center" # Обращение к центру частицы
global partNucl; partNucl = tempNucl + ".timeScale" # Обращение к скейлу времени физ ноды
global nuclStart; nuclStart = tempNucl + ".startFrame" # Обращение к старту симуляции физ ноды

















listObjects = cmds.ls (sl=True) # Список трансформов



cmds.spaceLocator (n = "zeroBase_locator") # Создаём нулевой локатор
cmds.spaceLocator (n = "base_locator") # Создаём следящий локатор
cmds.spaceLocator (n = "targetBase_locator") # Создаём физический локатор

cmds.matchTransform ( "zeroBase_locator", listObjects[0], pos=True ) # Перемещаем нулевой локатор в пивот главного объекта
cmds.matchTransform ( "targetBase_locator", listObjects[1], pos=True ) # Перемещаем физический локатор в пивот целевого объекта

cmds.select( "targetBase_locator", r=True ) # Выделяем физический локатор
cmds.duplicate( n = "target_locator" ) # Дублируем его и создаём целевой локатор

cmds.select( listObjects[0], r=True ) # Выделяем главный объект
cmds.select( "zeroBase_locator", add=True ) # Выделяем нулевой локатор
cmds.parentConstraint( mo=True, w = 1 ) # Создаём пэрент констрейн

cmds.select( "base_locator", r=True ) # Выделяем следящий локатор
cmds.select( "zeroBase_locator", add=True ) # Выделяем нулевой локатор
cmds.parent (r=True) # Создаём иерархию

cmds.select( listObjects[1], r=True ) # Выделяем целевой объект
cmds.select( "targetBase_locator", add=True ) # Выделяем физический локатор
cmds.parentConstraint( mo=True, sr=["x", "y", "z"], w = 1 ) # Создаём позиционный констрейн

aimPos = cmds.getAttr( "targetBase_locator.translate" ) # Берём позицию физического локатора
cmds.nParticle( p = aimPos , n = "particle" , c = 1 ) # Создаём частицу в целевой позиции
cmds.goal( "particle", w=0.5, utr=1, g = "targetBase_locator" ) # Создаём физическую связь с физическим локатором
cmds.connectAttr( "particle.center", "target_locator.translate", f=True ) # Привязываем целевой локатор к частице

cmds.select( "target_locator", r=True ) # Выделяем целевой локатор
cmds.select( "base_locator", add=True ) # Выделяем следящий локатор
cmds.aimConstraint( w=1, aim=(0, 1, 0), u=(0, 1, 0), wut="vector", wu=(0, 1, 0), sk="y" ) # Создаём аим констреён по двум осям







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


#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

cmds.setAttr (partRtype, pShape)
cmds.setAttr (partRrad, pRad)
cmds.setAttr (partRsm, goalSmooth)
cmds.setAttr (partRwe, goalW)
cmds.setAttr (partNucl, timeScale)
cmds.setAttr (nuclStart, asT)
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

cmds.duplicate (tempLoc, rr=True, n = aimLoc) # Дублируем локатор
cmds.select (aimLoc, r=True) # Выделяем аим локатор
cmds.parent (w=True) # Разбираем иерархию
cmds.connectAttr (partPos, partAimLoc, f=True) # Привязываем аим локатор к частице

global minLoopTime; minLoopTime = aeT * -2
global maxLoopTime; maxLoopTime = aeT * 2
	
if (cycle):
		
	cmds.setAttr (nuclStart, minLoopTime)

	cmds.bakeResults (aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at = "translate") # Запекание аим локатора для цикла
	cmds.delete (tempLoc, tempPart, tempNucl) # Удаляем объекты физики
	
	setTimeToMin()
	
	cmds.select (aimLoc, r=True) # Выделяем аим локатор как родителя
	cmds.select (listObjects[i], add=True) # Выделяем объект как подчиненного
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн
	
	resetLoopTime()

else:
		
	cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # Запекание аим локатора для линейной анимации
	cmds.delete (tempLoc, tempPart, tempNucl) # Удаляем объекты физики
	
	resetLoopTime()
	
	cmds.select (aimLoc, r=True) # Выделяем аим локатор как родителя
	cmds.select (listObjects[i], add=True) # Выделяем объект как подчиненного
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн

































#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

	layerBase = "overlap_" # Имя базы слоя
	layerName = layerBase + listFixed[i] # Имя слоя	
	layerComp = listFixed[i] + '_layer_{0}'.format("0") # Имя компонента слоя

	if (cmds.objExists(layerName)):
		
		cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
		cmds.select (listObjects[i], r=True)
		cmds.setInfinity (pri="cycle", poi="cycle")
		cmds.delete (aimLoc) # Удаляем объекты скрипта
		cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
		cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
		cmds.rename ("BakeResults", layerComp) # Переименовываем слой
		
		resetLoopTime()
	else:
		cmds.animLayer (layerName) # Создаём пустой слой для всех оверлапов объекта
		cmds.animLayer (layerName, e=True, p = mainLayerName) # Переносим базу слоя в главный слой
		cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
		cmds.select (listObjects[i], r=True)
		cmds.setInfinity (pri="cycle", poi="cycle")
		cmds.delete (aimLoc) # Удаляем объекты скрипта
		cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
		cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
		cmds.rename ("BakeResults", layerComp) # Переименовываем слой
		
		resetLoopTime()

		
	cmds.select (d=True) # Деселект
		
for l in listObjects:
	cmds.select (l, add=True)
	
print "\n||| OVERLAPPER end |||\n"