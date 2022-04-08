# GETools v0.1.2 (GenEugene Tools)
# Author Evgeny (GenEugene) Gataulin tek94@mail.ru tek942@gmail.com
# Maya 2017-2022
# https://github.com/GenEugene/Overlappy

# import sys
# import os
import maya.cmds as c
# import maya.mel as mel
# from datetime import datetime
# from inspect import currentframe, getframeinfo

# sys.exit()

class GETOOLS_class:
	def __init__(self):
		### WINDOW
		self.titleText = "OVERLAPPY in progress..."
		self.windowWidth = 300
		self.lineHeight = 26
		self.window_name = "GEToolsWindow"
		self.windowHeight = 20
		self.defaultTab = 2
		self.tabs = None

		### SETTINGS
		self.nameMainGroup = "OverlappyMainGroup"
		self.nameGrpRef = "grpRef"
		self.nameGrpOffset = "grpOffset"
		self.nameLocGoal = "locGoal"
		self.nameLocParticle = "locParticle"
		self.nameParticle = "particle"

		self.weight = 0.5

		self.simulated = False
		self.selected = None

		### TIME
		self.timeCurrent = None
		self.timeStart = None
		self.timeEnd = None

	def CreateUI(self):
		# WINDOW
		if c.window(self.window_name, exists = True):
			c.deleteUI(self.window_name)
		c.window(self.window_name, title = self.titleText, mxb = 0, s = 0)
		c.window(self.window_name, e = True, rtf = True, wh = (self.windowWidth, self.windowHeight))
		c.columnLayout(adj = True, h = self.windowHeight)


		# HEAD MENU
		c.menuBarLayout()
		c.menu(label = 'Scene')
		c.menuItem(label = 'Reload', c = "GETOOLS.SceneReload()")
		c.menu(label = 'Script')
		c.menuItem(label = 'Reload', c = "GETOOLS.Restart()")

		# BUTTONS
		c.frameLayout(l = "TEST BUTTONS", collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (self.windowWidth / 2, self.windowHeight))

		ccRunLogic = self._RunMainLogic
		ccCleanup = self._Cleanup
		ccDeleteNucleus = self._DeleteNucleus

		c.button(l = "RUN", c = ccRunLogic)
		c.button(l = "UPDATE")

		c.button(l = "BAKE TO OBJECT", en=0)
		c.button(l = "BAKE TO LAYER", en=0)

		c.button(l = "CLEANUP", c = ccCleanup)
		c.button(l = "DELETE NUCLEUS", c = ccDeleteNucleus)


		# RUN WINDOW
		c.showWindow(self.window_name)
		self.Resize_UI()

	def Resize_UI(self, *args):
		c.window(self.window_name, e = True, h = self.windowHeight, rtf = True)

	def SceneReload(self, *args):
		currentScene = c.file(q = True, sceneName = True)
		if(currentScene):
			c.file(currentScene, open = True, force = True)
		else:
			c.file(new = 1, f = 1)



	def _RunMainLogic(self, *args):
		# Get selected objects
		self.selected = c.ls(sl = 1)
		if (len(self.selected) == 0):
			c.warning("Need to select at least 1 object")
			return
		
		# Get min/max anim range time and reset time slider
		self.timeCurrent = c.currentTime(q=1)
		self.timeStart = c.playbackOptions(q=1, min=1)
		self.timeEnd = c.playbackOptions(q=1, max=1)
		c.playbackOptions(e=1, min = self.timeStart, max = self.timeEnd)
		c.currentTime(self.timeStart)

		# Create group
		c.select(cl=1)
		if (c.objExists(self.nameMainGroup)):
			c.delete(self.nameMainGroup)
		# c.group(em=1, n = self.nameMainGroup)
		grp = c.group(em=1, n = self.nameMainGroup)

		# Run setup cycle for all seleted
		for i in range(len(self.selected)):
			if (i == 0):
				self._CreateSetup(self.selected[i])
			else:
				self._CreateSetup(self.selected[i], self.selected[i-1])
		
		# Reselect initial selected objects 
		c.select(self.selected, r = 1)
		
		self.simulated = True


	def _CreateSetup(self, objCurrent, objLast=None, *args):
		# Names
		grpRefName = self.nameGrpRef + "_" + objCurrent
		grpOffsetName = self.nameGrpOffset + "_" + objCurrent
		locGoalName = self.nameLocGoal + "_" + objCurrent
		locParticleName = self.nameLocParticle + "_" + objCurrent
		particleName = self.nameParticle + "_" + objCurrent

		# Create ref group
		# c.select(cl=1)
		# _grpRef = c.group(n = grpRefName, em=1)
		# c.parent(_grpRef, self.nameMainGroup)
		# c.matchTransform(_grpRef, objCurrent, pos = True, rot = True)
		# c.parentConstraint(objCurrent, _grpRef, maintainOffset=1)

		# Create offset group
		# c.select(cl=1)
		# _grpOffset = c.group(n = grpOffsetName, em=1)
		# c.parent(_grpOffset, _grpRef)
		# c.matchTransform(_grpOffset, objCurrent, pos = True, rot = True)
		# c.parentConstraint(objCurrent, _grpOffset, maintainOffset=1)

		# Create locator for goal
		_locGoal = c.spaceLocator(n = locGoalName)
		c.parent(_locGoal, self.nameMainGroup)
		c.matchTransform(_locGoal, objCurrent, pos = True, rot = True)
		c.parentConstraint(objCurrent, _locGoal, maintainOffset=1)

		# Constrain base locator
		# if (objLast == None):
		# 	# c.parent(_locGoal, self.nameMainGroup)
		# 	c.parentConstraint(objCurrent, _locGoal, maintainOffset=1)
		# else:
		# 	# c.parent(_locGoal, self.nameLocParticle + "_" + objLast)
		# 	# c.parentConstraint(self.nameLocParticle + "_" + objLast, _locGoal, maintainOffset=1)
		# 	c.connectAttr(self.nameParticle + "_" + objLast + ".center", _locGoal[0] + ".translate", f = True)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		_particle = c.nParticle(n = particleName, position = _position, conserve = 1)
		_goal = c.goal(weight = self.weight, useTransformAsGoal = 1, goal = _locGoal)
		c.parent(_particle[0], self.nameMainGroup)

		# Create locator for particle
		_locParticle = c.spaceLocator(n = locParticleName)
		c.parent(_locParticle, self.nameMainGroup)
		c.matchTransform(_locParticle, objCurrent, pos = True, rot = True)
		c.connectAttr(_particle[0] + ".center", _locParticle[0] + ".translate", f = True)


	def _Cleanup(self, *args):
		# Delete group
		if (c.objExists(self.nameMainGroup)):
			c.delete(self.nameMainGroup)

		# Revert cached timeslider
		if (self.simulated):
			c.currentTime(self.timeCurrent)
		# 	c.select(self.selected, r = 1)
		# else:
		# 	c.select(cl=1)

		c.select(cl=1)


	def _DeleteNucleus(self, *args):
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			# c.warning("Nucleus nodes were removed")
			c.delete(_nucleus)




	### EXECUTION
	@staticmethod
	def Start():
		GETOOLS.CreateUI()
	
	@staticmethod
	def Restart():
		c.evalDeferred("GETOOLS.Start()")


GETOOLS = GETOOLS_class()
GETOOLS.Start()