####################################################################################################################
import maya.cmds as cmds

goalSmooth = 2.5 # ����������� �������
timeScale = 0.7 # ����� �������
goalW = 0.5 # ������� ������

cycle = False # �������� �����

pRad = 0.253 # ������ ���� �������
pShape = 4 # ��� ����������� �������

asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������

####################################################################################################################
#"https://vk.com/geneugene3d"

if cmds.window ("main", exists = True):
	cmds.deleteUI ("main")

overUI = cmds.window ("main", title='PosOverlapper v0.07', mxb=False, s=False)
cmds.columnLayout (rs=5)

cmds.text (l=" Just run this script", h=30, hl=True, ann="This is my first script")



cmds.floatSliderGrp ("s1", l='Smooth', f=True, min=0.0, max=6.0, fmx=10, 
v=goalSmooth, cc=('goalSmooth=printSmoothV()'), pre=1, cal=(1, "left"), el="~2.5", w=500, ann="�������� �������� �� 2 �� 5")

cmds.floatSliderGrp ("s2", l='Scale', f=True, min=0.0, max=2.0, fmx=10, 
v=timeScale, cc=('timeScale=printScaleV()'), pre=1, cal=(1, "left"), el="~0.7", w=500, ann="�������� �������� �� 0.5 �� 1")

cmds.floatSliderGrp ("s3", l='Weight', f=True, min=0.0, max=1.0, 
v=goalW, cc=('goalW=printWeightV()'), pre=1, cal=(1, "left"), el="~0.5", w=500, ann="�������� �������� 0.5")



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
	
	cmds.currentTime (asT) # ��������� ������� � ������ ��������
	
	listObjects = cmds.ls (sl=True) # ������ �����������

	mainLayer = "" # ��� �������� ����

	if (cmds.objExists("OVERLAPPER")):
		print "\n||| OVERLAPPER layer already exist |||\n"
	else:
		mainLayer = cmds.animLayer ("OVERLAPPER")
		print "\n||| OVERLAPPER layer created |||\n"





	for i in range(len(listObjects)): # �������� ����
		
		aimLoc = listObjects[i] + "_aim_loc" # ��� ��� ��������
		tempLoc = listObjects[i] + "_temp_loc" # ��� ��� ��������
		tempPart = listObjects[i] + "_temp_part" # ��� ��� �������
		tempNucl = "nucleus1" # ��� ��� ����
	
		partAimLoc = aimLoc + ".translate" # ��������� � ������� ��� ��������
		partRtype = tempPart + "Shape.particleRenderType" # ��������� � ���� ����������� �������
		partRrad = tempPart + "Shape.radius" # ��������� � ������� �������
		partRsm = tempPart + "Shape.goalSmoothness" # ��������� � �������� ������
		partRwe = tempPart + "Shape.goalWeight[0]" # ��������� � ���� ����
		partPos = tempPart + ".center" # ��������� � ������ �������
		partNucl = tempNucl + ".timeScale" # ��������� � ������ ������� ��� ����
		
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





		cmds.setAttr (partRtype, pShape)
		cmds.setAttr (partRrad, pRad)
		cmds.setAttr (partRsm, goalSmooth)
		cmds.setAttr (partRwe, goalW)
		cmds.setAttr (partNucl, timeScale)
		




		cmds.duplicate (tempLoc, rr=True, n = aimLoc) # ��������� �������
		cmds.select (aimLoc, r=True) # �������� ��� �������
		cmds.parent (w=True) # ��������� ��������
		
		cmds.connectAttr (partPos, partAimLoc, f=True) # ����������� ��� ������� � �������
		if (cycle):
			cmds.bakeResults (aimLoc, t = (asT, aeT*3), sm=True, at = "translate") # ��������� ��� �������� ��� �����
			cmds.select (aimLoc, r=True) # �������� ��� �������
			cmds.keyframe (tc = -aeT, r=True) # �������� ������� ���� �� ���� ������ �����
		else:
			cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # ��������� ��� �������� ��� �������� ��������
			
		cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������
		cmds.select (aimLoc, r=True) # �������� ��� ������� ��� ��������
		cmds.select (listObjects[i], add=True) # �������� ������ ��� ������������
		cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������
		




		layerBase = "overlap_" # ��� ���� ����
		layerName = layerBase + listObjects[i] # ��� ����	
		layerComp = listObjects[i] + '_layer_{0}'.format(0) # ��� ���������� ����

		if (cmds.objExists(layerName)):
			
			cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
			cmds.delete (aimLoc) # ������� ������� �������
			cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
			cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
			cmds.rename ("BakeResults", layerComp) # ��������������� ����
		else:
			cmds.animLayer (layerName) # ������ ������ ���� ��� ���� ��������� �������
			cmds.animLayer (layerName, e=True, p = mainLayer) # ��������� ���� ���� � ������� ����
			cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
			cmds.delete (aimLoc) # ������� ������� �������
			cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
			cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
			cmds.rename ("BakeResults", layerComp) # ��������������� ����
		

		
		cmds.select (d=True) # ��������
		
	for l in listObjects:
		cmds.select (l, add=True)
		
	print "\n||| The Overlapper just saved your time |||\n"

####################################################################################################################