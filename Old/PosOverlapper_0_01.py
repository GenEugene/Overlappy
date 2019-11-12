list = cmds.ls (sl=True) # Создаём список из выделенного

timeScale = 0.9
goalSmooth = 1.25
goalW = 0.5
pRad = 0.25
pShape = 4

c = 0 # Счётчик
for i in list:
	cmds.currentTime(0)
	
	aimLoc = "aim_locator"
	tempLoc = "temp_locator"
	tempPart = "temp_particle"
	
	cmds.spaceLocator (n = locName) # Создаём локатор
	cmds.select (locName, r=True) # Выделяем физ локатор
	cmds.select (list[c], add=True) # Выделяем родителя
	cmds.parent (r=True) # Создаём иерархию
	cmds.select (locName, r=True) # Выделяем физ локатор
	cmds.parent (w=True) # Разбираем иерархию
	lp = cmds.getAttr ("temp_locator.translate") # Берём позицию локатора
	cmds.nParticle (p = (lp),n = partName , c = 1) # Создаём частицу вкоординате
	cmds.goal (partName, w=goalW, utr=1, g = locName)# Создаём физическую связь
	cmds.select (locName, r=True) # Выделяем физ локатор
	cmds.select (list[c], add=True) # Выделяем родителя
	cmds.parent (r=True) # Создаём иерархию
	
	cmds.setAttr ("temp_locator.translate", 0, 0, 0)
	cmds.setAttr ("temp_particleShape.particleRenderType", pShape)
	cmds.setAttr ("temp_particleShape.radius", pRad)
	cmds.setAttr ("temp_particleShape.goalSmoothness", goalSmooth)
	cmds.setAttr ("temp_particleShape.goalWeight[0]", goalW)
	cmds.setAttr ("nucleus1.timeScale", timeScale)
	
	cmds.duplicate (locName, rr=True, n = aimLoc)
	cmds.select (aimLoc, r=True) # Выделяем аим локатор
	cmds.parent (w=True) # Разбираем иерархию
	cmds.connectAttr ('temp_particle.center', 'aim_locator.translate', f=True)
	
	asT = cmds.playbackOptions (query=True, ast=True)
	aeT = cmds.playbackOptions (query=True, aet=True)
	cmds.bakeResults (aimLoc,t = (asT, aeT) ,sm=True)
	
	cmds.delete(locName, partName, 'nucleus1')
	
	cmds.select (aimLoc, r=True) # Выделяем родителя
	cmds.select (list[c], add=True) # Выделяем родителя
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1)
	
	cmds.select (d=True)
	
	c += 1