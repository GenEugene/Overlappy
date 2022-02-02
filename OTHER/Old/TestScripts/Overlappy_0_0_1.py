####################################################################################################################
""" https://vk.com/geneugene3d """
####################################################################################################################
import maya.cmds as cmds
####################################################################################################################

def resetValues():
	
	global goalSmooth; goalSmooth = 1.5 # ����������� �������
	global timeScale; timeScale = 0.3 # ����� �������
	global goalW; goalW = 0.5 # ������� ������
	global cycle; cycle = False # �������� �����
	
	global goalSmoothRot; goalSmoothRot = 1.5 # ����������� ������� �������
	global timeScaleRot; timeScaleRot = 0.3 # ����� �������
	global goalWRot; goalWRot = 0.5 # ������� ������
	global cycleRot; cycleRot = False # �������� �����

	global slWidth; slWidth = 421 # ������ ���������
	global slHeight; slHeight = 25 # ������ ���� ��������
	global buttonHeight; buttonHeight = 50 # ������ ������
	
	global pRad; pRad = 0.253 # ������ ���� �������
	global pShape; pShape = 4 # ��� ����������� �������
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	mainScriptName = "Overlappy "
	mainScriptVersion = "v0.01"
	
	posScriptLabelTAB = "     -------------------------     "
	posScriptName = "Translation overlapper   "
	posScriptVersion = "v0.09"
	global posScriptAnnotation; posScriptAnnotation = " ��� ����� ������� ��������� �������� �����������\n �� ������ ���������� ������ �� �������. ����\n �������� �������� �������� � �������� ����, ��\n ���������� ������� �������� (����) � �������� ����\n � ���������� ��������.\n\n ������� �������������:\n\n - ����\n - �����\n - �����\n - ����\n - ������ ������\n - ������ ��������\n - ������ ��������"
	
	rotScriptLabelTAB = "     ----------------------------     "
	rotScriptName = "Rotation overlapper   "
	rotScriptVersion = "v0.01"
	global rotScriptAnnotation; rotScriptAnnotation = " ��������� �������� �������� �� ������\n ���������� ������ �� �������, �����\n ����������, ��� ��� ��� �������� �������\n ��� ����������� � ������ �������.\n\n ������� �������������:\n\n ������ \n ����������\n �����\n ������� ������\n ������� �������"

	global windowName; windowName = mainScriptName + mainScriptVersion
	global posScriptLabel; posScriptLabel = posScriptLabelTAB + posScriptName + posScriptVersion
	global rotScriptLabel; rotScriptLabel = rotScriptLabelTAB + rotScriptName + rotScriptVersion
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
def resetSliders():
	cmds.checkBox( "checkCyclePos", e=True, v=cycle )
	cmds.floatSliderGrp( "s1", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmooth )
	cmds.floatSliderGrp( "s2", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScale )
	cmds.floatSliderGrp( "s3", e=True, f=True, min=0.0, max=1.0, v=goalW )
	
	cmds.checkBox( "checkCycleRot", e=True, v=cycleRot )
	cmds.floatSliderGrp( "s4", e=True, f=True, min=0.0, max=6.0, fmx=10, v=goalSmoothRot )
	cmds.floatSliderGrp( "s5", e=True, f=True, min=0.0, max=2.0, fmx=10, v=timeScaleRot )
	cmds.floatSliderGrp( "s6", e=True, f=True, min=0.0, max=1.0, v=goalWRot )
	
	print "\n||| OVERLAPPY RESET |||\n"

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
	v=goalSmoothRot, cc=('goalSmoothRot=printRotSmoothV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����������� ������� 2 �� 5 ", el="~0.5" )
	
	cmds.floatSliderGrp( "s5", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
	v=timeScaleRot, cc=('timeScaleRot=printRotScaleV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ����� �������� ��������� 0.5 �� 1 ", el="~0.3" )
	
	cmds.floatSliderGrp( "s6", l='Weight', f=True, min=0.0, max=1.0, 
	v=goalWRot, cc=('goalWRot=printRotWeightV()'), pre=1, cal=(1, "left"), w=slWidth, ann=" ���� ���������� ������� 0.5 ", el="~0.5" )
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.frameLayout( "buttonLayout", l='     ---------------------------------------     BUTTONS' )
	cmds.rowColumnLayout( numberOfColumns=3, columnWidth=[ (1, 165), (2, 130), (3, 165) ] )
	
	
	cmds.checkBox( "checkCyclePos", label="Translation loop", v=cycle, cc=( 'cycle=checkCyclePos()' ) )
	cmds.separator( h=buttonHeight/2 , style='none' )
	cmds.checkBox( "checkCycleRot", label="Rotation loop", v=cycleRot, cc=( 'cycleRot=checkCycleRot()' ) )
	

	cmds.button( label="RUN translation sim", command=( 'translationStart()' ), bgc=( 0.3,0.85,1 ) , h=buttonHeight )
	cmds.separator( h=buttonHeight/2 , style='none' )
	cmds.button( label="RUN rotation sim", command=( 'rotationStart()' ), bgc=( 0.3,0.85,1 ) , h=buttonHeight )
	
	
	cmds.button( label="^^^ RESET translation ^^^", command=( 'print "RESET translation"' ), bgc=( 0.2,0.6,0.2 ) , h=buttonHeight, en=False )
	cmds.button( label="<<< RESET ALL >>>", command=( 'resetValues(); resetSliders()' ), bgc=( 0.6,1,0.45 ) , h=buttonHeight )
	cmds.button( label="^^^ RESET rotation ^^^", command=( 'print "RESET rotation"' ), bgc=( 0.2,0.6,0.2 ) , h=buttonHeight, en=False )

	
	cmds.text( l="^^ Translation description ^^", ann=posScriptAnnotation )
	cmds.button( label="!!! DELETE ALL !!!", command=( 'deleteMainLayer()' ), bgc=( 0.9,0.5,0.3 ) , h=buttonHeight, ann="������� ������� ���� �� ����� ���������� �����������" )
	cmds.text( l="^^ Rotation description ^^", ann=rotScriptAnnotation )

	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	cmds.showWindow( overUI )

####################################################################################################################

def checkCyclePos():
	cycle = cmds.checkBox( "checkCyclePos", q=True, v=True )
	print "Translation loop =", cycle
	return cycle

def printSmoothV():
	goalSmooth = cmds.floatSliderGrp( "s1", q=True, v=True )
	print "Translation smooth =", goalSmooth
	return goalSmooth
	
def printScaleV():
	timeScale = cmds.floatSliderGrp( "s2", q=True, v=True )
	print "Translation scale =", timeScale
	return timeScale
	
def printWeightV():
	goalW = cmds.floatSliderGrp( "s3", q=True, v=True )
	print "Translation weight =", goalW
	return goalW

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

def checkCycleRot():
	cycleRot = cmds.checkBox( "checkCycleRot", q=True, v=True )
	print "Rotation loop =", cycleRot
	return cycleRot

def printRotSmoothV():
	goalSmoothRot = cmds.floatSliderGrp ("s4", q=True, v=True)
	print "Rotation smooth =", goalSmoothRot
	return goalSmoothRot
	
def printRotScaleV():
	timeScaleRot = cmds.floatSliderGrp ("s5", q=True, v=True)
	print "Rotation scale =", timeScaleRot
	return timeScaleRot
	
def printRotWeightV():
	goalWRot = cmds.floatSliderGrp ("s6", q=True, v=True)
	print "Rotation weight =", goalWRot
	return goalWRot

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

def deleteMainLayer():
	if ( cmds.objExists( "OVERLAPPY" )):
		cmds.delete( mainLayerName )
	else:
		print "\n||| Layer not created |||\n"

def resetLoopTime():
	cmds.playbackOptions (e=True, min=asT, max=aeT)
	cmds.currentTime (asT) # ��������� ������� � ������ ��������

def setTimeToMin():
	cmds.currentTime (minLoopTime) # ��������� ������� � ������ ��������

####################################################################################################################
### Main (need to rebuld code)

def translationStart():
	
	global asT; asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
	global aeT; aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
	resetLoopTime()
	
	global listObjects; listObjects = cmds.ls (sl=True) # ������ �����������
	
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

	global listFixed; listFixed = listObjects [:]

	for i in range (len(listFixed)):
		listFixed[i] = listFixed[i].replace("|", "_")

	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	global mainLayerName; mainLayerName = "OVERLAPPY" # ��� �������� ����

	if (cmds.objExists(mainLayerName)):
		print "\n||| OVERLAPPY start |||\n"
	else:
		cmds.animLayer (mainLayerName)
		print "\n||| OVERLAPPY start ||| Layer created |||\n"

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

		layerBase = "translate_" # ��� ���� ����
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
			cmds.deleteAttr( n=listObjects[i], at="blendParent1" )
			
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
			cmds.deleteAttr( n=listObjects[i], at="blendParent1" )
			
			resetLoopTime()

		
		cmds.select (d=True) # ��������
		
	for l in listObjects:
		cmds.select (l, add=True)
		
	print "\n||| OVERLAPPY end |||\n"


def rotationStart():
	
	global asT; asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
	global aeT; aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
	resetLoopTime()
	
	global listObjects; listObjects = cmds.ls (sl=True) # ������ �����������
	
	if ( len(listObjects) <= 1 ):
		
		print "\n||| Need to select two or more objects |||\n"
	
	else:
			
		#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
		global listFixed; listFixed = listObjects [:]
	
		for i in range (len(listFixed)):
			listFixed[i] = listFixed[i].replace("|", "_")
	
	
		#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		
		global mainLayerName; mainLayerName = "OVERLAPPY" # ��� �������� ����
	
		if (cmds.objExists(mainLayerName)):
			print "\n||| OVERLAPPY start |||\n"
		else:
			cmds.animLayer (mainLayerName)
			print "\n||| OVERLAPPY start ||| Layer created |||\n"
	
		#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
		for i in range(len(listFixed)): # �������� ����
			
			if ( i+1 != len(listFixed) ):
			
				global zeroLoc; zeroLoc = listFixed[i] + "_base_loc" # ��� �������� ��������
				global aimLoc; aimLoc = listFixed[i] + "_aim_loc" # ��� ��������� ��������
				global tempLoc; tempLoc = listFixed[i] + "_temp_loc" # ��� ����������� ��������
				global tempAimLoc; tempAimLoc = listFixed[i] + "_tempAim_loc" # ��� �������� ��������
				
				global tempPart; tempPart = listFixed[i] + "_temp_part" # ��� �������
				global tempNucl; tempNucl = "nucleus1" # ��� ���������� ����
				
				global partRtype; partRtype = tempPart + "Shape.particleRenderType" # ��������� � ���� ����������� �������
				global partRrad; partRrad = tempPart + "Shape.radius" # ��������� � ������� �������
				global partRsm; partRsm = tempPart + "Shape.goalSmoothness" # ��������� � �������� ������
				global partRwe; partRwe = tempPart + "Shape.goalWeight[0]" # ��������� � ���� ����
				global partNucl; partNucl = tempNucl + ".timeScale" # ��������� � ������ ������� ��� ����
				global nuclStart; nuclStart = tempNucl + ".startFrame" # ��������� � ������ ��������� ��� ����
				
			#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
				
				cmds.spaceLocator( n = zeroLoc ) # ������ ������� �������
				cmds.spaceLocator( n = aimLoc ) # ������ �������� �������
				cmds.spaceLocator( n = tempLoc ) # ������ ���������� �������
				
				cmds.matchTransform ( zeroLoc, listObjects[i], pos=True ) # ���������� ������� ������� � ����� �������� �������
				cmds.matchTransform ( tempLoc, listObjects[i+1], pos=True ) # ���������� ���������� ������� � ����� �������� �������
				
				cmds.select( tempLoc, r=True ) # �������� ���������� �������
				cmds.duplicate( n = tempAimLoc ) # ��������� ��� � ������ ������� �������
				
				cmds.select( listObjects[0], r=True ) # �������� ������� ������
				cmds.select( zeroLoc, add=True ) # �������� ������� �������
				cmds.parentConstraint( mo=True, w = 1 ) # ������ ������ ���������
				
				cmds.select( aimLoc, r=True ) # �������� �������� �������
				cmds.select( zeroLoc, add=True ) # �������� ������� �������
				cmds.parent( r=True ) # ������ ��������
				
				cmds.select( listObjects[1], r=True ) # �������� ������� ������
				cmds.select( tempLoc, add=True ) # �������� ���������� �������
				cmds.parentConstraint( mo=True, sr=["x", "y", "z"], w = 1 ) # ������ ����������� ���������
				
				aimPosName = tempLoc + ".translate" # ��������� � ������� ����������� ��������
				partCenter = tempPart + ".center" # ��������� � ������ �������
				aimLocPos = tempAimLoc + ".translate" # ��������� � ������� �������� ��������
				
				aimPos = cmds.getAttr( aimPosName ) # ���� ������� ����������� ��������
				cmds.nParticle( p = aimPos , n = tempPart , c = 1 ) # ������ ������� � ������� �������
				cmds.goal( tempPart, w=0.5, utr=1, g = tempLoc ) # ������ ���������� ����� � ���������� ���������
				cmds.connectAttr( partCenter, aimLocPos, f=True ) # ����������� ������� ������� � �������
				
				cmds.select( tempAimLoc, r=True ) # �������� ������� �������
				cmds.select( aimLoc, add=True ) # �������� �������� �������
				cmds.aimConstraint( w=1, aim=(0, 1, 0), u=(0, 1, 0), wut="vector", wu=(0, 1, 0), sk="y" ) # ������ ��� �������� �� ���� ����
		
		
			#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
				
				cmds.setAttr (partRtype, pShape)
				cmds.setAttr (partRrad, pRad)
				cmds.setAttr (partRsm, goalSmoothRot)
				cmds.setAttr (partRwe, goalWRot)
				cmds.setAttr (partNucl, timeScaleRot)
				cmds.setAttr (nuclStart, asT)
				
			#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		
				global minLoopTime; minLoopTime = aeT * -2
				global maxLoopTime; maxLoopTime = aeT * 2
		
		
				if (cycleRot):
					
					cmds.setAttr( nuclStart, minLoopTime )
					
					cmds.bakeResults( zeroLoc, t = (asT, aeT), sm=True, at=( "translate", "rotate") ) # ��������� �������� �������� ��� �����
					cmds.bakeResults( aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at="rotate" ) # ��������� ��� �������� ��� �����
					cmds.delete( tempAimLoc, tempLoc, tempPart, tempNucl ) # ������� ������� ������
					
					zeroParent = zeroLoc + "_parentConstraint1"
					cmds.delete( zeroParent )
					
					setTimeToMin()
					
					cmds.select( aimLoc, r=True ) # �������� ��� ������� ��� ��������
					cmds.select( listObjects[i], add=True ) # �������� ������ ��� ������������
					cmds.parentConstraint( mo=True, st=["x", "y", "z"], w = 1 ) # ������ ������ ���������
					
					resetLoopTime()
		
				else:
					
					cmds.bakeResults( zeroLoc, t = (asT, aeT), sm=True, at=( "translate", "rotate") ) # ��������� �������� �������� ��� �������� ��������
					cmds.bakeResults( aimLoc, t = (asT, aeT), sm=True, at="rotate" ) # ��������� ��� �������� ��� �������� ��������
					cmds.delete( tempAimLoc, tempLoc, tempPart, tempNucl ) # ������� ������� ������
					
					zeroParent = zeroLoc + "_parentConstraint1"
					cmds.delete( zeroParent )
					
					resetLoopTime()
					
					cmds.select( aimLoc, r=True ) # �������� ��� ������� ��� ��������
					cmds.select( listObjects[i], add=True ) # �������� ������ ��� ������������
					cmds.parentConstraint( mo=True, st=["x", "y", "z"], w = 1 ) # ������ ������ ���������
		
			#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		
				layerBase = "rotate_" # ��� ���� ����
				layerName = layerBase + listFixed[i] # ��� ����	
				layerComp = listFixed[i] + '_layer_{0}'.format("0") # ��� ���������� ����
		
				if ( cmds.objExists( layerName ) ):
					
					cmds.bakeResults( listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "rotate" ) # �������� ������ � ����
					cmds.select( listObjects[i], r=True )
					cmds.setInfinity( pri="cycle", poi="cycle" )
					cmds.delete( aimLoc, zeroLoc ) # ������� ������� �������
					cmds.container( "BakeResultsContainer", e=True, rc=True ) # ������� ���������
					cmds.animLayer( "BakeResults", e=True, p = layerName ) # ��������� ���� � ��������� � �������� ���� �������
					cmds.rename( "BakeResults", layerComp ) # ��������������� ����
					cmds.deleteAttr( n=listObjects[i], at="blendParent1" )
					
					resetLoopTime()
				else:
					cmds.animLayer( layerName ) # ������ ������ ���� ��� ���� ��������� �������
					cmds.animLayer( layerName, e=True, p = mainLayerName ) # ��������� ���� ���� � ������� ����
					cmds.bakeResults( listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "rotate" ) # �������� ������ � ����
					cmds.select( listObjects[i], r=True )
					cmds.setInfinity( pri="cycle", poi="cycle" )
					cmds.delete( aimLoc, zeroLoc ) # ������� ������� �������
					cmds.container( "BakeResultsContainer", e=True, rc=True ) # ������� ���������
					cmds.animLayer( "BakeResults", e=True, p = layerName ) # ��������� ���� � ��������� � �������� ���� �������
					cmds.rename( "BakeResults", layerComp ) # ��������������� ����
					cmds.deleteAttr( n=listObjects[i], at="blendParent1" )
					
					resetLoopTime()
		
				
				cmds.select (d=True) # ��������
		
	for l in listObjects:
		cmds.select (l, add=True)
		
	print "\n||| OVERLAPPY end |||\n"

####################################################################################################################
### Run code

resetValues()
uiCreation()

####################################################################################################################
### End