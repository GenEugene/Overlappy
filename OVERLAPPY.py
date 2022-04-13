# Overlappy v0.2.0 for Maya 2022
# Author Eugene Gataulin (GenEugene) tek94@mail.ru tek942@gmail.com
# https://github.com/GenEugene/Overlappy

import maya.cmds as c
# import sys, os
# import maya.mel as mel

class OVLP:
	# NAMING
	textTitle = "Overlappy v0.2.0"
	nameWindow = "__OverlappyWindow__"
	#
	nameGroup = "_OverlappyGroup_"
	nameLocGoal = "_locGoal_"
	nameLocTarget = "_locTarget_"
	nameLocAim = "_locAim_"
	nameParticle = "_particle_"
	#
	replaceSymbol1 = "_R1S_" # for "|"
	replaceSymbol2 = "_R2S_" # for ":"

	# WINDOW
	windowWidth = 330
	windowHeight = 28
	# SLIDERS
	sliderWidth1 = 60
	sliderWidth2 = 60
	sliderWidth3 = 10
	markerWidth = 6

	# SETTINGS # TODO: move to preset
	particleRadius = 20
	particleConserve = 1
	particleDrag = 0.01
	particleDamp = 0
	goalSmooth = 3
	goalWeight = 0.5
	nucleusTimeScale = 1
	
	# SLIDERS field min/max, slider min/max
	rangePRadius = [0, float("inf"), 0, 40]
	rangePConserve = [0, 1, 0, 1]
	rangePDrag = [0, 10, 0, 1]
	rangePDamp = [0, 10, 0, 1]
	rangeGSmooth = [0, 100, 0, 10]
	rangeGWeight = [0, 1, 0, 1]
	rangeNTimeScale = [0.001, 100, 0.001, 4]
	rangeOffsetX = [float("-inf"), float("inf"), -100, 100]
	rangeOffsetY = [float("-inf"), float("inf"), -100, 100]
	rangeOffsetZ = [float("-inf"), float("inf"), -100, 100]

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
		self.locTarget = ""
		self.locAimHidden = ""
		self.locAim = ""
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
		self.sliderPRadius = None
		self.sliderPConserve = None
		self.sliderPDrag = None
		self.sliderPDamp = None
		self.sliderGSmooth = None
		self.sliderGWeight = None
		self.sliderNTimeScale = None
		self.sliderOffsetX = None
		self.sliderOffsetY = None
		self.sliderOffsetZ = None
	def CreateUI(self):
		# WINDOW
		if c.window(OVLP.nameWindow, exists = True):
			c.deleteUI(OVLP.nameWindow)
		c.window(OVLP.nameWindow, title = OVLP.textTitle, mxb = 0, s = 0)
		c.window(OVLP.nameWindow, e = True, rtf = True, wh = (OVLP.windowWidth, OVLP.windowHeight))
		self.layoutMain = c.columnLayout(adj = True, h = OVLP.windowHeight)

		# HEAD MENU
		c.menuBarLayout()
		c.menu(label = 'Scene')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.SceneReload)
		c.menu(label = 'Script')
		c.menuItem(label = 'Reload', c = _OVERLAPPY.Restart)
		
		# BUTTONS
		frameButtons = c.frameLayout(l = "BUTTONS", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)

		# SETUP
		c.gridLayout(numberOfColumns = 3, cellWidthHeight = (OVLP.windowWidth / 3, OVLP.windowHeight), p = frameButtons)
		ccResetSliders = self._ValuesResetAll
		ccDeleteSetup = self._DeleteSetup
		ccInitSetup = self._InitSetup
		c.button(l = "RESET SLIDERS", c = ccResetSliders, bgc = OVLP.cYellow)
		c.button(l = "DELETE SETUP", c = ccDeleteSetup, bgc = OVLP.cRed)
		c.button(l = "CREATE SETUP", c = ccInitSetup, bgc = OVLP.cGreen)
		# c.button(l = "", enable=0)
		
		# SELECT
		c.gridLayout(numberOfColumns = 6, cellWidthHeight = (OVLP.windowWidth / 6, OVLP.windowHeight), p = frameButtons)
		ccScan = self._ScanObjectsFromScene
		ccSelectObjects = self._SelectObjects
		ccSelectParticle = self._SelectParticle
		ccSelectNucleus = self._SelectNucleus
		ccSelectTarget = self._SelectTarget
		ccSelectAim = self._SelectAim
		c.button(l = "SCAN", c = ccScan, bgc = OVLP.cBlue)
		c.button(l = "OBJECTS", c = ccSelectObjects, bgc = OVLP.cLBlue)
		c.button(l = "PARTICLE", c = ccSelectParticle, bgc = OVLP.cLBlue)
		c.button(l = "NUCLEUS", c = ccSelectNucleus, bgc = OVLP.cLBlue)
		c.button(l = "TARGET", c = ccSelectTarget, bgc = OVLP.cLBlue)
		c.button(l = "AIM", c = ccSelectAim, bgc = OVLP.cLBlue)

		# BAKING
		# frameBaking = c.frameLayout(l = "BAKING", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 6, cellWidthHeight = (OVLP.windowWidth / 6, OVLP.windowHeight), p = frameButtons)
		c.button(l = "OBJECT", bgc = OVLP.cOrange)
		c.button(l = "TARGET", bgc = OVLP.cOrange)
		c.button(l = "AIM", bgc = OVLP.cOrange)
		c.button(l = "SELECTED", bgc = OVLP.cOrange)
		c.button(l = "LOCATOR", bgc = OVLP.cOrange)
		c.button(l = "LAYER", bgc = OVLP.cOrange)

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
		self.sliderPRadius = classSlider("Radius", "Shape.radius", OVLP.nameParticle, True, OVLP.particleRadius, OVLP.rangePRadius[0], OVLP.rangePRadius[1], OVLP.rangePRadius[2], OVLP.rangePRadius[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderPConserve = classSlider("Conserve", "Shape.conserve", OVLP.nameParticle, True, OVLP.particleConserve, OVLP.rangePConserve[0], OVLP.rangePConserve[1], OVLP.rangePConserve[2], OVLP.rangePConserve[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderPDrag = classSlider("Drag", "Shape.drag", OVLP.nameParticle, True, OVLP.particleDrag, OVLP.rangePDrag[0], OVLP.rangePDrag[1], OVLP.rangePDrag[2], OVLP.rangePDrag[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderPDamp = classSlider("Damp", "Shape.damp", OVLP.nameParticle, True, OVLP.particleDamp, OVLP.rangePDamp[0], OVLP.rangePDamp[1], OVLP.rangePDamp[2], OVLP.rangePDamp[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderGSmooth = classSlider("G.Smooth", "Shape.goalSmoothness", OVLP.nameParticle, True, OVLP.goalSmooth, OVLP.rangeGSmooth[0], OVLP.rangeGSmooth[1], OVLP.rangeGSmooth[2], OVLP.rangeGSmooth[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderGWeight = classSlider("G.Weight", "Shape.goalWeight[0]", OVLP.nameParticle, True, OVLP.goalWeight, OVLP.rangeGWeight[0], OVLP.rangeGWeight[1], OVLP.rangeGWeight[2], OVLP.rangeGWeight[3], layoutSliders, self._ValuesSetSimulation)
		self.sliderNTimeScale = classSlider("Time Scale", ".timeScale", self.nucleus, False, OVLP.nucleusTimeScale, OVLP.rangeNTimeScale[0], OVLP.rangeNTimeScale[1], OVLP.rangeNTimeScale[2], OVLP.rangeNTimeScale[3], layoutSliders, self._ValuesSetSimulation)
		
		# OFFSET SETTINGS
		layoutOffset = c.frameLayout(l = "OFFSET", p = self.layoutMain, collapsable = 1, borderVisible = 1, cc = self.Resize_UI, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.windowHeight))
		ccResetValuesOffset = self._ValuesResetOffset
		c.button(l = "RESET", c = ccResetValuesOffset, bgc = OVLP.cYellow)
		c.columnLayout(p = layoutOffset)
		self.sliderOffsetX = classSlider("        X", "", "", False, 0, OVLP.rangeOffsetX[0], OVLP.rangeOffsetX[1], OVLP.rangeOffsetX[2], OVLP.rangeOffsetX[3], layoutOffset, self._OffsetUpdate)
		self.sliderOffsetY = classSlider("        Y", "", "", False, 0, OVLP.rangeOffsetY[0], OVLP.rangeOffsetY[1], OVLP.rangeOffsetY[2], OVLP.rangeOffsetY[3], layoutOffset, self._OffsetUpdate)
		self.sliderOffsetZ = classSlider("        Z", "", "", False, 0, OVLP.rangeOffsetZ[0], OVLP.rangeOffsetZ[1], OVLP.rangeOffsetZ[2], OVLP.rangeOffsetZ[3], layoutOffset, self._OffsetUpdate)

		# RUN WINDOW
		c.showWindow(OVLP.nameWindow)
		self.Resize_UI()

	def Resize_UI(self, *args):
		c.window(OVLP.nameWindow, e = True, h = OVLP.windowHeight, rtf = True)
	def SceneReload(self, *args):
		currentScene = c.file(q = True, sceneName = True)
		if(currentScene):
			c.file(currentScene, open = True, force = True)
		else:
			c.file(new = 1, f = 1)

	def ConvertText(self, text, direction=True, *args):
		if (direction):
			_text = text.replace("|", OVLP.replaceSymbol1)
			_text = _text.replace(":", OVLP.replaceSymbol2)
			return _text
		else:
			_text = text.replace(OVLP.replaceSymbol1, "|")
			_text = _text.replace(OVLP.replaceSymbol2, ":")
			return _text

	### LOGIC
	def _InitSetup(self, *args):
		self._DeleteSetup(False)
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
		if (c.objExists(OVLP.nameGroup)):
			c.delete(OVLP.nameGroup)
		c.group(em=1, n = OVLP.nameGroup)

		# Run setup logic
		self._CreateSetup(self.selected)
		# self._ValuesResetAll()
		self._OffsetUpdate()
		
		c.select(self.selected, r = 1)
		self.simulated = True
	def _CreateSetup(self, objCurrent, *args):
		# Names
		_objConverted = self.ConvertText(objCurrent)
		nameLocGoal = OVLP.nameLocGoal + _objConverted
		nameLocParticle = OVLP.nameLocTarget + _objConverted
		nameParticle = OVLP.nameParticle + _objConverted
		nameLocAim = OVLP.nameLocAim + _objConverted

		# Create locator for goal
		self.locGoal = c.spaceLocator(n = nameLocGoal)[0]
		c.parent(self.locGoal, OVLP.nameGroup)
		c.matchTransform(self.locGoal, objCurrent, pos = True, rot = True)
		c.parentConstraint(objCurrent, self.locGoal, maintainOffset=1)
		c.setAttr(self.locGoal + ".visibility", 0)
		self.positionStartGoal = c.xform(self.locGoal, q=1, t=1)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		self.particle = c.nParticle(n = nameParticle, position = _position, conserve = 1)[0]
		c.goal(useTransformAsGoal = 1, goal = self.locGoal)
		c.parent(self.particle, OVLP.nameGroup)
		self.positionStartParticle = c.xform(self.particle, q=1, t=1)

		# Set simulation attributes
		c.setAttr(self.particle + "Shape.radius", self.sliderPRadius.ValueCheck())
		c.setAttr(self.particle + "Shape.solverDisplay", 1)
		c.setAttr(self.particle + "Shape.conserve", self.sliderPConserve.ValueCheck())
		c.setAttr(self.particle + "Shape.drag", self.sliderPDrag.ValueCheck())
		c.setAttr(self.particle + "Shape.damp", self.sliderPDamp.ValueCheck())
		c.setAttr(self.particle + "Shape.goalSmoothness", self.sliderGSmooth.ValueCheck())
		c.setAttr(self.particle + "Shape.goalWeight[0]", self.sliderGWeight.ValueCheck())

		# Nucleus detection
		_nucleus = c.ls(type='nucleus')
		self.nucleus = _nucleus[0]
		self.sliderNTimeScale._name = self.nucleus # TODO: double set nucleus logic
		c.setAttr(self.nucleus + ".gravity", 0)
		c.setAttr(self.nucleus + ".timeScale", self.sliderNTimeScale.ValueCheck())
		c.setAttr(self.nucleus + ".startFrame", float("inf"))
		c.setAttr(self.nucleus + ".visibility", 0)

		# Create and connect locator to particle
		self.locTarget = c.spaceLocator(n = nameLocParticle)[0]
		c.parent(self.locTarget, OVLP.nameGroup)
		c.matchTransform(self.locTarget, objCurrent, pos = True, rot = True)
		c.connectAttr(self.particle + ".center", self.locTarget + ".translate", f = True)
		c.setAttr(self.locTarget + ".visibility", 0)

		# Create base aim locator
		_locAimBase = c.spaceLocator(n = "Base" + nameLocAim)
		c.parent(_locAimBase, OVLP.nameGroup)
		c.matchTransform(_locAimBase, objCurrent, position = True, rotation = True)
		c.parentConstraint(objCurrent, _locAimBase, maintainOffset = True)
		# c.setAttr(_locAimBase[0] + ".visibility", 0)

		# Create hidden aim locator
		self.locAimHidden = c.spaceLocator(n = "Hidden" + nameLocAim)[0]
		c.matchTransform(self.locAimHidden, _locAimBase, pos = True, rot = True)
		c.parent(self.locAimHidden, _locAimBase)
		c.aimConstraint(self.locTarget, self.locAimHidden, weight = 1, aimVector = (0, 1, 0), upVector = (0, 1, 0), worldUpType = "vector", worldUpVector = (0, 0, 1))
		
		# Create aim locator
		self.locAim = c.spaceLocator(n = nameLocAim)[0]
		c.matchTransform(self.locAim, _locAimBase, pos = True, rot = True)
		c.parent(self.locAim, _locAimBase)
		c.setAttr(self.locAim + "Shape.localScaleX", 50)#
		c.setAttr(self.locAim + "Shape.localScaleY", 50)#
		c.setAttr(self.locAim + "Shape.localScaleZ", 50)#
	def _DeleteSetup(self, deselect=True, *args):
		# _selected = self.selected
		self.selected = ""
		self.locAim = ""
		self.locGoal = ""
		self.locTarget = ""
		self.particle = ""
		self.nucleus = ""
		# Revert cached timeslider
		# if (self.simulated):
		# 	self.simulated = False
		# 	c.currentTime(self.timeCurrent)
		# Delete group
		if (c.objExists(OVLP.nameGroup)):
			c.delete(OVLP.nameGroup)
		# Delete nucleus node # TODO checkbox
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			c.delete(_nucleus)
		# Select cached objects
		# try:
		# 	c.select(_selected, r=1) # TODO checkbox
		# except:
		# 	pass
		if (deselect):
			c.select(cl=1)

	def _ScanObjectsFromScene(self, *args):
		# Check overlappy group
		if (not c.objExists(OVLP.nameGroup)):
			c.warning("Overlappy object doesn't exists")
			return
		# Get children of group
		children = c.listRelatives(OVLP.nameGroup)
		if (len(children) == 0):
			c.warning("Overlappy object has no children objects")
			return
		# Try to get suffix name
		objectName = ""
		for item in children:
			splitNames = item.split(OVLP.nameLocAim)
			if (len(splitNames) < 2):
				splitNames = item.split(OVLP.nameLocGoal)
				if (len(splitNames) < 2):
					splitNames = item.split(OVLP.nameLocTarget)
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
		if (c.objExists(OVLP.nameLocAim + objectName)):
			self.locAim = OVLP.nameLocAim + objectName
		if (c.objExists(OVLP.nameLocGoal + objectName)):
			self.locGoal = OVLP.nameLocGoal + objectName
		if (c.objExists(OVLP.nameLocTarget + objectName)):
			self.locTarget = OVLP.nameLocTarget + objectName
		if (c.objExists(OVLP.nameParticle + objectName)):
			self.particle = OVLP.nameParticle + objectName
		_nucleus = c.ls(type='nucleus')
		if (len(_nucleus) > 0):
			self.nucleus = _nucleus[0]
			self.sliderNTimeScale._name = self.nucleus # TODO: double set nucleus logic

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
	def _SelectTarget(self, *args):
		self._Select(self.locTarget)
	def _SelectAim(self, *args):
		self._Select(self.locAim)

	def _ValuesSetSimulation(self, *args):
		self.sliderPRadius.ValueSet()
		self.sliderPConserve.ValueSet()
		self.sliderPDrag.ValueSet()
		self.sliderPDamp.ValueSet()
		self.sliderGSmooth.ValueSet()
		self.sliderGWeight.ValueSet()
		self.sliderNTimeScale.ValueSet()
	def _ValuesSetOffset(self, *args):
		self.sliderOffsetX.ValueSet()
		self.sliderOffsetY.ValueSet()
		self.sliderOffsetZ.ValueSet()
	
	def _ValuesGetSimulation(self, *args):
		self.sliderPConserve.ValueGet()
		self.sliderPDrag.ValueGet()
		self.sliderPDamp.ValueGet()
		self.sliderGSmooth.ValueGet()
		self.sliderGWeight.ValueGet()
		self.sliderNTimeScale.ValueGet()
	
	def _ValuesResetAll(self, *args):
		self.sliderPRadius.ValueReset()
		self._ValuesResetSimulation()
		self._ValuesResetOffset()
	def _ValuesResetSimulation(self, *args):
		self.sliderPConserve.ValueReset()
		self.sliderPDrag.ValueReset()
		self.sliderPDamp.ValueReset()
		self.sliderGSmooth.ValueReset()
		self.sliderGWeight.ValueReset()
		self.sliderNTimeScale.ValueReset()
		self._ValuesSetSimulation()
	def _ValuesResetOffset(self, *args):
		self.sliderOffsetX.ValueReset()
		self.sliderOffsetY.ValueReset()
		self.sliderOffsetZ.ValueReset()
		self._ValuesSetOffset()
	
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
		_goalAttributes[0] = self.locGoal + "_parentConstraint1.target[0].targetOffsetTranslateX"
		_goalAttributes[1] = self.locGoal + "_parentConstraint1.target[0].targetOffsetTranslateY"
		_goalAttributes[2] = self.locGoal + "_parentConstraint1.target[0].targetOffsetTranslateZ"
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
		# Reconstrain aim locator to hidden aim
		c.setAttr(self.locAim + ".rotateX", 0)
		c.setAttr(self.locAim + ".rotateY", 0)
		c.setAttr(self.locAim + ".rotateZ", 0)
		c.orientConstraint(self.locAimHidden, self.locAim, maintainOffset = True)

	### EXECUTION
	def Start(self, *args):
		_OVERLAPPY.CreateUI()
	def Restart(self, *args):
		c.evalDeferred("_OVERLAPPY.Start()")

_OVERLAPPY = OVLP()
_OVERLAPPY.Start()