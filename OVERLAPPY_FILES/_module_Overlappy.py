# GETools v0.2.0 (GenEugene Tools)
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
		### COLORS
		self.cRed = [1, .5, .5]
		self.cOrange = [1, .6, .3]
		self.cYellow = [1, 1, .5]
		self.cGreen = [.6, 1, .6]
		self.cLBlue = [.4, .8, 1]
		self.cBlue = [.3, .7, 1]
		self.cPurple = [.81, .4, 1]
		self.cWhite = [1, 1, 1]
		self.cGray = [.5, .5, .5]

		### WINDOW
		self.titleText = "OVERLAPPY v0.2.0"
		self.windowWidth = 300
		self.window_name = "GEToolsWindow"
		self.windowHeight = 24

		### SLIDERS
		self.sliderWidth1 = 60
		self.sliderWidth2 = 60
		self.sliderWidth3 = 10

		### SETTINGS
		self.particleSize = 20
		self.particleConserve = 1
		self.particleDrag = 0.010
		self.particleDamp = 0
		self.goalSmooth = 3
		self.goalWeight = 0.5
		self.nucleusTimeScale = 1
		self.nucleusGravity = 9.800

		### NAMES
		self.nameMainGroup = "_OverlappyMainGroup_"
		self.nameLocGoal = "_locGoal_"
		self.nameLocParticle = "_locParticle_"
		self.nameParticle = "_particle_"
		self.nameNucleus = "nucleus1" # TODO: get nucleus node from scene

		### READONLY
		self.selected = None
		self.timeCurrent = None
		self.timeStart = None
		self.timeEnd = None
		self.simulated = False

	def CreateUI(self):
		# WINDOW
		if c.window(self.window_name, exists = True):
			c.deleteUI(self.window_name)
		c.window(self.window_name, title = self.titleText, mxb = 0, s = 0)
		c.window(self.window_name, e = True, rtf = True, wh = (self.windowWidth, self.windowHeight))
		layout = c.columnLayout(adj = True, h = self.windowHeight)

		# HEAD MENU
		c.menuBarLayout()
		c.menu(label = 'Scene')
		c.menuItem(label = 'Reload', c = "GETOOLS.SceneReload()")
		c.menu(label = 'Script')
		c.menuItem(label = 'Reload', c = "GETOOLS.Restart()")

		# BUTTONS
		c.frameLayout(l = "BUTTONS", p = layout, collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		c.gridLayout(numberOfColumns = 3, cellWidthHeight = (self.windowWidth / 3, self.windowHeight))
		ccSelectObjects = self._SelectObjects
		ccSelectParticle = self._SelectParticle
		ccSelectNucleus = self._SelectNucleus
		ccRunLogic = self._RunMainLogic
		ccCleanup = self._Cleanup
		c.button(l = "SELECT OBJECTS", c = ccSelectObjects, bgc = self.cLBlue)
		c.button(l = "SELECT PARTICLE", c = ccSelectParticle, bgc = self.cLBlue)
		c.button(l = "SELECT NUCLEUS", c = ccSelectNucleus, bgc = self.cLBlue)
		c.button(l = "RUN", c = ccRunLogic, bgc = self.cGreen)
		c.button(l = "none", enable=0)
		c.button(l = "none", enable=0)
		c.button(l = "BAKE TO OBJECT", enable=0)
		c.button(l = "BAKE TO LAYER", enable=0)
		c.button(l = "none", enable=0)
		c.button(l = "CLEANUP", c = ccCleanup, bgc = self.cYellow)
		c.button(l = "RESET PARTICLE", enable=0)
		c.button(l = "RESET NUCLEUS", enable=0)

		# SETTINGS
		c.frameLayout(l = "PARTICLE", p = layout, collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		c.floatSliderGrp(l = " Size", v = self.particleSize, fmn = 0, fmx = 1000, min = 0, max = 20, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " Conserve", v = self.particleConserve, fmn = 0, fmx = 1, min = 0, max = 1, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " Drag", v = self.particleDrag, fmn = 0, fmx = 10, min = 0, max = 2, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " Damp", v = self.particleDamp, fmn = 0, fmx = 20, min = 0, max = 10, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " G.Smooth", v = self.goalSmooth, fmn = 0, fmx = 20, min = 0, max = 10, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " G.Weight", v = self.goalWeight, fmn = 0, fmx = 1, min = 0, max = 1, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		# c.gridLayout(numberOfColumns = 3, cellWidthHeight = (self.windowWidth / 3, self.windowHeight))
		# c.button(l = "SET", bgc = self.cWhite)
		# c.button(l = "GET", bgc = self.cWhite)
		# c.checkBox(l = " Auto mode", v = True)

		c.frameLayout(l = "NUCLEUS", p = layout, collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		c.floatSliderGrp(l = " Time Scale", v = self.nucleusTimeScale, fmn = 0, fmx = 20, min = 0, max = 10, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		c.floatSliderGrp(l = " Gravity", v = self.nucleusGravity, fmn = -1000, fmx = 1000, min = 0, max = 20, field = True, precision = 3, width = self.windowWidth, columnAlign = (1, "left"), columnWidth3 = (self.sliderWidth1, self.sliderWidth2, self.sliderWidth3))
		# c.floatFieldGrp(l = " Start Frame", value1 = 0, columnAlign = (1, "left"), columnWidth2 = (60, 45))
		# c.gridLayout(numberOfColumns = 3, cellWidthHeight = (self.windowWidth / 3, self.windowHeight))
		# c.button(l = "SET", bgc = self.cWhite)
		# c.button(l = "GET", bgc = self.cWhite)
		# c.checkBox(l = " Auto mode", v = True)

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




	def _SelectObjects(self, *args):
		if (self.selected == None):
			return
		if (len(self.selected) > 0):
			c.select(self.selected, r=1)

	def _SelectParticle(self, *args):
		if (self.selected == None):
			return
		if (len(self.selected) > 0):
			particle = self.nameParticle + self.selected[0]
			if (c.objExists(particle)):
				c.select(particle, r=1)

	def _SelectNucleus(self, *args):
		if (c.objExists(self.nameNucleus)):
			c.select(self.nameNucleus, r=1)


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
		c.group(em=1, n = self.nameMainGroup)

		# Run setup logic
		self._CreateSetup(self.selected[0])
		
		c.select(self.selected, r = 1)
		self.simulated = True

	def _CreateSetup(self, objCurrent, *args):
		# Names
		locGoalName = self.nameLocGoal + objCurrent
		locParticleName = self.nameLocParticle + objCurrent
		particleName = self.nameParticle + objCurrent

		# Create locator for goal
		_locGoal = c.spaceLocator(n = locGoalName)
		c.parent(_locGoal, self.nameMainGroup)
		c.matchTransform(_locGoal, objCurrent, pos = True, rot = True)
		c.parentConstraint(objCurrent, _locGoal, maintainOffset=1)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		_particle = c.nParticle(n = particleName, position = _position, conserve = 1)
		c.goal(useTransformAsGoal = 1, goal = _locGoal)
		c.parent(_particle[0], self.nameMainGroup)

		# Set simulation attributes
		c.setAttr(_particle[0] + "Shape.radius", self.particleSize)
		c.setAttr(_particle[0] + "Shape.solverDisplay", 1)
		c.setAttr(_particle[0] + "Shape.conserve", self.particleConserve)
		c.setAttr(_particle[0] + "Shape.drag", self.particleDrag)
		c.setAttr(_particle[0] + "Shape.damp", self.particleDamp)
		c.setAttr(_particle[0] + "Shape.goalSmoothness", self.goalSmooth)
		c.setAttr(_particle[0] + "Shape.goalWeight[0]", self.goalWeight)
		_nucleus = c.ls(type='nucleus')
		c.setAttr(_nucleus[0] + ".timeScale", self.nucleusTimeScale)
		c.setAttr(_nucleus[0] + ".gravity", self.nucleusGravity)
		c.setAttr(_nucleus[0] + ".startFrame", self.timeStart)

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

		c.select(cl=1)
		self._DeleteNucleus()

	def _DeleteNucleus(self, *args):
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
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