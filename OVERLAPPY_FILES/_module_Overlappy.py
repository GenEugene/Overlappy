# Overlappy v1.0.0 for Maya 2022
# Author Evgeny Gataulin (GenEugene) tek94@mail.ru tek942@gmail.com
# https://github.com/GenEugene/Overlappy

# import sys
# import os
import maya.cmds as c
# import maya.mel as mel
# from datetime import datetime
# from inspect import currentframe, getframeinfo

# sys.exit()

class OVLP:
	### WINDOW
	titleText = "Overlappy v1.0.0"
	window_name = "OverlappyWindow"
	windowWidth = 300
	windowHeight = 24

	### SLIDERS
	sliderWidth1 = 60
	sliderWidth2 = 60
	sliderWidth3 = 10
	markerWidth = 6

	### COLORS
	cRed = [1, .5, .5]
	cOrange = [1, .6, .3]
	cYellow = [1, 1, .5]
	cGreen = [.6, 1, .6]
	cLBlue = [.4, .8, 1]
	cBlue = [.3, .7, 1]
	cPurple = [.81, .4, 1]
	cWhite = [1, 1, 1]
	cGray = [.5, .5, .5]
	cDarkGray = [.25, .25, .25]
	cBlack = [0, 0, 0]

	def __init__(self):
		### SETTINGS # TODO: move to preset
		self.particleRadius = 25
		self.particleConserve = 1
		self.particleDrag = 0.01
		self.particleDamp = 0
		self.goalSmooth = 3
		self.goalWeight = 0.5
		self.nucleusGravity = 0
		self.nucleusTimeScale = 1

		### NAMES
		self.nameMainGroup = "_OverlappyMainGroup_"
		self.nameLocGoal = "_locGoal_"
		self.nameLocParticle = "_locParticle_"
		self.nameParticle = "_particle_"
		self.nameNucleus = "nucleus1" # TODO: get nucleus node from scene

		### READONLY
		self.layoutMain = None
		self.selected = None
		self.timeCurrent = None
		self.timeStart = None
		self.timeEnd = None
		self.simulated = False

		### SLIDERS
		self.sliderParticleRadius = None
		self.sliderParticleConserve = None
		self.sliderParticleDrag = None
		self.sliderParticleDamp = None
		self.sliderGoalSmooth = None
		self.sliderGoalWeight = None
		self.sliderNucleusGravity = None
		self.sliderNucleusTimeScale = None
	def CreateUI(self):
		# WINDOW
		if c.window(self.window_name, exists = True):
			c.deleteUI(self.window_name)
		c.window(self.window_name, title = OVLP.titleText, mxb = 0, s = 0)
		c.window(self.window_name, e = True, rtf = True, wh = (OVLP.windowWidth, OVLP.windowHeight))
		self.layoutMain = c.columnLayout(adj = True, h = self.windowHeight)

		# HEAD MENU
		c.menuBarLayout()
		c.menu(label = 'Scene')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.SceneReload)
		c.menu(label = 'Script')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.Restart)
		
		# BUTTONS
		c.frameLayout(l = "BUTTONS", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		c.gridLayout(numberOfColumns = 3, cellWidthHeight = (OVLP.windowWidth / 3, OVLP.windowHeight))
		ccSelectObjects = self._SelectObjects
		ccSelectParticle = self._SelectParticle
		ccSelectNucleus = self._SelectNucleus
		ccRunLogic = self._RunMainLogic
		ccCleanup = self._Cleanup
		ccReset = self._ValuesReset
		c.button(l = "SELECT OBJECTS", c = ccSelectObjects, bgc = OVLP.cLBlue)
		c.button(l = "SELECT PARTICLE", c = ccSelectParticle, bgc = OVLP.cLBlue)
		c.button(l = "SELECT NUCLEUS", c = ccSelectNucleus, bgc = OVLP.cLBlue)
		c.button(l = "RUN", c = ccRunLogic, bgc = OVLP.cGreen)
		c.button(l = "none", enable=0)
		c.button(l = "none", enable=0)
		# c.button(l = "BAKE TO OBJECT", enable=0)
		# c.button(l = "BAKE TO LAYER", enable=0)
		# c.button(l = "none", enable=0)
		c.button(l = "CLEANUP", c = ccCleanup, bgc = OVLP.cYellow)
		c.button(l = "RESET VALUES", c = ccReset, bgc = OVLP.cOrange)
		c.button(l = "none", enable=0)


		# SLIDERS
		class classSlider:
			def __init__(self, label="label", attribute="", name="", nameAdd=True, value=1, fieldMin=0, fieldMax=1, min=0, max=1, parent=self.layoutMain, precision=3):
				self._label = label
				self._attribute = attribute
				self._name = name
				self._nameAdd = nameAdd
				self._value = value
				self._fmin = fieldMin
				self._fmax = fieldMax
				self._min = min
				self._max = max
				self._precision = precision
				self.markerColorDefault = OVLP.cGray
				self.markerColorChanged = OVLP.cBlue
				c.flowLayout(p=parent)
				self._slider = c.floatSliderGrp(l = " " + self._label, v = self._value, cc = _OVERLAPPY._ValuesSet, dc = _OVERLAPPY._ValuesSet, fmn = self._fmin, fmx = self._fmax, min = self._min, max = self._max, field=1, precision = self._precision, width = OVLP.windowWidth - OVLP.markerWidth, columnAlign = (1, "left"), columnWidth3 = (OVLP.sliderWidth1, OVLP.sliderWidth2, OVLP.sliderWidth3))
				c.popupMenu(p = self._slider)
				c.menuItem(l = "reset", c = self.ValuesReset)
				c.menuItem(l = "get value", c = self.ValuesGet)
				self._marker = c.button(l="", enable=0, w = OVLP.markerWidth, bgc = self.markerColorDefault)
			
			def ValuesGet(self, *args):
				firstName = _OVERLAPPY.selected
				if (firstName == None):
					c.warning("Can't get value, because simulation objects doesn't exists")
					return
				if (self._nameAdd):
					firstName = self._name + firstName[0] + self._attribute
				else:
					firstName = self._name + self._attribute
				value = c.getAttr(firstName)
				c.floatSliderGrp(self._slider, e=1, v = value)

			def ValuesSet(self):
				_value = c.floatSliderGrp(self._slider, q=1, v=1)
				if (_value != self._value):
					c.button(self._marker, e=1, bgc = self.markerColorChanged)
				else:
					c.button(self._marker, e=1, bgc = self.markerColorDefault)
				firstName = _OVERLAPPY.selected
				if (firstName != None):
					if (self._nameAdd):
						firstName = self._name + firstName[0]
					else:
						firstName = self._name
					c.setAttr(firstName + self._attribute, _value)
			
			def ValuesReset(self, *args):
				c.button(self._marker, e=1, bgc = self.markerColorDefault)
				c.floatSliderGrp(self._slider, e=1, v = self._value)
				_OVERLAPPY._ValuesSet()


		layoutSliders = c.frameLayout(l = "SETTINGS", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI)
		self.sliderParticleRadius = classSlider("Radius", "Shape.radius", self.nameParticle, True, self.particleRadius, 0, 1000, 0, 50, layoutSliders)
		self.sliderParticleConserve = classSlider("Conserve", "Shape.conserve", self.nameParticle, True, self.particleConserve, 0, 1, 0, 1, layoutSliders)
		self.sliderParticleDrag = classSlider("Drag", "Shape.drag", self.nameParticle, True, self.particleDrag, 0, 1000, 0, 2, layoutSliders)
		self.sliderParticleDamp = classSlider("Damp", "Shape.damp", self.nameParticle, True, self.particleDamp, 0, 1000, 0, 10, layoutSliders)
		self.sliderGoalSmooth = classSlider("G.Smooth", "Shape.goalSmoothness", self.nameParticle, True, self.goalSmooth, 0, 1000, 0, 10, layoutSliders)
		self.sliderGoalWeight = classSlider("G.Weight", "Shape.goalWeight[0]", self.nameParticle, True, self.goalWeight, 0, 1, 0, 1, layoutSliders)
		# self.sliderNucleusGravity = classSlider("Gravity", ".gravity", self.nameNucleus, False, self.nucleusGravity, -10000, 10000, 0, 20, layoutSliders)
		self.sliderNucleusTimeScale = classSlider("Time Scale", ".timeScale", self.nameNucleus, False, self.nucleusTimeScale, 0.001, 1000, 0.001, 10, layoutSliders)
		
		# c.floatFieldGrp(l = " Start Frame", value1 = 0, columnAlign = (1, "left"), columnWidth2 = (60, 45))
		# c.gridLayout(numberOfColumns = 3, cellWidthHeight = (self.windowWidth / 3, self.windowHeight))
		# c.button(l = "SET", bgc = self.cWhite)
		# c.button(l = "GET", bgc = self.cWhite)
		# c.checkBox(l = " Auto mode", v = True)

		# RUN WINDOW
		c.showWindow(OVLP.window_name)
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
			self.selected = None
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
		c.setAttr(_locGoal[0] + ".visibility", 0)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		_particle = c.nParticle(n = particleName, position = _position, conserve = 1)
		c.goal(useTransformAsGoal = 1, goal = _locGoal)
		c.parent(_particle[0], self.nameMainGroup)

		# Set simulation attributes
		c.setAttr(_particle[0] + "Shape.radius", self.particleRadius)
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
		c.setAttr(_nucleus[0] + ".visibility", 0)

		# Create locator for particle
		_locParticle = c.spaceLocator(n = locParticleName)
		c.parent(_locParticle, self.nameMainGroup)
		c.matchTransform(_locParticle, objCurrent, pos = True, rot = True)
		c.connectAttr(_particle[0] + ".center", _locParticle[0] + ".translate", f = True)
		c.setAttr(_locParticle[0] + ".visibility", 0)


	def _ValuesSet(self, *args):
		self.sliderParticleRadius.ValuesSet()
		self.sliderParticleConserve.ValuesSet()
		self.sliderParticleDrag.ValuesSet()
		self.sliderParticleDamp.ValuesSet()
		self.sliderGoalSmooth.ValuesSet()
		self.sliderGoalWeight.ValuesSet()
		# self.sliderNucleusGravity.ValuesSet()
		self.sliderNucleusTimeScale.ValuesSet()
	def _ValuesReset(self, *args):
		self.sliderParticleConserve.ValuesReset()
		self.sliderParticleDrag.ValuesReset()
		self.sliderParticleDamp.ValuesReset()
		self.sliderGoalSmooth.ValuesReset()
		self.sliderGoalWeight.ValuesReset()
		# self.sliderNucleusGravity.ValuesReset()
		self.sliderNucleusTimeScale.ValuesReset()
		self._ValuesSet()
	

	def _Cleanup(self, *args):
		# Clear selected
		self.selected = None
		# Delete group
		if (c.objExists(self.nameMainGroup)):
			c.delete(self.nameMainGroup)
		# Revert cached timeslider
		if (self.simulated):
			c.currentTime(self.timeCurrent)
		# Delete nucleus nodes
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			c.delete(_nucleus)
		c.select(cl=1)


	### EXECUTION
	def Start(self, *args):
		_OVERLAPPY.CreateUI()
	def Restart(self, *args):
		c.evalDeferred("_OVERLAPPY.Start()")


_OVERLAPPY = OVLP()
_OVERLAPPY.Start()