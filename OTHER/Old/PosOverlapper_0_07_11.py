####################################################################################################################
import maya.cmds as cmds
####################################################################################################################

	
global goalSmooth; goalSmooth = 1.5 # ����������� �������
global timeScale; timeScale = 0.3 # ����� �������
global goalW; goalW = 0.5 # ������� ������
global cycle; cycle = True # �������� �����

global slWidth; slWidth = 400 # ������ ���������
global slHeight; slHeight = 25 # ������ ���� ��������

pRad = 0.253 # ������ ���� �������
pShape = 4 # ��� ����������� �������
	
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


	
global asT; asT = cmds.playbackOptions (query=True, min=True) # ����� ������� ��������
global aeT; aeT = cmds.playbackOptions (query=True, max=True) # ������ ������� ��������
setTimeToStart()

global listObjects; listObjects = cmds.ls (sl=True) # ������ �����������

global mainLayerName; mainLayerName = "OVERLAPPER" # ��� �������� ����

if (cmds.objExists(mainLayerName)):
	print "\n||| OVERLAPPER start |||\n"
else:
	cmds.animLayer (mainLayerName)
	print "\n||| OVERLAPPER start ||| Layer created |||\n"

	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


		
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




minLoopTime = aeT * -3
maxLoopTime = aeT * 2

#if (cycle):
	
#cmds.playbackOptions (e=True, min=minLoopTime, max=maxLoopTime)
cmds.setAttr (nuclStart, minLoopTime)
#setTimeToMin()
	
cmds.bakeResults (aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at = "translate") # ��������� ��� �������� ��� �����
cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������

setTimeToMin()

cmds.select (aimLoc, r=True) # �������� ��� ������� ��� ��������
cmds.select (listObjects[i], add=True) # �������� ������ ��� ������������
cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������

#resetLoopTime()

#else:
"""
cmds.bakeResults (aimLoc,t = (asT, aeT), sm=True, at = "translate") # ��������� ��� �������� ��� �������� ��������
cmds.delete (tempLoc, tempPart, tempNucl) # ������� ������� ������

resetLoopTime()

cmds.select (aimLoc, r=True) # �������� ��� ������� ��� ��������
cmds.select (listObjects[i], add=True) # �������� ������ ��� ������������
cmds.parentConstraint (mo=True, sr=["x", "y", "z"], w = 1) # ������ ����������� ���������
"""
	#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

layerBase = "overlap_" # ��� ���� ����
layerName = layerBase + listObjects[i] # ��� ����	
layerComp = listObjects[i] + '_layer_{0}'.format("0") # ��� ���������� ����

if (cmds.objExists(layerName)):
	
	cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
	cmds.delete (aimLoc) # ������� ������� �������
	cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
	cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
	cmds.rename ("BakeResults", layerComp) # ��������������� ����
	
	resetLoopTime()
else:
	cmds.animLayer (layerName) # ������ ������ ���� ��� ���� ��������� �������
	cmds.animLayer (layerName, e=True, p = mainLayerName) # ��������� ���� ���� � ������� ����
	cmds.bakeResults (listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "translate") # �������� ������ � ����
	cmds.delete (aimLoc) # ������� ������� �������
	cmds.container("BakeResultsContainer", e=True, rc=True) # ������� ���������
	cmds.animLayer ("BakeResults", e=True, p = layerName) # ��������� ���� � ��������� � �������� ���� �������
	cmds.rename ("BakeResults", layerComp) # ��������������� ����
	
	resetLoopTime()

		
cmds.select (d=True) # ��������
		
for l in listObjects:
	cmds.select (l, add=True)
		
print "\n||| OVERLAPPER end |||\n"
