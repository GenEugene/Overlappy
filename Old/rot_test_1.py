global asT; asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
global aeT; aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
resetLoopTime()

global listObjects; listObjects = cmds.ls (sl=True) # ������ �����������

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


global listFixed; listFixed = listObjects [:]

for i in range (len(listFixed)):
	listFixed[i] = listFixed[i].replace("|", "_")


#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

global mainLayerName; mainLayerName = "OVERLAPPER" # ��� �������� ����

if (cmds.objExists(mainLayerName)):
	print "\n||| OVERLAPPER start |||\n"
else:
	cmds.animLayer (mainLayerName)
	print "\n||| OVERLAPPER start ||| Layer created |||\n"

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#for i in range(len(listFixed)): # �������� ����
		
global aimLoc; aimLoc = listFixed[i] + "_aim_loc" # ��� ��� ��������
global tempLoc; tempLoc = listFixed[i] + "_temp_loc" # ��� ��� ��������
global tempPart; tempPart = listFixed[i] + "_temp_part" # ��� ��� �������
global tempNucl; tempNucl = "nucleus1" # ��� ��� ����

global partAimLoc; partAimLoc = aimLoc + ".translate" # ��������� � ������� ��� ��������
global partRtype; partRtype = tempPart + "Shape.particleRenderType" # ��������� � ���� ����������� �������
global partRrad; partRrad = tempPart + "Shape.radius" # ��������� � ������� �������
global partRsm; partRsm = tempPart + "Shape.goalSmoothness" # ��������� � �������� ������
global partRwe; partRwe = tempPart + "Shape.goalWeight[0]" # ��������� � ���� ����
global partPos; partPos = tempPart + ".center" # ��������� � ������ �������
global partNucl; partNucl = tempNucl + ".timeScale" # ��������� � ������ ������� ��� ����
global nuclStart; nuclStart = tempNucl + ".startFrame" # ��������� � ������ ��������� ��� ����

















listObjects = cmds.ls (sl=True) # ������ �����������



cmds.spaceLocator (n = "zeroBase_locator") # ������ ������� �������
cmds.spaceLocator (n = "base_locator") # ������ �������� �������
cmds.spaceLocator (n = "targetBase_locator") # ������ ���������� �������

cmds.matchTransform ( "zeroBase_locator", listObjects[0], pos=True ) # ���������� ������� ������� � ����� �������� �������
cmds.matchTransform ( "targetBase_locator", listObjects[1], pos=True ) # ���������� ���������� ������� � ����� �������� �������

cmds.select( "targetBase_locator", r=True ) # �������� ���������� �������
cmds.duplicate( n = "target_locator" ) # ��������� ��� � ������ ������� �������

cmds.select( listObjects[0], r=True ) # �������� ������� ������
cmds.select( "zeroBase_locator", add=True ) # �������� ������� �������
cmds.parentConstraint( mo=True, w = 1 ) # ������ ������ ���������

cmds.select( "base_locator", r=True ) # �������� �������� �������
cmds.select( "zeroBase_locator", add=True ) # �������� ������� �������
cmds.parent (r=True) # ������ ��������

cmds.select( listObjects[1], r=True ) # �������� ������� ������
cmds.select( "targetBase_locator", add=True ) # �������� ���������� �������
cmds.parentConstraint( mo=True, sr=["x", "y", "z"], w = 1 ) # ������ ����������� ���������

aimPos = cmds.getAttr( "targetBase_locator.translate" ) # ���� ������� ����������� ��������
cmds.nParticle( p = aimPos , n = "particle" , c = 1 ) # ������ ������� � ������� �������
cmds.goal( "particle", w=0.5, utr=1, g = "targetBase_locator" ) # ������ ���������� ����� � ���������� ���������
cmds.connectAttr( "particle.center", "target_locator.translate", f=True ) # ����������� ������� ������� � �������

