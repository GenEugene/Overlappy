####################################################################################################################
import maya.cmds as cmds
####################################################################################################################

def resetValues():
	
	global goalSmooth; goalSmooth = 1.5 # ����������� �������
	global timeScale; timeScale = 0.3 # ����� �������
	global goalW; goalW = 0.5 # ������� ������
	global cycle; cycle = False # �������� �����

	global slWidth; slWidth = 421 # ������ ���������
	global slHeight; slHeight = 25 # ������ ���� ��������
	global buttonHeight; buttonHeight = 50 # ������ ������
	
	global pRad; pRad = 0.253 # ������ ���� �������
	global pShape; pShape = 4 # ��� ����������� �������
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	mainScriptName = "Overlapper "
	mainScriptVersion = "v0.01 |--STABLE--|"
	
	posScriptLabelTAB = "     ----------------------     "
	posScriptName = "Translation Overlapper   "
	posScriptVersion = "v0.09   <<<   Stable"
	global posScriptAnnotation; posScriptAnnotation = " ������� �������������:\n\n ����\n �����\n �����\n ����\n ������ ������\n ������ ��������"
	
	rotScriptLabelTAB = "     ------------------------     "
	rotScriptName = "Rotation Overlapper   "
	rotScriptVersion = "v0.00   >>>   Unstable"
	global rotScriptAnnotation; rotScriptAnnotation = " ������� �������������:\n\n ������ \n ����������\n �����\n ������� ������\n ������� �������"

	global windowName; windowName = mainScriptName + mainScriptVersion
	global posScriptLabel; posScriptLabel = posScriptLabelTAB + posScriptName + posScriptVersion
	global rotScriptLabel; rotScriptLabel = rotScriptLabelTAB + rotScriptName + rotScriptVersion
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
def resetSliders():
	cmds.checkBox( "checkCycle", e=True, v=cycle )
	cmds.floatSliderGrp( "s1", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmooth )
	cmds.floatSliderGrp( "s2", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScale )
	cmds.floatSliderGrp( "s3", e=True, f=True, min=0.0, max=1.0, v=goalW )
	
	cmds.floatSliderGrp( "s4", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmooth )
	cmds.floatSliderGrp( "s5", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScale )
	cmds.floatSliderGrp( "s6", e=True, f=True, min=0.0, max=1.0, v=goalW )
	
	print "\n||| OVERLAPPER RESET |||\n"

####################################################################################################################

def uiCreation():
	
	if cmds.window( "main", exists = True ):
		cmds.deleteUI( "main" )

	overUI = cmds.window( "main", title=windowName, mxb=False, s=False )
	cmds.window( "main", e=True, wh=( 10, 10 ) , rtf=True )
	
	cmds.columnLayout( 'layout1', rs=4 )
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.frameLayout( 'transLayout', l=posScriptLabel )
	
	cmds.floatSliderGrp( "s1", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
	v=goalSmooth, cc=('goalSmooth=printSmoothV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����������� ������� 2 �� 5 ", el="~1.5" )
	
	cmds.floatSliderGrp( "s2", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
	v=timeScale, cc=('timeScale=printScaleV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����� �������� ��������� 0.5 �� 1 ", el="~0.3" )
	
	cmds.floatSliderGrp( "s3", l='Weight', f=True, min=0.0, max=1.0, 
	v=goalW, cc=('goalW=printWeightV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ���� ���������� ������� 0.5 ", el="~0.5" )
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.frameLayout( "rotLayout", l=rotScriptLabel )
	
	cmds.floatSliderGrp( "s4", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
	v=goalSmooth, cc=('goalSmooth=printRotSmoothV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����������� ������� 2 �� 5 ", el="~0.0", en=False )
	
	cmds.floatSliderGrp( "s5", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
	v=timeScale, cc=('timeScale=printRotScaleV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����� �������� ��������� 0.5 �� 1 ", el="~0.0", en=False )
	
	cmds.floatSliderGrp( "s6", l='Weight', f=True, min=0.0, max=1.0, 
	v=goalW, cc=('goalW=printRotWeightV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ���� ���������� ������� 0.5 ", el="~0.0", en=False )
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.frameLayout( "buttonLayout", l='BUTTONS' )
	cmds.rowColumnLayout( numberOfColumns=3, columnWidth=[ (1, 160), (2, 130), (3, 160) ] )
	
	
	cmds.checkBox( "checkCycle", label="Translation loop", v=cycle, cc=( 'cycle=checkCycle()' ) )
	cmds.separator( h=buttonHeight/2 , style='none' )
	cmds.checkBox( "checkRotationCycle", label="Rotation loop", v=False )
	

	cmds.button( label="RUN translation sim", command=( 'positionStart()' ), bgc=( 0.3,0.85,1 ) , h=buttonHeight )
	cmds.separator( h=buttonHeight/2 , style='none' )
	cmds.button( label="RUN rotation sim", command=( 'print "RUN rotation sim"' ), bgc=( 0.3,0.85,1 ) , h=buttonHeight )
	
	
	cmds.button( label="^^^ RESET translation ^^^", command=( 'print "RESET translation"' ), bgc=( 0.2,0.6,0.2 ) , h=buttonHeight )
	cmds.button( label="RESET ALL", command=( 'resetValues(); resetSliders()' ), bgc=( 0.6,1,0.45 ) , h=buttonHeight )
	cmds.separator( h=buttonHeight/2 , style='none' )

	
	cmds.separator( h=buttonHeight/2 , style='none' )
	cmds.button( label="DELETE OVERLAPPER", command=( 'deleteMainLayer()' ), bgc=( 0.9,0.5,0.3 ) , h=buttonHeight )

	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.showWindow( overUI )

####################################################################################################################

def checkCycle():
	cycle = cmds.checkBox( "checkCycle", q=True, v=True )
	print "Loop =", cycle
	return cycle

def printSmoothV():
	goalSmooth = cmds.floatSliderGrp( "s1", q=True, v=True )
	print "Position smooth =", goalSmooth
	return goalSmooth
	
def printScaleV():
	timeScale = cmds.floatSliderGrp( "s2", q=True, v=True )
	print "Position scale =", timeScale
	return timeScale
	
def printWeightV():
	goalW = cmds.floatSliderGrp( "s3", q=True, v=True )
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

	for i in range(len(listFixed)): # �������� ����
		
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

####################################################################################################################
### Run code

resetValues()
uiCreation()

####################################################################################################################
### End