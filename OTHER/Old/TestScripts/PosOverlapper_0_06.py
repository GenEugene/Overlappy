###############################################################################################################
                                                                                                  #  ����������

listObjects = cmds.ls (sl=True) # ������ �����������
if (cmds.objExists("OVERLAPPER")):
	print "\n||| OVERLAPPER layer already exist |||\n"
else:
	mainLayer = cmds.animLayer ("OVERLAPPER")


###############################################################################################################
                                                                                       #  ���������� ����������

timeScale = 0.7 # ����� �������
goalSmooth = 1.5 # ����������� �������
goalW = 0.6 # ������� ������
cycle = False # �������� �����

pRad = 0.253 # ������ ���� �������
pShape = 4 # ��� ����������� �������

asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
cmds.currentTime (asT) # ��������� ������� � ������ ��������

c = 0 # ������� ��� �����


###############################################################################################################
                                                                                                      #  ������

def setAttributes ():
	cmds.setAttr (partRtype, pShape)
	cmds.setAttr (partRrad, pRad)
	cmds.setAttr (partRsm, goalSmooth)
	cmds.setAttr (partRwe, goalW)
	
	cmds.setAttr (partNucl, timeScale)
	
def layerCreation ():
	cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
	cmds.delete (aimLoc) # ������� ������� �������
	cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
	cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
	cmds.rename ("BakeResults", layerComp) # ��������������� ����

def bakingToLocator ():
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
	cmds.select (listObjects[c], add=True) # �������� ������ ��� ������������
	cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������
	
def layerCreation ():
#cmds.delete ("_layer_0", "_layer_1", "_layer_2")
	
	layerBase = "overlap_" # ��� ���� ����
	layerComp = listObjects[c] + '_layer_{0}'.format(0) # ��� ���������� ����
	layerName = layerBase + listObjects[c] # ��� ����	
	
	if (cmds.objExists(layerName)):
		
		cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
		cmds.delete (aimLoc) # ������� ������� �������
		cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
		cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
		cmds.rename ("BakeResults", layerComp) # ��������������� ����
	else:
		cmds.animLayer (layerName) # ������ ������ ���� ��� ���� ��������� �������
		cmds.animLayer (layerName, e=True, p = mainLayer) # ��������� ���� ���� � ������� ����
		cmds.bakeResults (listObjects[c], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
		cmds.delete (aimLoc) # ������� ������� �������
		cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
		cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
		cmds.rename ("BakeResults", layerComp) # ��������������� ����

###############################################################################################################
                                                                                                       #  �����

for i in listObjects: # �������� ����
	
	aimLoc = i + "_aim_loc" # ��� ��� ��������
	tempLoc = i + "_temp_loc" # ��� ��� ��������
	tempPart = i + "_temp_part" # ��� ��� �������
	tempNucl = "nucleus1" # ��� ��� ����

	partAimLoc = aimLoc + ".translate" # ��������� � ������� ��� ��������
	partRtype = tempPart + "Shape.particleRenderType" # ��������� � ���� ����������� �������
	partRrad = tempPart + "Shape.radius" # ��������� � ������� �������
	partRsm = tempPart + "Shape.goalSmoothness" # ��������� � �������� ������
	partRwe = tempPart + "Shape.goalWeight[0]" # ��������� � ���� ����
	partPos = tempPart + ".center" # ��������� � ������ �������
	partNucl = tempNucl + ".timeScale" # ��������� � ������ ������� ��� ����
	
	cmds.spaceLocator (n = tempLoc) # ������ ��� �������
	cmds.matchTransform (tempLoc, listObjects[c], pos=True) # ���������� ������� � ����� �������
	
	objCenter = tempLoc + ".translate" # ��������� � ������ �������
	objC = cmds.getAttr (objCenter) # ���������� ����� �������
	
	locCenter = tempLoc + ".center" # ��������� � ������ ��� ��������
	locTr = tempLoc + ".translate" # ��������� � ������� ��� ��������
	
	cmds.nParticle (p = objC, n = tempPart , c = 1) # ������ ������� � ������� �������
	cmds.goal (tempPart, w=goalW, utr=1, g = tempLoc)# ������ ���������� �����
	
	cmds.select (tempLoc, r=True) # �������� ��� �������
	cmds.select (listObjects[c], add=True) # �������� �������� ��������
	cmds.parent (r=True) # ������ ��������
	
	cmds.matchTransform (tempLoc, listObjects[c], pos=True) # ���������� ������� � ����� �������
	
	setAttributes ()
	bakingToLocator ()
	layerCreation ()
	
	cmds.select (d=True) # ��������
	c += 1
	
#c = 0 # ������� ��� �����

for l in listObjects:
	cmds.select (l, add=True) # 
	
	
###############################################################################################################
                                                                                                        #  ����

#print "\n>>> ������� ���������:", asT, "---", aeT
print "\n||| The Overlapper just saved your time |||\n"

                                                                                                  #  ����������
###############################################################################################################