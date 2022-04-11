####################################################################################################################
import maya.cmds as cmds
####################################################################################################################

def resetValues():
	
	global goalSmooth; goalSmooth = 1.5 # ����������� �������
	global timeScale; timeScale = 0.3 # ����� �������
	global goalW; goalW = 0.5 # ������� ������
	global cycle; cycle = False # �������� �����

	global slWidth; slWidth = 400 # ������ ���������
	global slHeight; slHeight = 25 # ������ ���� ��������
	
	pRad = 0.253 # ������ ���� �������
	pShape = 4 # ��� ����������� �������
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	mainScriptName = "Overlapper "
	mainScriptVersion = "v0.01"
	
	posScriptLabelTAB = "     -------------------     "
	posScriptName = "TRANSLATION OVERLAPPER   "
	posScriptVersion = "v0.07_1"
	
	rotScriptLabelTAB = "     ---------------------     "
	rotScriptName = "ROTATION OVERLAPPER   "
	rotScriptVersion = "v0.00"

	global windowName; windowName = mainScriptName + mainScriptVersion
	global posScriptLabel; posScriptLabel = posScriptLabelTAB + posScriptName + posScriptVersion
	global rotScriptLabel; rotScriptLabel = rotScriptLabelTAB + rotScriptName + rotScriptVersion
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
def resetSliders():
	cmds.checkBox ("checkCycle", e=True, v=cycle)
	cmds.floatSliderGrp ("s1", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmooth)
	cmds.floatSliderGrp ("s2", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScale)
	cmds.floatSliderGrp ("s3", e=True, f=True, min=0.0, max=1.0, v=goalW)
	
	cmds.floatSliderGrp ("s4", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmooth)
	cmds.floatSliderGrp ("s5", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScale)
	cmds.floatSliderGrp ("s6", e=True, f=True, min=0.0, max=1.0, v=goalW)
	
	print "\n||| OVERLAPPER RESET |||\n"

####################################################################################################################

