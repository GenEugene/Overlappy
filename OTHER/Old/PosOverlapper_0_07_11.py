####################################################################################################################
import maya.cmds as cmds
####################################################################################################################

	
global goalSmooth; goalSmooth = 1.5 # Сглаживание позиции
global timeScale; timeScale = 0.3 # Скейл времени
global goalW; goalW = 0.5 # Влияние физики
global cycle; cycle = True # Проверка цикла

global slWidth; slWidth = 400 # Ширина ползунков
global slHeight; slHeight = 25 # Высота зоны надписей

pRad = 0.253 # Размер меша частицы
pShape = 4 # Тип отображения частицы
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

def deleteMainLayer():
	cmds.delete (mainLayerName)

def resetLoopTime():
	cmds.playbackOptions (e=True, min=asT, max=aeT)
	cmds.currentTime (asT) # Установка времени в начало анимации

def setTimeToMin():
	cmds.currentTime (minLoopTime) # Установка времени в начало анимации

####################################################################################################################
### Main (need to rebuld code)


	
global asT; asT = cmds.playbackOptions (query=True, min=True) # Левая граница анимации
global aeT; aeT = cmds.playbackOptions (query=True, max=True) # Правая граница анимации
setTimeToStart()

global listObjects; listObjects = cmds.ls (sl=True) # Список трансформов

global mainLayerName; mainLayerName = "OVERLAPPER" # Имя главного слоя

if (cmds.objExists(mainLayerName)):
	print "\n||| OVERLAPPER start |||\n"
else:
	cmds.animLayer (mainLayerName)
	print "\n||| OVERLAPPER start ||| Layer created |||\n"

	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


		
global aimLoc; aimLoc = listObjects[i] + "_aim_loc" # Имя аим локатора
global tempLoc; tempLoc = listObjects[i] + "_temp_loc" # Имя физ локатора
global tempPart; tempPart = listObjects[i] + "_temp_part" # Имя физ частицы
global tempNucl; tempNucl = "nucleus1" # Имя физ ноды
	
global partAimLoc; partAimLoc = aimLoc + ".translate" # Обращение к позиции аим локатора
global partRtype; partRtype = tempPart + "Shape.particleRenderType" # Обращение к типу отображения частицы
global partRrad; partRrad = tempPart + "Shape.radius" # Обращение к размеру частицы
global partRsm; partRsm = tempPart + "Shape.goalSmoothness" # Обращение к мягкости физики
global partRwe; partRwe = tempPart + "Shape.goalWeight[0]" # Обращение к весу ноды
global partPos; partPos = tempPart + ".center" # Обращение к центру частицы
global partNucl; partNucl = tempNucl + ".timeScale" # Обращение к скейлу времени физ ноды
global nuclStart; nuclStart = tempNucl + ".startFrame" # Обращение к старту симуляции физ ноды
		
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




minLoopTime = aeT * -3
maxLoopTime = aeT * 2

#if (cycle):
	
#cmds.playbackOptions (e=True, min=minLoopTime, max=maxLoopTime)
cmds.setAttr (nuclStart, minLoopTime)
#setTimeToMin()
	
cmds.bakeResults (aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at = "translate") # Запекание аим локатора для цикла
cmds.delete (tempLoc, tempPart, tempNucl) # Удаляем объекты физики

setTimeToMin()

cmds.select (aimLoc, r=True) # Выделяем аим локатор как родителя
cmds.select (listObjects[i], add=True) # Выделяем объект как подчиненного
cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн

#resetLoopTime()

#else:
"""
cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # Запекание аим локатора для линейной анимации
cmds.delete (tempLoc, tempPart, tempNucl) # Удаляем объекты физики

resetLoopTime()

cmds.select (aimLoc, r=True) # Выделяем аим локатор как родителя
cmds.select (listObjects[i], add=True) # Выделяем объект как подчиненного
cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # Создаём позиционный констрейн
"""
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

layerBase = "overlap_" # Имя базы слоя
layerName = layerBase + listObjects[i] # Имя слоя	
layerComp = listObjects[i] + '_layer_{0}'.format("0") # Имя компонента слоя

if (cmds.objExists(layerName)):
	
	cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
	cmds.delete (aimLoc) # Удаляем объекты скрипта
	cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
	cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
	cmds.rename ("BakeResults", layerComp) # Переименовываем слой
	
	resetLoopTime()
else:
	cmds.animLayer (layerName) # Создаём пустой слой для всех оверлапов объекта
	cmds.animLayer (layerName, e=True, p = mainLayerName) # Переносим базу слоя в главный слой
	cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # Запекаем объект в слой
	cmds.delete (aimLoc) # Удаляем объекты скрипта
	cmds.container("BakeResultsContainer", e=True, rc=True) # Удаляем контейнер
	cmds.animLayer ("BakeResults", e=True, p = layerName) # Переносим слой с анимацией в основной слой объекта
	cmds.rename ("BakeResults", layerComp) # Переименовываем слой
	
	resetLoopTime()

		
cmds.select (d=True) # Деселект
		
for l in listObjects:
	cmds.select (l, add=True)
		
print "\n||| OVERLAPPER end |||\n"
