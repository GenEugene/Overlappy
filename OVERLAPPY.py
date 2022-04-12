# Overlappy v1.0.0 for Maya 2022
# Author Evgeny Gataulin (GenEugene) tek94@mail.ru tek942@gmail.com
# https://github.com/GenEugene/Overlappy

import maya.cmds as c
# import sys, os
# import maya.mel as mel
# from datetime import datetime
# from inspect import currentframe, getframeinfo
# sys.exit()

class OVLP:
	# WINDOW
	titleText = "Overlappy v1.0.0"
	window_name = "OverlappyWindow"
	windowWidth = 300
	windowHeight = 26

	# SLIDERS
	sliderWidth1 = 60
	sliderWidth2 = 60
	sliderWidth3 = 10
	markerWidth = 6

	# SETTINGS # TODO: move to preset
	particleRadius = 25
	particleConserve = 1
	particleDrag = 0.01
	particleDamp = 0
	goalSmooth = 3
	goalWeight = 0.5
	nucleusTimeScale = 1

	# NAMING
	nameMainGroup = "_OverlappyMainGroup_"
	nameLocGoal = "_locGoal_"
	nameLocParticle = "_locParticle_"
	nameParticle = "_particle_"
	replaceSymbol1 = "_R1S_" # for "|"
	replaceSymbol2 = "_R2S_" # for ":"

	# COLORS
	cLRed = [1, .7, .7]
	cRed = [1, .5, .5]
	cOrange = [1, .6, .3]
	cYellow = [1, 1, .5]
	cGreen = [.6, 1, .6]
	cLBlue = [.5, .9, 1]
	cBlue = [.3, .7, 1]
	cPurple = [.81, .4, 1]
	cWhite = [1, 1, 1]
	cGray = [.5, .5, .5]
	cDarkGray = [.3, .3, .3]
	cBlack = [.15, .15, .15]

	def __init__(self):
		# OBJECTS
		self.selected = ""
		self.locGoal = ""
		self.locParticle = ""
		self.particle = ""
		self.nucleus = ""

		# READONLY
		self.positionStartGoal = None
		self.positionStartParticle = None
		self.timeCurrent = 0
		self.timeStart = 0
		self.timeEnd = 0
		self.simulated = False

		# UI
		self.layoutMain = None
		self.sliderParticleRadius = None
		self.sliderParticleConserve = None
		self.sliderParticleDrag = None
		self.sliderParticleDamp = None
		self.sliderGoalSmooth = None
		self.sliderGoalWeight = None
		self.sliderNucleusTimeScale = None

		self.sliderOffsetX = None
		self.sliderOffsetY = None
		self.sliderOffsetZ = None
	def CreateUI(self):
		# WINDOW
		if c.window(OVLP.window_name, exists = True):
			c.deleteUI(OVLP.window_name)
		c.window(OVLP.window_name, title = OVLP.titleText, mxb = 0, s = 0)
		c.window(OVLP.window_name, e = True, rtf = True, wh = (OVLP.windowWidth, OVLP.windowHeight))
		self.layoutMain = c.columnLayout(adj = True, h = OVLP.windowHeight)

		# HEAD MENU
		c.menuBarLayout()
		c.menu(label = 'Scene')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.SceneReload)
		c.menu(label = 'Script')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.Restart)
		
		# BUTTONS
		c.frameLayout(l = "BUTTONS", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 3, cellWidthHeight = (OVLP.windowWidth / 3, OVLP.windowHeight))
		ccSelectObjects = self._SelectObjects
		ccSelectParticle = self._SelectParticle
		ccSelectNucleus = self._SelectNucleus
		ccScanScene = self._ScanObjectsFromScene
		ccResetValuesAll = self._ValuesResetAll
		ccCleanup = self._Cleanup
		ccRunLogic = self._RunMainLogic
		c.button(l = "SELECT OBJECTS", c = ccSelectObjects, bgc = OVLP.cLBlue)
		c.button(l = "SELECT PARTICLE", c = ccSelectParticle, bgc = OVLP.cLBlue)
		c.button(l = "SELECT NUCLEUS", c = ccSelectNucleus, bgc = OVLP.cLBlue)
		c.button(l = "SCAN SCENE", c = ccScanScene, bgc = OVLP.cBlue)
		c.button(l = "", enable=0)
		c.button(l = "", enable=0)
		c.button(l = "CLEANUP", c = ccCleanup, bgc = OVLP.cRed)
		c.button(l = "RESET ALL", c = ccResetValuesAll, bgc = OVLP.cYellow)
		c.button(l = "RUN", c = ccRunLogic, bgc = OVLP.cGreen)

		# SLIDERS
		class classSlider:
			def __init__(self, label="label", attribute="", name="", nameAdd=True, value=1, fieldMin=0, fieldMax=1, min=0, max=1, parent=self.layoutMain, command="", precision=3):
				self._attribute = attribute
				self._name = name
				self._nameAdd = nameAdd
				self._value = value
				self._ccCommand = command
				self._precision = precision
				self.markerColorDefault = OVLP.cGray
				self.markerColorChanged = OVLP.cBlue
				c.flowLayout(p=parent)
				self._slider = c.floatSliderGrp(l = " " + label, v = self._value, cc = self._ccCommand, dc = self._ccCommand, fmn = fieldMin, fmx = fieldMax, min = min, max = max, field=1, precision = self._precision, width = OVLP.windowWidth - OVLP.markerWidth, columnAlign = (1, "left"), columnWidth3 = (OVLP.sliderWidth1, OVLP.sliderWidth2, OVLP.sliderWidth3))
				c.popupMenu(p = self._slider)
				c.menuItem(l = "reset", c = self.ValueReset)
				c.menuItem(l = "get value", c = self.ValueGet)
				self._marker = c.button(l="", enable=0, w = OVLP.markerWidth, bgc = self.markerColorDefault)
			def ValueGet(self, *args):
				firstName = _OVERLAPPY.selected
				if (firstName == ""):
					return
				firstName = _OVERLAPPY.ConvertText(firstName)
				if (self._nameAdd):
					firstName = self._name + firstName
				else:
					firstName = self._name
				# Get attribute
				try:
					_value = c.getAttr(firstName + self._attribute)
					c.floatSliderGrp(self._slider, e=1, v = _value)
				except:
					# print("Can't get value")
					return
				# Marker update
				if (round(_value, 3) != self._value):
					c.button(self._marker, e=1, bgc = self.markerColorChanged)
				else:
					c.button(self._marker, e=1, bgc = self.markerColorDefault)
			def ValueSet(self, *args):
				# Marker update
				_value = c.floatSliderGrp(self._slider, q=1, v=1)
				if (_value != self._value):
					c.button(self._marker, e=1, bgc = self.markerColorChanged)
				else:
					c.button(self._marker, e=1, bgc = self.markerColorDefault)
				# Check selected
				firstName = _OVERLAPPY.selected
				if (firstName == ""):
					return
				# Add suffix or not
				firstName = _OVERLAPPY.ConvertText(firstName)
				if (self._nameAdd):
					firstName = self._name + firstName
				else:
					firstName = self._name
				# Set attribute
				try:
					c.setAttr(firstName + self._attribute, _value)
				except:
					# print("Can't set value")
					pass
			def ValueReset(self, *args):
				c.button(self._marker, e=1, bgc = self.markerColorDefault)
				c.floatSliderGrp(self._slider, e=1, v = self._value)
				self._ccCommand()
			def ValueCheck(self, *args):
				return c.floatSliderGrp(self._slider, q=1, v=1)

		# SIMULATION SETTINGS
		layoutSliders = c.frameLayout(l = "SIMULATION", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.windowHeight))
		ccResetValuesSimulation = self._ValuesResetSimulation
		ccGetValuesSimulation = self._ValuesGetSimulation
		c.button(l = "RESET", c = ccResetValuesSimulation, bgc = OVLP.cYellow)
		c.button(l = "GET", c = ccGetValuesSimulation, bgc = OVLP.cGray)
		c.columnLayout(p = layoutSliders)
		self.sliderParticleRadius = classSlider("Radius", "Shape.radius", OVLP.nameParticle, True, OVLP.particleRadius, 0, 1000, 0, 100, layoutSliders, self._ValuesSetSimulation)
		self.sliderParticleConserve = classSlider("Conserve", "Shape.conserve", OVLP.nameParticle, True, OVLP.particleConserve, 0, 1, 0, 1, layoutSliders, self._ValuesSetSimulation)
		self.sliderParticleDrag = classSlider("Drag", "Shape.drag", OVLP.nameParticle, True, OVLP.particleDrag, 0, 10, 0, 1, layoutSliders, self._ValuesSetSimulation)
		self.sliderParticleDamp = classSlider("Damp", "Shape.damp", OVLP.nameParticle, True, OVLP.particleDamp, 0, 10, 0, 1, layoutSliders, self._ValuesSetSimulation)
		self.sliderGoalSmooth = classSlider("G.Smooth", "Shape.goalSmoothness", OVLP.nameParticle, True, OVLP.goalSmooth, 0, 1000, 0, 10, layoutSliders, self._ValuesSetSimulation)
		self.sliderGoalWeight = classSlider("G.Weight", "Shape.goalWeight[0]", OVLP.nameParticle, True, OVLP.goalWeight, 0, 1, 0, 1, layoutSliders, self._ValuesSetSimulation)
		self.sliderNucleusTimeScale = classSlider("Time Scale", ".timeScale", self.nucleus, False, OVLP.nucleusTimeScale, 0.001, 1000, 0.001, 10, layoutSliders, self._ValuesSetSimulation)
		
		# OFFSET SETTINGS
		layoutOffset = c.frameLayout(l = "OFFSET", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.windowHeight))
		ccResetValuesOffset = self._ValuesResetOffset
		c.button(l = "RESET", c = ccResetValuesOffset, bgc = OVLP.cYellow)
		c.columnLayout(p = layoutOffset)
		self.sliderOffsetX = classSlider("        X", "", "", False, 0, float("inf"), float("inf"), -500, 500, layoutOffset, self._OffsetUpdate)
		self.sliderOffsetY = classSlider("        Y", "", "", False, 0, float("inf"), float("inf"), -500, 500, layoutOffset, self._OffsetUpdate)
		self.sliderOffsetZ = classSlider("        Z", "", "", False, 0, float("inf"), float("inf"), -500, 500, layoutOffset, self._OffsetUpdate)

		# RUN WINDOW
		c.showWindow(OVLP.window_name)
		self.Resize_UI()

	def Resize_UI(self, *args):
		c.window(OVLP.window_name, e = True, h = OVLP.windowHeight, rtf = True)
	def SceneReload(self, *args):
		currentScene = c.file(q = True, sceneName = True)
		if(currentScene):
			c.file(currentScene, open = True, force = True)
		else:
			c.file(new = 1, f = 1)

	### LOGIC
	def ConvertText(self, text, direction=True, *args):
		if (direction):
			_text = text.replace("|", OVLP.replaceSymbol1)
			_text = _text.replace(":", OVLP.replaceSymbol2)
			return _text
		else:
			_text = text.replace(OVLP.replaceSymbol1, "|")
			_text = _text.replace(OVLP.replaceSymbol2, ":")
			return _text
	
	def _Select(self, name="", *args):
		if (name != ""):
			if (c.objExists(name)):
				c.select(name, r=1)
			else: c.warning("'{0}' object doesn't exists".format(name))
		else: c.warning("Can't select 'None'")
	def _SelectObjects(self, *args):
		if (self.selected == ""):
			self._Select()
		else:
			self._Select(self.selected)
	def _SelectParticle(self, *args):
		self._Select(self.particle)
	def _SelectNucleus(self, *args):
		self._Select(self.nucleus)

	def _RunMainLogic(self, *args):
		# Get selected objects
		self.selected = c.ls(sl = 1)
		if (len(self.selected) == 0):
			c.warning("Need to select at least 1 object")
			self.selected = ""
			return
		self.selected = self.selected[0]
		
		# Get min/max anim range time and reset time slider
		self.timeCurrent = c.currentTime(q=1)
		self.timeStart = c.playbackOptions(q=1, min=1)
		self.timeEnd = c.playbackOptions(q=1, max=1)
		c.playbackOptions(e=1, min = self.timeStart, max = self.timeEnd)
		c.currentTime(self.timeStart)

		# Create group
		c.select(cl=1)
		if (c.objExists(OVLP.nameMainGroup)):
			c.delete(OVLP.nameMainGroup)
		c.group(em=1, n = OVLP.nameMainGroup)

		# Run setup logic
		self._CreateSetup(self.selected)
		self._ValuesResetAll()
		
		c.select(self.selected, r = 1)
		self.simulated = True
	def _CreateSetup(self, objCurrent, *args):
		# Names
		_objConverted = self.ConvertText(objCurrent)
		locGoalName = OVLP.nameLocGoal + _objConverted
		locParticleName = OVLP.nameLocParticle + _objConverted
		particleName = OVLP.nameParticle + _objConverted

		# Create locator for goal
		self.locGoal = c.spaceLocator(n = locGoalName)
		c.parent(self.locGoal, OVLP.nameMainGroup)
		c.matchTransform(self.locGoal, objCurrent, pos = True, rot = True)
		c.parentConstraint(objCurrent, self.locGoal, maintainOffset=1)
		c.setAttr(self.locGoal[0] + ".visibility", 0)
		self.positionStartGoal = c.xform(self.locGoal, q=1, t=1)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		self.particle = c.nParticle(n = particleName, position = _position, conserve = 1)[0]
		c.goal(useTransformAsGoal = 1, goal = self.locGoal)
		c.parent(self.particle, OVLP.nameMainGroup)
		self.positionStartParticle = c.xform(self.particle, q=1, t=1)

		# Set simulation attributes
		c.setAttr(self.particle + "Shape.radius", OVLP.particleRadius)
		c.setAttr(self.particle + "Shape.solverDisplay", 1)
		c.setAttr(self.particle + "Shape.conserve", OVLP.particleConserve)
		c.setAttr(self.particle + "Shape.drag", OVLP.particleDrag)
		c.setAttr(self.particle + "Shape.damp", OVLP.particleDamp)
		c.setAttr(self.particle + "Shape.goalSmoothness", OVLP.goalSmooth)
		c.setAttr(self.particle + "Shape.goalWeight[0]", OVLP.goalWeight)

		# Nucleus
		_nucleus = c.ls(type='nucleus')
		self.nucleus = _nucleus[0]
		self.sliderNucleusTimeScale._name = self.nucleus # TODO: double set nucleus logic
		c.setAttr(self.nucleus + ".gravity", 0)
		c.setAttr(self.nucleus + ".timeScale", OVLP.nucleusTimeScale)
		c.setAttr(self.nucleus + ".startFrame", float("inf"))
		c.setAttr(self.nucleus + ".visibility", 0)

		# Create locator for particle
		self.locParticle = c.spaceLocator(n = locParticleName)
		c.parent(self.locParticle, OVLP.nameMainGroup)
		c.matchTransform(self.locParticle, objCurrent, pos = True, rot = True)
		c.connectAttr(self.particle + ".center", self.locParticle[0] + ".translate", f = True)
		c.setAttr(self.locParticle[0] + ".visibility", 0)

	def _ScanObjectsFromScene(self, *args):
		# Check overlappy group
		if (not c.objExists(OVLP.nameMainGroup)):
			c.warning("Overlappy object doesn't exists")
			return
		# Get children of group
		children = c.listRelatives(OVLP.nameMainGroup)
		if (len(children) == 0):
			c.warning("Overlappy object has no children objects")
			return
		# Try to get suffix name
		objectName = ""
		for item in children:
			splitNames = item.split(OVLP.nameLocGoal)
			if (len(splitNames) < 2):
				splitNames = item.split(OVLP.nameLocParticle)
				if (len(splitNames) < 2):
					splitNames = item.split(OVLP.nameParticle)
			lastName = splitNames[-1]
			if (objectName == ""):
				objectName = lastName
			else:
				if (objectName == lastName):
					continue
				else:
					c.warning("Suffix '{0}' don't equals to '{1}'".format(objectName, lastName))
		_converted = self.ConvertText(objectName, False)
		if (c.objExists(_converted)):
			self.selected = _converted
		if (c.objExists(OVLP.nameLocGoal + objectName)):
			self.locGoal = OVLP.nameLocGoal + objectName
		if (c.objExists(OVLP.nameLocParticle + objectName)):
			self.locParticle = OVLP.nameLocParticle + objectName
		if (c.objExists(OVLP.nameParticle + objectName)):
			self.particle = OVLP.nameParticle + objectName
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			self.nucleus = _nucleus[0]
			self.sliderNucleusTimeScale._name = self.nucleus # TODO: double set nucleus logic

	def _ValuesSetSimulation(self, *args):
		self.sliderParticleRadius.ValueSet()
		self.sliderParticleConserve.ValueSet()
		self.sliderParticleDrag.ValueSet()
		self.sliderParticleDamp.ValueSet()
		self.sliderGoalSmooth.ValueSet()
		self.sliderGoalWeight.ValueSet()
		self.sliderNucleusTimeScale.ValueSet()
	def _ValuesSetOffset(self, *args):
		self.sliderOffsetX.ValueSet()
		self.sliderOffsetY.ValueSet()
		self.sliderOffsetZ.ValueSet()
	
	def _ValuesGetSimulation(self, *args):
		self.sliderParticleConserve.ValueGet()
		self.sliderParticleDrag.ValueGet()
		self.sliderParticleDamp.ValueGet()
		self.sliderGoalSmooth.ValueGet()
		self.sliderGoalWeight.ValueGet()
		self.sliderNucleusTimeScale.ValueGet()
	
	def _ValuesResetAll(self, *args):
		self.sliderParticleRadius.ValueReset()
		self._ValuesResetSimulation()
		self._ValuesResetOffset()
	def _ValuesResetSimulation(self, *args):
		self.sliderParticleConserve.ValueReset()
		self.sliderParticleDrag.ValueReset()
		self.sliderParticleDamp.ValueReset()
		self.sliderGoalSmooth.ValueReset()
		self.sliderGoalWeight.ValueReset()
		self.sliderNucleusTimeScale.ValueReset()
		self._ValuesSetSimulation()
	def _ValuesResetOffset(self, *args):
		self.sliderOffsetX.ValueReset()
		self.sliderOffsetY.ValueReset()
		self.sliderOffsetZ.ValueReset()
		self._ValuesSetOffset()
	
	def _Cleanup(self, *args):
		_selected = self.selected
		self.selected = ""
		self.locGoal = ""
		self.locParticle = ""
		self.particle = ""
		self.nucleus = ""
		# Revert cached timeslider
		if (self.simulated):
			self.simulated = False
			c.currentTime(self.timeCurrent)
		# Delete group
		if (c.objExists(OVLP.nameMainGroup)):
			c.delete(OVLP.nameMainGroup)
		# Delete nucleus node # TODO checkbox
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			c.delete(_nucleus)
		# Select cached objects
		try:
			c.select(_selected, r=1) # TODO checkbox
		except:
			pass
		# c.select(cl=1)

	def _OffsetUpdate(self, *args):
		self._ValuesSetOffset()
		if (self.selected == ""):
			return
		c.currentTime(self.timeStart)
		# Get values from sliders
		values = [0, 0, 0]
		values[0] = self.sliderOffsetX.ValueCheck()
		values[1] = self.sliderOffsetY.ValueCheck()
		values[2] = self.sliderOffsetZ.ValueCheck()
		# Set locGoal constraint offset
		_goalAttributes = [0, 0, 0]
		_goalAttributes[0] = self.locGoal[0] + "_parentConstraint1.target[0].targetOffsetTranslateX"
		_goalAttributes[1] = self.locGoal[0] + "_parentConstraint1.target[0].targetOffsetTranslateY"
		_goalAttributes[2] = self.locGoal[0] + "_parentConstraint1.target[0].targetOffsetTranslateZ"
		c.setAttr(_goalAttributes[0], values[0])
		c.setAttr(_goalAttributes[1], values[1])
		c.setAttr(_goalAttributes[2], values[2])
		# Get offset
		_goalPosition = c.xform(self.locGoal, q=1, t=1)
		_goalOffset = [0, 0, 0]
		_goalOffset[0] = self.positionStartGoal[0] - _goalPosition[0]
		_goalOffset[1] = self.positionStartGoal[1] - _goalPosition[1]
		_goalOffset[2] = self.positionStartGoal[2] - _goalPosition[2]
		# Set particle attributes
		_particleAttributes = [0, 0, 0]
		_particleAttributes[0] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateX"
		_particleAttributes[1] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateY"
		_particleAttributes[2] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateZ"
		c.setAttr(_particleAttributes[0], self.positionStartParticle[0] - _goalOffset[0])
		c.setAttr(_particleAttributes[1], self.positionStartParticle[1] - _goalOffset[1])
		c.setAttr(_particleAttributes[2], self.positionStartParticle[2] - _goalOffset[2])

	### EXECUTION
	def Start(self, *args):
		_OVERLAPPY.CreateUI()
	def Restart(self, *args):
		c.evalDeferred("_OVERLAPPY.Start()")

_OVERLAPPY = OVLP()
_OVERLAPPY.Start()