cmds.select( "target_locator", r=True ) # �������� ������� �������
cmds.select( "base_locator", add=True ) # �������� �������� �������
cmds.aimConstraint( w=1, aim=(0, 1, 0), u=(0, 1, 0), wut="vector", wu=(0, 1, 0), sk="y" ) # ������ ��� �������� �� ���� ����







cmds.spaceLocator (n = tempLoc) # ������ ��� �������
cmds.matchTransform (tempLoc, listObjects[i], pos=True) # ���������� ������� � ����� �������

objCenter = tempLoc + ".translate" # ��������� � ������ �������
objC = cmds.getAttr (objCenter) # ���������� ����� �������

locCenter = tempLoc + ".center" # ��������� � ������ ��� ��������
locTr = tempLoc + ".translate" # ��������� � ������� ��� ��������

cmds.nParticle (p = objC, n = tempPart , c = 1) # ������ ������� � ������� �������
cmds.goal (tempPart, w=goalW, utr=1, g = tempLoc)# ������ ���������� �����

cmds.select (tempLoc, r=True) # �������� ��� �������
cmds.select (listObjects[i], add=True) # �������� �������� ��������
cmds.parent (r=True) # ������ ��������

cmds.matchTransform (tempLoc, listObjects[i], pos=True) # ���������� ������� � ����� �������


#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

cmds.setAttr (partRtype, pShape)
cmds.setAttr (partRrad, pRad)
cmds.setAttr (partRsm, goalSmooth)
cmds.setAttr (partRwe, goalW)
cmds.setAttr (partNucl, timeScale)
cmds.setAttr (nuclStart, asT)
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

cmds.duplicate (tempLoc, rr=True, n = aimLoc) # ��������� �������
cmds.select (aimLoc, r=True) # �������� ��� �������
cmds.parent (w=True) # ��������� ��������
cmds.connectAttr (partPos, partAimLoc, f=True) # ����������� ��� ������� � �������

global minLoopTime; minLoopTime = aeT * -2
global maxLoopTime; maxLoopTime = aeT * 2
	
if (cycle):
		
	cmds.setAttr (nuclStart, minLoopTime)

	cmds.bakeResults (aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at = "translate") # ��������� ��� �������� ��� �����
	cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������
	
	setTimeToMin()
	
	cmds.select (aimLoc, r=True) # �������� ��� ������� ��� ��������
	cmds.select (listObjects[i], add=True) # �������� ������ ��� ������������
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������
	
	resetLoopTime()

else:
		
	cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # ��������� ��� �������� ��� �������� ��������
	cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������
	
	resetLoopTime()
	
	cmds.select (aimLoc, r=True) # �������� ��� ������� ��� ��������
	cmds.select (listObjects[i], add=True) # �������� ������ ��� ������������
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������

































#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

	layerBase = "overlap_" # ��� ���� ����
	layerName = layerBase + listFixed[i] # ��� ����	
	layerComp = listFixed[i] + '_layer_{0}'.format("0") # ��� ���������� ����

	if (cmds.objExists(layerName)):
		
		cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
		cmds.select (listObjects[i], r=True)
		cmds.setInfinity (pri="cycle", poi="cycle")
		cmds.delete (aimLoc) # ������� ������� �������
		cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
		cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
		cmds.rename ("BakeResults", layerComp) # ��������������� ����
		
		resetLoopTime()
	else:
		cmds.animLayer (layerName) # ������ ������ ���� ��� ���� ��������� �������
		cmds.animLayer (layerName, e=True, p = mainLayerName) # ��������� ���� ���� � ������� ����
		cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
		cmds.select (listObjects[i], r=True)
		cmds.setInfinity (pri="cycle", poi="cycle")
		cmds.delete (aimLoc) # ������� ������� �������
		cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
		cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
		cmds.rename ("BakeResults", layerComp) # ��������������� ����
		
		resetLoopTime()

		
	cmds.select (d=True) # ��������
		
for l in listObjects:
	cmds.select (l, add=True)
	
print "\n||| OVERLAPPER end |||\n"