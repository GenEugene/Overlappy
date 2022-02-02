listObjects = cmds.ls (sl=True)
listShapes = cmds.listRelatives(s=True)

timeScale = 0.5
goalSmooth = 2
cycle = False
goalW = 0.5
pRad = 0.253
pShape = 4

asT = cmds.playbackOptions (query=True, ast=True)
aeT = cmds.playbackOptions (query=True, aet=True) 
cmds.currentTime (asT)

c = 0 # Счётчик
for i in listObjects:
	
	aimLoc = i + "_aim_locator"
	tempLoc = i + "_temp_locator"
	tempPart = i + "_temp_particle"
	tempNucl = "nucleus1"
	
	partAimLoc = aimLoc + ".translate"
	partRtype = tempPart + "Shape.particleRenderType"
	partRrad = tempPart + "Shape.radius"
	partRsm = tempPart + "Shape.goalSmoothness"
	partRwe = tempPart + "Shape.goalWeight[0]"
	partCenter = tempPart + ".center"
	partNucl = tempNucl + ".timeScale"
	
	cmds.spaceLocator (n = tempLoc) # Создаём физ локатор

	#objCenter = shapeName + ".center"
	#print objCenter
	
	objC = cmds.getAttr (objCenter) # Записываем центр объекта
	locCenter = tempLoc + ".center"
	locTr = tempLoc + ".translate"
	cmds.setAttr (locTr, objC[0][0],objC[0][1],objC[0][2])
	
	locPos = cmds.getAttr (locCenter) # Берём позицию локатора
	cmds.nParticle (p = locPos,n = tempPart , c = 1) # Создаём частицу вкоординате
	cmds.goal (tempPart, w=goalW, utr=1, g = tempLoc)# Создаём физическую связь
	cmds.select (tempLoc, r=True) # Выделяем физ локатор
	cmds.select (listObjects[c], add=True) # Выделяем родителя
	cmds.parent (r=True) # Создаём иерархию
	
	cmds.setAttr (partRtype, pShape)
	cmds.setAttr (partRrad, pRad)
	cmds.setAttr (partRsm, goalSmooth)
	cmds.setAttr (partRwe, goalW)
	cmds.setAttr (partNucl, timeScale)
	
	cmds.duplicate (tempLoc, rr=True, n = aimLoc)
	cmds.select (aimLoc, r=True) # Выделяем аим локатор
	
	cmds.parent (w=True) # Разбираем иерархию
	
	cmds.connectAttr (partCenter, partAimLoc, f=True)
		
	if (cycle):
		cmds.bakeResults (aimLoc,t = (asT, aeT*3) ,sm=True)
		cmds.select (aimLoc, r=True)
		cmds.keyframe (tc = -aeT, r=True)
	else:
		cmds.bakeResults (aimLoc,t = (asT, aeT) ,sm=True)
		
	cmds.delete (tempLoc, tempPart, tempNucl)
	cmds.select (aimLoc, r=True) # Выделяем родителя
	cmds.select (listObjects[c], add=True) # Выделяем родителя
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1)
	cmds.select (d=True)
	c += 1