def uiCreation():
	
	if cmds.window ("main", exists = True):
		cmds.deleteUI ("main")

	overUI = cmds.window ("main", title=windowName, mxb=False, s=False)
	cmds.columnLayout (rs=4)
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.text (l="----------------------------------------------------------------------------------------------------", h=10)
	cmds.text (l=posScriptLabel, h=slHeight, hl=True, ann=" annotation ")
	
	cmds.floatSliderGrp ("s1", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
	v=goalSmooth, cc=('goalSmooth=printSmoothV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����������� ������� 2 �� 5 ", el="~2.5")
	
	cmds.floatSliderGrp ("s2", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
	v=timeScale, cc=('timeScale=printScaleV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����� �������� ��������� 0.5 �� 1 ", el="~0.7")
	
	cmds.floatSliderGrp ("s3", l='Weight', f=True, min=0.0, max=1.0, 
	v=goalW, cc=('goalW=printWeightV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ���� ���������� ������� 0.5 ", el="~0.5")
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.text (l=rotScriptLabel, h=slHeight, hl=True, ann=" annotation ")
	
	cmds.floatSliderGrp ("s4", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
	v=goalSmooth, cc=('goalSmooth=printRotSmoothV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����������� ������� 2 �� 5 ", el="~2.5")
	
	cmds.floatSliderGrp ("s5", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
	v=timeScale, cc=('timeScale=printRotScaleV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����� �������� ��������� 0.5 �� 1 ", el="~0.7")
	
	cmds.floatSliderGrp ("s6", l='Weight', f=True, min=0.0, max=1.0, 
	v=goalW, cc=('goalW=printRotWeightV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ���� ���������� ������� 0.5 ", el="~0.5")
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.text (l="     ----------------------------------     BUTTONS", h=slHeight, hl=True, ann=" annotation ")
	
	cmds.checkBox("checkCycle", label="Loop", 
	v=cycle, cc=('cycle=checkCycle()'), ann=" �� ������ ��� ������ � ��������� ����� ")
	cmds.text (l="", h=5, hl=True)
	
	cmds.button (label="Run script", command=('positionStart()'), h=60, w=150)
	cmds.button (label="Reset script", command=('resetValues(); resetSliders()'), h=60, w=150)
	
	cmds.text (l="     --------------------------------------", h=slHeight, hl=True, ann=" annotation ")
	cmds.button (label="DELETE OVERLAPPER", command=('deleteMainLayer()'), h=35, w=150)
	
	cmds.text (l="     --------------------------------------     END", h=slHeight, hl=True, ann=" annotation ")
	cmds.text (l="----------------------------------------------------------------------------------------------------", h=10)
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.window ("main", e=True,wh=(10,10) , rtf=True)
	cmds.showWindow (overUI)

####################################################################################################################

def checkCycle():
	cycle = cmds.checkBox ("checkCycle", q=True, v=True)
	print "Loop =", cycle
	return cycle

def printSmoothV():
	goalSmooth = cmds.floatSliderGrp ("s1", q=True, v=True)
	print "Position smooth =", goalSmooth
	return goalSmooth
	
def printScaleV():
	timeScale = cmds.floatSliderGrp ("s2", q=True, v=True)
	print "Position scale =", timeScale
	return timeScale
	
def printWeightV():
	goalW = cmds.floatSliderGrp ("s3", q=True, v=True)
	print "Position weight =", goalW
	return goalW

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

def printRotSmoothV():
	goalSmooth = cmds.floatSliderGrp ("s4", q=True, v=True)
	print "Rotation smooth =", goalSmooth
	return goalSmooth
	
def printRotScaleV():
	timeScale = cmds.floatSliderGrp ("s5", q=True, v=True)
	print "Rotation scale =", timeScale
	return timeScale
	
def printRotWeightV():
	goalW = cmds.floatSliderGrp ("s6", q=True, v=True)
	print "Rotation weight =", goalW
	return goalW

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

def deleteMainLayer():
	cmds.delete (mainLayerName)

def resetLoopTime():
	cmds.playbackOptions (e=True, min=asT, max=aeT)
	cmds.currentTime (asT) # ��������� ������� � ������ ��������

def setTimeToMin():
	cmds.currentTime (minLoopTime) # ��������� ������� � ������ ��������

####################################################################################################################
### Main (need to rebuld code)

def positionStart():
	
	global asT; asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
	global aeT; aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
	resetLoopTime()
	
	global listObjects; listObjects = cmds.ls (sl=True) # ������ �����������

	global mainLayerName; mainLayerName = "OVERLAPPER" # ��� �������� ����

	if (cmds.objExists(mainLayerName)):
		print "\n||| OVERLAPPER start |||\n"
	else:
		cmds.animLayer (mainLayerName)
		print "\n||| OVERLAPPER start ||| Layer created |||\n"

	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

	for i in range(len(listObjects)): # �������� ����
		
		global aimLoc; aimLoc = listObjects[i] + "_aim_loc" # ��� ��� ��������
		global tempLoc; tempLoc = listObjects[i] + "_temp_loc" # ��� ��� ��������
		global tempPart; tempPart = listObjects[i] + "_temp_part" # ��� ��� �������
		global tempNucl; tempNucl = "nucleus1" # ��� ��� ����
	
		global partAimLoc; partAimLoc = aimLoc + ".translate" # ��������� � ������� ��� ��������
		global partRtype; partRtype = tempPart + "Shape.particleRenderType" # ��������� � ���� ����������� �������
		global partRrad; partRrad = tempPart + "Shape.radius" # ��������� � ������� �������
		global partRsm; partRsm = tempPart + "Shape.goalSmoothness" # ��������� � �������� ������
		global partRwe; partRwe = tempPart + "Shape.goalWeight[0]" # ��������� � ���� ����
		global partPos; partPos = tempPart + ".center" # ��������� � ������ �������
		global partNucl; partNucl = tempNucl + ".timeScale" # ��������� � ������ ������� ��� ����
		global nuclStart; nuclStart = tempNucl + ".startFrame" # ��������� � ������ ��������� ��� ����
		
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
		
		minLoopTime = aeT * -2
		maxLoopTime = aeT * 2
		
		if (cycle):
			
			#cmds.playbackOptions (e=True, min=minLoopTime, max=maxLoopTime)
			cmds.setAttr (nuclStart, minLoopTime)
			#setTimeToMin()
				
			cmds.bakeResults (aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at = "translate") # ��������� ��� �������� ��� �����
			cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������
			#cmds.select (aimLoc, r=True) # �������� ��� �������
			#cmds.keyframe (tc = (aeT*-2), r=True) # �������� ������� ���� �� ���� ������ �����
			#cmds.setInfinity (pri="cycle", poi="cycle")
			
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
		layerName = layerBase + listObjects[i] # ��� ����	
		layerComp = listObjects[i] + '_layer_{0}'.format("0") # ��� ���������� ����

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

####################################################################################################################
### Run code

resetValues()
uiCreation()

####################################################################################################################
### End