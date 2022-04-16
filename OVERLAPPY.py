# Overlappy v0.2.0 for Maya 2022
# Author Eugene Gataulin (GenEugene) tek94@mail.ru tek942@gmail.com
# https://github.com/GenEugene/Overlappy

import maya.cmds as c
from math import pow, sqrt
# import sys, os
# import maya.mel as mel

class OVLP:
	# NAMING
	textTitle = "OVERLAPPY v0.2.0"
	nameWindowMain = "__OverlappyWindow__"
	nameGroup = "_OverlappyGroup_"
	#
	nameLocGoalTarget = ("_locGoal_", "_locTarget_")
	nameLocAim = ("_locAimBase_", "_locAimHidden_", "_locAim_")
	nameParticle = "_particle_"
	nameLoft = ("_loftStart_", "_loftEnd_", "_loftShape_")
	#
	nameBakedWorldLocator = ("BakedWorldLocator_")
	#
	replaceSymbols = ("_R1S_", "_R2S_") # for "|" and ":"
	# WINDOW
	windowWidth = 330
	windowHeight = 27
	lineHeight = 30
	sliderWidth = (60, 60, 10)
	markerWidth = 6
	# LOFT
	loftFactor = 0.9
	loftMinDistance = 5
	# SIMULATION SETTINGS # TODO: move to preset
	particleRadius = 20
	particleConserve = 1
	particleDrag = 0.01
	particleDamp = 0
	goalSmooth = 3
	goalWeight = 0.5
	nucleusTimeScale = 1
	# SLIDERS (field min/max, slider min/max)
	rangePRadius = (0, float("inf"), 0, 40)
	rangePConserve = (0, 1, 0, 1)
	rangePDrag = (0, 10, 0, 1)
	rangePDamp = (0, 10, 0, 1)
	rangeGSmooth = (0, 100, 0, 10)
	rangeGWeight = (0, 1, 0, 1)
	rangeNTimeScale = (0.001, 100, 0.001, 4)
	rangeOffsetX = (float("-inf"), float("inf"), -100, 100)
	rangeOffsetY = (float("-inf"), float("inf"), -100, 100)
	rangeOffsetZ = (float("-inf"), float("inf"), -100, 100)
	# COLORS
	cLRed = (1, .7, .7)
	cRed = (1, .5, .5)
	cLOrange = (1, .75, .45)
	cOrange = (1, .6, .3)
	cYellow = (1, 1, .5)
	cGreen = (.6, 1, .6)
	cLBlue = (.5, .9, 1)
	cBlue = (.3, .7, 1)
	cPurple = (.81, .4, 1)
	cWhite = (1, 1, 1)
	cGray = (.5, .5, .5)
	cDarkGray = (.3, .3, .3)
	cBlack = (.15, .15, .15)
	# CONSTANTS
	attrT = ["translateX", "translateY", "translateZ"]
	attrR = ["rotateX", "rotateY", "rotateZ"]

	### MAIN
	def __init__(self):
		# VALUES
		self.time = [0, 0, 0] # min, max, current
		self.startPositionGoalParticle = [None, (0, 0, 0)]
		# OBJECTS
		self.selected = ""
		self.locGoalTarget = ["", ""]
		self.locAim = ["", "", ""]
		self.particle = ""
		self.nucleus = ""
		self.loft = ["", "", ""]
		# LAYOUTS
		self.windowMain = None
		self.layoutMain = None
		self.layoutButtons = None
		self.layoutBaking = None
		self.layoutOptions = None
		self.layoutSimulation = None
		self.layoutOffset = None
		self.layoutDevTools = None
		# CHECKBOXES
		self.checkboxCleanup = None
		# SLIDERS
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
		if c.window(OVLP.nameWindowMain, exists = True):
			c.deleteUI(OVLP.nameWindowMain)
		self.windowMain = c.window(OVLP.nameWindowMain, title = OVLP.textTitle, maximizeButton = 0, sizeable = 0, resizeToFitChildren = 1, widthHeight = (OVLP.windowWidth, OVLP.windowHeight * 6), closeCommand = self.Cleanup)
		self.layoutMain = c.columnLayout(adj = True, h = OVLP.windowHeight)

		# HEAD MENU
		c.menuBarLayout()
		#
		# c.menu(label = "Settings")
		# c.menuItem(label = "Save")
		# c.menuItem(label = "Save as")
		# c.menuItem(label = "Load")
		# c.menuItem(divider = 1)
		# c.menuItem(label = "Reset")
		#
		c.menu(label = "Scene")
		c.menuItem(label = "Reload", c = self.SceneReload)
		c.menuItem(dividerLabel = "Be careful", divider = 1)
		c.menuItem(label = "Quit", c = self.SceneQuit)
		#
		c.menu(label = "Script")
		c.menuItem(label = "Reload", c = self.Restart)
		c.menuItem(dividerLabel = "Layouts", divider = 1)
		c.menuItem(label = "Collapse all", c = self.LayoutsCollapse)
		c.menuItem(label = "Expand all", c = self.LayoutsExpand)
		c.menuItem(dividerLabel = "Other", divider = 1)
		c.menuItem(label = "Dev Tools toggle", c = self.LayoutDevToolsToggle)
		#
		def LinkGithub(self): c.showHelp("https://github.com/GenEugene/Overlappy", absolute = True)
		def LinkYoutube(self): c.showHelp("https://www.youtube.com/channel/UCCIzdVu6RMqUoOmxHoOEPAQ", absolute = True)
		def LinkReport(self): c.showHelp("https://github.com/GenEugene/Overlappy/discussions/categories/report-a-problem", absolute = True)
		c.menu(label = "Help")
		# c.menuItem(label = "About Overlappy") # TODO add window with information
		c.menuItem(dividerLabel = "Links", divider = 1)
		c.menuItem(label = "GitHub", c = LinkGithub)
		c.menuItem(label = "YouTube", c = LinkYoutube)
		c.menuItem(dividerLabel = "Support", divider = 1)
		c.menuItem(label = "Report a Problem...", c = LinkReport)
		
		# BUTTONS
		self.layoutButtons = c.frameLayout(l = "BUTTONS", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack)
		# SETUP
		c.gridLayout(p = self.layoutButtons, numberOfColumns = 4, cellWidthHeight = (OVLP.windowWidth / 4, OVLP.lineHeight))
		ccResetAllValues = self._ResetAllValues
		ccSetupDelete = self._SetupDelete
		ccSetupScan = self._SetupScan
		ccSetupInit = self._SetupInit
		c.button(l = "RESET ALL", c = ccResetAllValues, bgc = OVLP.cYellow)
		c.button(l = "DELETE SETUP", c = ccSetupDelete, bgc = OVLP.cRed)
		c.button(l = "SCAN SETUP", c = ccSetupScan, bgc = OVLP.cBlue)
		c.button(l = "CREATE SETUP", c = ccSetupInit, bgc = OVLP.cGreen)
		# SELECT
		c.gridLayout(p = self.layoutButtons, numberOfColumns = 5, cellWidthHeight = (OVLP.windowWidth / 5, OVLP.lineHeight))
		ccSelectObjects = self._SelectObjects
		ccSelectParticle = self._SelectParticle
		ccSelectNucleus = self._SelectNucleus
		ccSelectTarget = self._SelectTarget
		ccSelectAim = self._SelectAim
		c.button(l = "OBJECTS", c = ccSelectObjects, bgc = OVLP.cLBlue)
		c.button(l = "PARTICLE", c = ccSelectParticle, bgc = OVLP.cLBlue)
		c.button(l = "NUCLEUS", c = ccSelectNucleus, bgc = OVLP.cLBlue)
		c.button(l = "TARGET", c = ccSelectTarget, bgc = OVLP.cLBlue)
		c.button(l = "AIM", c = ccSelectAim, bgc = OVLP.cLBlue)

		# BAKING
		self.layoutBaking = c.frameLayout(l = "BAKING", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack)
		#
		c.gridLayout(p = self.layoutBaking, numberOfColumns = 3, cellWidthHeight = (OVLP.windowWidth / 3, OVLP.lineHeight))
		ccBakeTranslation = self._BakeToTranslation
		ccBakeTranslationOffset = self._BakeToTranslationOffset
		ccBakeRotation = self._BakeToRotation
		c.button(l = "TRANSLATION", c = ccBakeTranslation, bgc = OVLP.cLOrange)
		c.button(l = "<<< OFFSET", c = ccBakeTranslationOffset, bgc = OVLP.cLOrange)
		c.button(l = "ROTATION", c = ccBakeRotation, bgc = OVLP.cLOrange)
		#
		c.gridLayout(p = self.layoutBaking, numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.lineHeight))
		ccBakeToWorldLoc = self._BakeToWorldLocator
		c.button(l = "TO WORLD LOCATOR", c = ccBakeToWorldLoc, bgc = OVLP.cOrange)
		c.button(l = "FROM SELECTED TO SELECTED", bgc = OVLP.cOrange, en = 0)

		# OPTIONS
		self.layoutOptions = c.frameLayout(l = "OPTIONS", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack)
		c.gridLayout(p = self.layoutOptions, numberOfColumns = 5, cellWidthHeight = (OVLP.windowWidth / 5, OVLP.lineHeight))
		self.checkboxCleanup = c.checkBox(l = "Cleanup", v = 1)
		c.checkBox(l = "To Layer", v = 1, en = 0)
		c.checkBox(l = "Loop", en = 0)
		# c.checkBox(l = "Label")
		# c.checkBox(l = "Label")
		# c.radioButton(l = "radio1", onCommand = 'print("onCommand 1 start")', offCommand = 'print("offCommand 1 end")')

		# SLIDER CLASS
		class classSlider: # TODO need refactoring
			def __init__(self, label="label", attribute="", name="", nameAdd=True, value=1, fieldMin=0, fieldMax=1, min=0, max=1, parent=self.layoutMain, command="", precision=3, submenuReset=True, submenuGet=True):
				self._attribute = attribute
				self._name = name
				self._nameAdd = nameAdd
				self._value = value
				self._ccCommand = command
				self._precision = precision
				self.markerColorDefault = OVLP.cGray
				self.markerColorChanged = OVLP.cBlue
				self.valueCached = 0;
				c.flowLayout(p=parent)
				self._slider = c.floatSliderGrp(l = " " + label, v = self._value, cc = self._ccCommand, dc = self._ccCommand, fmn = fieldMin, fmx = fieldMax, min = min, max = max, field=1, precision = self._precision, width = OVLP.windowWidth - OVLP.markerWidth, columnAlign = (1, "left"), columnWidth3 = (OVLP.sliderWidth[0], OVLP.sliderWidth[1], OVLP.sliderWidth[2]), enableKeyboardFocus = 1)
				c.popupMenu(p = self._slider)
				if (submenuReset):
					c.menuItem(l = "reset", c = self.ValueReset)
				if (submenuGet):
					c.menuItem(l = "get value", c = self.ValueGet)
				self._marker = c.button(l = "", enable = 0, w = OVLP.markerWidth, bgc = self.markerColorDefault)
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
					# print(firstName + self._attribute)
					_value = c.getAttr(firstName + self._attribute)
					c.floatSliderGrp(self._slider, e = 1, v = _value)
				except:
					# print("Can't get value")
					return
				# Marker update
				if (round(_value, 3) != self._value):
					c.button(self._marker, e = 1, bgc = self.markerColorChanged)
				else:
					c.button(self._marker, e = 1, bgc = self.markerColorDefault)
			def ValueSet(self, value=None, *args):
				if (value == None): _value = c.floatSliderGrp(self._slider, q = 1, v = 1)
				else:
					_value = value
					c.floatSliderGrp(self._slider, e = 1, v = _value)
					self._ccCommand()
				# Marker update
				if (_value != self._value):
					c.button(self._marker, e = 1, bgc = self.markerColorChanged)
				else:
					c.button(self._marker, e = 1, bgc = self.markerColorDefault)
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
				c.button(self._marker, e = 1, bgc = self.markerColorDefault)
				c.floatSliderGrp(self._slider, e = 1, v = self._value)
				self._ccCommand()
			def ValueCheck(self, *args):
				return c.floatSliderGrp(self._slider, q = 1, v = 1)
			def ValueCachedGet(self, *args):
				return self.valueCached
			def ValueCachedSet(self, *args):
				self.valueCached = c.floatSliderGrp(self._slider, q = 1, v = 1)
			def ValueCachedReset(self, *args):
				self.valueCached = 0

		# SIMULATION SETTINGS
		self.layoutSimulation = c.frameLayout(l = "SIMULATION", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.lineHeight))
		ccResetSimulation = self._ResetSimulation
		ccGetSimulation = self._GetSimulation
		c.button(l = "RESET", c = ccResetSimulation, bgc = OVLP.cYellow)
		c.button(l = "GET", c = ccGetSimulation, bgc = OVLP.cGray)
		c.columnLayout(p = self.layoutSimulation)
		self.sliderPRadius = classSlider("Radius", "Shape.radius", OVLP.nameParticle, True, OVLP.particleRadius, OVLP.rangePRadius[0], OVLP.rangePRadius[1], OVLP.rangePRadius[2], OVLP.rangePRadius[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderPConserve = classSlider("Conserve", "Shape.conserve", OVLP.nameParticle, True, OVLP.particleConserve, OVLP.rangePConserve[0], OVLP.rangePConserve[1], OVLP.rangePConserve[2], OVLP.rangePConserve[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderPDrag = classSlider("Drag", "Shape.drag", OVLP.nameParticle, True, OVLP.particleDrag, OVLP.rangePDrag[0], OVLP.rangePDrag[1], OVLP.rangePDrag[2], OVLP.rangePDrag[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderPDamp = classSlider("Damp", "Shape.damp", OVLP.nameParticle, True, OVLP.particleDamp, OVLP.rangePDamp[0], OVLP.rangePDamp[1], OVLP.rangePDamp[2], OVLP.rangePDamp[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderGSmooth = classSlider("G.Smooth", "Shape.goalSmoothness", OVLP.nameParticle, True, OVLP.goalSmooth, OVLP.rangeGSmooth[0], OVLP.rangeGSmooth[1], OVLP.rangeGSmooth[2], OVLP.rangeGSmooth[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderGWeight = classSlider("G.Weight", "Shape.goalWeight[0]", OVLP.nameParticle, True, OVLP.goalWeight, OVLP.rangeGWeight[0], OVLP.rangeGWeight[1], OVLP.rangeGWeight[2], OVLP.rangeGWeight[3], self.layoutSimulation, self._ValuesSetSimulation)
		self.sliderNTimeScale = classSlider("Time Scale", ".timeScale", self.nucleus, False, OVLP.nucleusTimeScale, OVLP.rangeNTimeScale[0], OVLP.rangeNTimeScale[1], OVLP.rangeNTimeScale[2], OVLP.rangeNTimeScale[3], self.layoutSimulation, self._ValuesSetSimulation)
		
		# OFFSET SETTINGS
		self.layoutOffset = c.frameLayout(l = "OFFSET", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack)
		c.gridLayout(numberOfColumns = 2, cellWidthHeight = (OVLP.windowWidth / 2, OVLP.lineHeight))
		ccResetOffset = self._ResetOffset
		ccGetOffset = self._GetOffsets
		c.button(l = "RESET", c = ccResetOffset, bgc = OVLP.cYellow)
		c.button(l = "GET", c = ccGetOffset, bgc = OVLP.cGray)
		c.columnLayout(p = self.layoutOffset)
		self.sliderOffsetX = classSlider("   Local X", "_parentConstraint1.target[0].targetOffsetTranslateX", OVLP.nameLocGoalTarget[0], True, 0, OVLP.rangeOffsetX[0], OVLP.rangeOffsetX[1], OVLP.rangeOffsetX[2], OVLP.rangeOffsetX[3], self.layoutOffset, self._OffsetUpdate, submenuGet = 1)
		self.sliderOffsetY = classSlider("   Local Y", "_parentConstraint1.target[0].targetOffsetTranslateY", OVLP.nameLocGoalTarget[0], True, 0, OVLP.rangeOffsetY[0], OVLP.rangeOffsetY[1], OVLP.rangeOffsetY[2], OVLP.rangeOffsetY[3], self.layoutOffset, self._OffsetUpdate, submenuGet = 1)
		self.sliderOffsetZ = classSlider("   Local Z", "_parentConstraint1.target[0].targetOffsetTranslateZ", OVLP.nameLocGoalTarget[0], True, 0, OVLP.rangeOffsetZ[0], OVLP.rangeOffsetZ[1], OVLP.rangeOffsetZ[2], OVLP.rangeOffsetZ[3], self.layoutOffset, self._OffsetUpdate, submenuGet = 1)

		# DEV TOOLS
		self.layoutDevTools = c.frameLayout(l = "DEV TOOLS", p = self.layoutMain, cc = self.Resize_UI, ec = self.Resize_UI, collapsable = 1, borderVisible = 1, bgc = OVLP.cBlack, vis = False)
		ccDEVFunction = self._DEVFunction
		ccTrailDelete = self._MotionTrailDelete
		ccTrailSelect = self._MotionTrailSelect
		ccTrailCreate = self._MotionTrailCreate
		c.gridLayout(p = self.layoutDevTools, numberOfColumns = 3, cellWidthHeight = (OVLP.windowWidth / 3, OVLP.lineHeight))
		c.button(l = "TRAIL DELETE", c = ccTrailDelete, bgc = OVLP.cBlack)
		c.button(l = "TRAIL SELECT", c = ccTrailSelect, bgc = OVLP.cBlack)
		c.button(l = "TRAIL CREATE", c = ccTrailCreate, bgc = OVLP.cBlack)
		c.button(l = "DEV FUNCTION", c = ccDEVFunction, bgc = OVLP.cBlack)

		# RUN WINDOW
		c.showWindow(self.windowMain)
		self.Resize_UI()
	def Resize_UI(self, *args): # TODO get count of visible layouts
		c.window(self.windowMain, e = 1, height = OVLP.windowHeight * 6, resizeToFitChildren = 1)
	
	def LayoutsCollapseLogic(self, value, *args): # TODO to external class
		if (value):
			if (self.LayoutsCollapseCheck() == value):
				return
		else:
			if (self.LayoutsCollapseCheck() == value):
				return
		c.frameLayout(self.layoutButtons, e = 1, collapse = value)
		c.frameLayout(self.layoutBaking, e = 1, collapse = value)
		c.frameLayout(self.layoutOptions, e = 1, collapse = value)
		c.frameLayout(self.layoutSimulation, e = 1, collapse = value)
		c.frameLayout(self.layoutOffset, e = 1, collapse = value)
		c.frameLayout(self.layoutDevTools, e = 1, collapse = value)
		self.Resize_UI()
	def LayoutsCollapseCheck(self, *args): # needed to fix the window bug
		check1 = c.frameLayout(self.layoutButtons, q = 1, collapse = 1)
		check2 = c.frameLayout(self.layoutBaking, q = 1, collapse = 1)
		check3 = c.frameLayout(self.layoutOptions, q = 1, collapse = 1)
		check4 = c.frameLayout(self.layoutSimulation, q = 1, collapse = 1)
		check5 = c.frameLayout(self.layoutOffset, q = 1, collapse = 1)
		check6 = c.frameLayout(self.layoutDevTools, q = 1, collapse = 1)
		if (check1 == check2 == check3 == check4 == check5 == check6):
			return check1
	def LayoutsExpand(self, *args):
		self.LayoutsCollapseLogic(False)
	def LayoutsCollapse(self, *args):
		self.LayoutsCollapseLogic(True)
	def LayoutDevToolsToggle(self, *args):
		_value = c.frameLayout(self.layoutDevTools, q = 1, vis = 1)
		c.frameLayout(self.layoutDevTools, e = 1, vis = not _value)
		self.Resize_UI()
	
	def SceneReload(self, *args): # TODO to external class
		currentScene = c.file(q = True, sceneName = True)
		if(currentScene): c.file(currentScene, open = True, force = True)
		else: c.file(new = 1, f = 1)
	def SceneQuit(self, *args): # TODO to external class
		c.quit(force = True)
	
	def ConvertText(self, text, direction=True, *args):
		if (direction):
			_text = text.replace("|", OVLP.replaceSymbols[0])
			_text = _text.replace(":", OVLP.replaceSymbols[1])
			return _text
		else:
			_text = text.replace(OVLP.replaceSymbols[0], "|")
			_text = _text.replace(OVLP.replaceSymbols[1], ":")
			return _text
	
	def TimeRangeGet(self, *args): # TODO to external class
		# c.playbackOptions(e = 1, min = self.time[0], max = self.time[1])
		self.time[0] = c.playbackOptions(q = 1, min = 1)
		self.time[1] = c.playbackOptions(q = 1, max = 1)
		self.time[2] = c.currentTime(q = 1)
	def TimeRangeMin(self, *args): # TODO to external class
		c.currentTime(self.time[0])
	def TimeRangeCached(self, *args): # TODO to external class
		c.currentTime(self.time[2])

	### LOGIC
	def _SetupInit(self, *args):
		self._SetupDelete(False)
		# Get selected objects
		self.selected = c.ls(sl = 1)
		if (len(self.selected) == 0):
			c.warning("Need to select at least 1 object")
			self.selected = ""
			return
		self.selected = self.selected[0]
		# Get min/max anim range time and reset time slider
		self.TimeRangeGet()
		self.TimeRangeMin()
		# Create group
		c.select(cl = 1)
		if (c.objExists(OVLP.nameGroup)):
			c.delete(OVLP.nameGroup)
		c.group(em = 1, n = OVLP.nameGroup)
		# Run setup logic
		self._SetupCreate(self.selected)
		self._OffsetUpdate(cacheReset = True)
		c.select(self.selected, r = 1)
	
	def _SetupCreate(self, objCurrent, *args):
		# Names
		_objConverted = self.ConvertText(objCurrent)
		nameLocGoal = OVLP.nameLocGoalTarget[0] + _objConverted
		nameLocParticle = OVLP.nameLocGoalTarget[1] + _objConverted
		nameParticle = OVLP.nameParticle + _objConverted
		nameLocAimBase = OVLP.nameLocAim[0] + _objConverted
		nameLocAimHidden = OVLP.nameLocAim[1] + _objConverted
		nameLocAim = OVLP.nameLocAim[2] + _objConverted
		nameLoftStart = OVLP.nameLoft[0] + _objConverted
		nameLoftEnd = OVLP.nameLoft[1] + _objConverted
		nameLoftShape = OVLP.nameLoft[2] + _objConverted

		# Create locator for goal
		self.locGoalTarget[0] = c.spaceLocator(n = nameLocGoal)[0]
		c.parent(self.locGoalTarget[0], OVLP.nameGroup)
		c.matchTransform(self.locGoalTarget[0], objCurrent, pos = True, rot = True)
		c.parentConstraint(objCurrent, self.locGoalTarget[0], maintainOffset = 1)
		c.setAttr(self.locGoalTarget[0] + ".visibility", 0)
		self.startPositionGoalParticle[0] = c.xform(self.locGoalTarget[0], q = 1, t = 1)

		# Create particle, goal and get selected object position
		_position = c.xform(objCurrent, q = 1, worldSpace = 1, rotatePivot = 1)
		self.particle = c.nParticle(n = nameParticle, position = _position, conserve = 1)[0]
		c.goal(useTransformAsGoal = 1, goal = self.locGoalTarget[0])
		c.parent(self.particle, OVLP.nameGroup)
		# self.startPositionGoalParticle[1] = c.xform(self.particle, q = 1, t = 1)
		c.setAttr(self.particle + ".overrideEnabled", 1)
		c.setAttr(self.particle + ".overrideDisplayType", 2)

		# Set simulation attributes
		c.setAttr(self.particle + "Shape.radius", self.sliderPRadius.ValueCheck())
		c.setAttr(self.particle + "Shape.solverDisplay", 1)
		c.setAttr(self.particle + "Shape.conserve", self.sliderPConserve.ValueCheck())
		c.setAttr(self.particle + "Shape.drag", self.sliderPDrag.ValueCheck())
		c.setAttr(self.particle + "Shape.damp", self.sliderPDamp.ValueCheck())
		c.setAttr(self.particle + "Shape.goalSmoothness", self.sliderGSmooth.ValueCheck())
		c.setAttr(self.particle + "Shape.goalWeight[0]", self.sliderGWeight.ValueCheck())

		# Nucleus detection
		self.nucleus = c.ls(type = "nucleus")[0]
		# c.parent(self.nucleus, OVLP.nameGroup) # TODO try to move nucleus in group
		self.sliderNTimeScale._name = self.nucleus # TODO: double set nucleus logic
		c.setAttr(self.nucleus + ".gravity", 0)
		c.setAttr(self.nucleus + ".timeScale", self.sliderNTimeScale.ValueCheck())
		c.setAttr(self.nucleus + ".startFrame", self.time[0]) # TODO maybe need check start frame in other functions?
		c.setAttr(self.nucleus + ".visibility", 0)

		# Create and connect locator to particle
		self.locGoalTarget[1] = c.spaceLocator(n = nameLocParticle)[0]
		c.parent(self.locGoalTarget[1], OVLP.nameGroup)
		c.matchTransform(self.locGoalTarget[1], objCurrent, pos = True, rot = True)
		c.connectAttr(self.particle + ".center", self.locGoalTarget[1] + ".translate", f = True)
		c.setAttr(self.locGoalTarget[1] + ".visibility", 0)

		# Create base aim locator
		self.locAim[0] = c.spaceLocator(n = nameLocAimBase)[0]
		c.parent(self.locAim[0], OVLP.nameGroup)
		c.matchTransform(self.locAim[0], objCurrent, position = True, rotation = True)
		c.parentConstraint(objCurrent, self.locAim[0], maintainOffset = True)
		c.setAttr(self.locAim[0] + ".visibility", 0)

		# Create hidden aim locator
		self.locAim[1] = c.spaceLocator(n = nameLocAimHidden)[0]
		c.matchTransform(self.locAim[1], self.locAim[0], pos = True, rot = True)
		c.parent(self.locAim[1], self.locAim[0])
		c.aimConstraint(self.locGoalTarget[1], self.locAim[1], weight = 1, aimVector = (0, 1, 0), upVector = (0, 1, 0), worldUpType = "vector", worldUpVector = (0, 0, 1))
		
		# Create aim locator
		self.locAim[2] = c.spaceLocator(n = nameLocAim)[0]
		c.matchTransform(self.locAim[2], self.locAim[0], pos = True, rot = True)
		c.parent(self.locAim[2], self.locAim[0])

		# Create aim loft
		self.loft[0] = c.circle(name = nameLoftStart, degree = 1, sections = 4, normal = [0, 1, 0])[0]
		self.loft[1] = c.duplicate(self.loft[0], name = nameLoftEnd)[0]
		_scale1 = 0.001
		_scale2 = self.sliderPRadius.ValueCheck() * OVLP.loftFactor
		c.setAttr(self.loft[0] + ".scaleX", _scale1)
		c.setAttr(self.loft[0] + ".scaleY", _scale1)
		c.setAttr(self.loft[0] + ".scaleZ", _scale1)
		c.setAttr(self.loft[1] + ".scaleX", _scale2)
		c.setAttr(self.loft[1] + ".scaleY", _scale2)
		c.setAttr(self.loft[1] + ".scaleZ", _scale2)
		c.setAttr(self.loft[0] + ".visibility", 0)
		c.setAttr(self.loft[1] + ".visibility", 0)
		#
		c.matchTransform(self.loft[0], self.locAim[2], pos = True, rot = True)
		c.parent(self.loft[0], self.locAim[2])
		c.matchTransform(self.loft[1], self.locGoalTarget[1], pos = True)
		c.parent(self.loft[1], self.locGoalTarget[1])
		c.aimConstraint(self.loft[0], self.loft[1], weight = 1, aimVector = (0, 1, 0), upVector = (0, 1, 0), worldUpType = "vector", worldUpVector = (0, 0, 1))
		#
		self.loft[2] = c.loft(self.loft[0], self.loft[1], name = nameLoftShape, reverseSurfaceNormals = 0, uniform = 1, polygon = 0)[0]
		c.parent(self.loft[2], OVLP.nameGroup)
		c.setAttr(self.loft[2] + ".overrideEnabled", 1)
		c.setAttr(self.loft[2] + ".overrideDisplayType", 2)
		c.setAttr(self.loft[2] + ".overrideShading", 0)
		if (self._LoftGetDistance() < OVLP.loftMinDistance):
			c.setAttr(self.loft[2] + ".visibility", 0)
	def _SetupScan(self, *args):
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
		_tempList = [OVLP.nameLocGoalTarget[0], OVLP.nameLocGoalTarget[1], OVLP.nameParticle, OVLP.nameLocAim[0], OVLP.nameLoft[2]]
		objectName = ""
		for child in children:
			for item in _tempList:
				splitNames = child.split(item)
				if (len(splitNames) < 2): continue
				lastName = splitNames[-1]
				if (objectName == ""):
					objectName = lastName
				else:
					if (objectName == lastName): continue
					else: c.warning("Suffix '{0}' don't equals to '{1}'".format(objectName, lastName))
		_converted = self.ConvertText(objectName, False)
		if (c.objExists(_converted)):
			self.selected = _converted
		
		def CheckAndSet(name):
			if (c.objExists(name + objectName)):
				return name + objectName
			else: return
		# Objects
		self.locGoalTarget[0] = CheckAndSet(OVLP.nameLocGoalTarget[0])
		self.locGoalTarget[1] = CheckAndSet(OVLP.nameLocGoalTarget[1])
		self.locAim[0] = CheckAndSet(OVLP.nameLocAim[0])
		self.locAim[1] = CheckAndSet(OVLP.nameLocAim[1])
		self.locAim[2] = CheckAndSet(OVLP.nameLocAim[2])
		self.particle = CheckAndSet(OVLP.nameParticle)
		self.loft[0] = CheckAndSet(OVLP.nameLoft[0])
		self.loft[1] = CheckAndSet(OVLP.nameLoft[1])
		self.loft[2] = CheckAndSet(OVLP.nameLoft[2])
		# Time and offset
		self.TimeRangeGet()
		self.TimeRangeMin()
		self.startPositionGoalParticle[0] = c.xform(self.locAim[0], q = 1, t = 1)
		self.TimeRangeCached()
		# Nucleus
		_nucleus = c.ls(type = "nucleus")
		if (len(_nucleus) > 0):
			self.nucleus = _nucleus[0]
			self.sliderNTimeScale._name = self.nucleus # TODO: double set nucleus logic
		# Get sliders
		self.sliderPRadius.ValueGet()
		self._GetSimulation()
		self._GetOffsets()
	def _SetupDelete(self, deselect=True, *args):
		self.selected = ""
		self.locGoalTarget = ["", ""]
		self.locAim = ["", "", ""]
		self.particle = ""
		self.nucleus = ""
		self.loft = ["", "", ""]
		# Revert cached timeslider
		# if (self.simulated):
		# 	self.simulated = False
		# 	c.currentTime(self.timeCurrent)
		# Delete group
		if (c.objExists(OVLP.nameGroup)):
			c.delete(OVLP.nameGroup)
		# Delete nucleus node # TODO checkbox
		_nucleus = c.ls(type = "nucleus")
		if (len(_nucleus) > 0):
			c.delete(_nucleus)
		# Select cached objects
		# try:
		# 	c.select(_selected, r=1) # TODO checkbox
		# except:
		# 	pass
		if (deselect):
			c.select(cl = 1)

	def _OffsetUpdate(self, cacheReset=False, *args):
		if (type(cacheReset) is float): cacheReset = False
		if (cacheReset):
			self.sliderOffsetX.ValueCachedReset()
			self.sliderOffsetY.ValueCachedReset()
			self.sliderOffsetZ.ValueCachedReset()
		# Check and set cached value
		checkX = self.sliderOffsetX.ValueCachedGet() != self.sliderOffsetX.ValueCheck()
		checkY = self.sliderOffsetY.ValueCachedGet() != self.sliderOffsetY.ValueCheck()
		checkZ = self.sliderOffsetZ.ValueCachedGet() != self.sliderOffsetZ.ValueCheck()
		if (checkX or checkY or checkZ):
			self.sliderOffsetX.ValueCachedSet()
			self.sliderOffsetY.ValueCachedSet()
			self.sliderOffsetZ.ValueCachedSet()
		else: return

		self._ValuesSetOffset()

		_checkSelected = self.selected == "" or not c.objExists(self.selected)
		_checkGoal = not c.objExists(self.locGoalTarget[0])
		_checkAim = not c.objExists(self.locAim[2])
		_checkStartPos = self.startPositionGoalParticle[0] == None
		if (_checkSelected or _checkGoal or _checkAim or _checkStartPos): return

		c.currentTime(self.time[0])
		# Get values from sliders
		values = [0, 0, 0]
		values[0] = self.sliderOffsetX.ValueCheck()
		values[1] = self.sliderOffsetY.ValueCheck()
		values[2] = self.sliderOffsetZ.ValueCheck()
		# Set locGoal constraint offset
		_goalAttributes = [0, 0, 0]
		_goalAttributes[0] = self.locGoalTarget[0] + "_parentConstraint1.target[0].targetOffsetTranslateX"
		_goalAttributes[1] = self.locGoalTarget[0] + "_parentConstraint1.target[0].targetOffsetTranslateY"
		_goalAttributes[2] = self.locGoalTarget[0] + "_parentConstraint1.target[0].targetOffsetTranslateZ"
		c.setAttr(_goalAttributes[0], values[0])
		c.setAttr(_goalAttributes[1], values[1])
		c.setAttr(_goalAttributes[2], values[2])
		# Get offset
		_goalPosition = c.xform(self.locGoalTarget[0], q = 1, t = 1)
		_goalOffset = [0, 0, 0]
		_goalOffset[0] = self.startPositionGoalParticle[0][0] - _goalPosition[0]
		_goalOffset[1] = self.startPositionGoalParticle[0][1] - _goalPosition[1]
		_goalOffset[2] = self.startPositionGoalParticle[0][2] - _goalPosition[2]
		# Set particle attributes
		_particleAttributes = [0, 0, 0]
		_particleAttributes[0] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateX"
		_particleAttributes[1] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateY"
		_particleAttributes[2] = OVLP.nameParticle + self.ConvertText(self.selected) + ".translateZ"
		c.setAttr(_particleAttributes[0], self.startPositionGoalParticle[1][0] - _goalOffset[0])
		c.setAttr(_particleAttributes[1], self.startPositionGoalParticle[1][1] - _goalOffset[1])
		c.setAttr(_particleAttributes[2], self.startPositionGoalParticle[1][2] - _goalOffset[2])
		# Reconstrain aim locator to hidden aim
		c.setAttr(self.locAim[2] + ".rotateX", 0)
		c.setAttr(self.locAim[2] + ".rotateY", 0)
		c.setAttr(self.locAim[2] + ".rotateZ", 0)
		c.orientConstraint(self.locAim[1], self.locAim[2], maintainOffset = True)

	### SELECT
	def _Select(self, name="", *args):
		if (name != ""):
			if (c.objExists(name)):
				c.select(name, r = 1)
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
		self._Select(self.locGoalTarget[1])
	def _SelectAim(self, *args):
		self._Select(self.locAim[2])

	### VALUES
	def _ValuesSetSimulation(self, *args):
		self.sliderPRadius.ValueSet()
		self.sliderPConserve.ValueSet()
		self.sliderPDrag.ValueSet()
		self.sliderPDamp.ValueSet()
		self.sliderGSmooth.ValueSet()
		self.sliderGWeight.ValueSet()
		self.sliderNTimeScale.ValueSet()
		self._LoftUpdate()
	def _ValuesSetOffset(self, *args):
		self.sliderOffsetX.ValueSet()
		self.sliderOffsetY.ValueSet()
		self.sliderOffsetZ.ValueSet()
		self._LoftUpdate()
	def _LoftUpdate(self, *args):
		if (self.loft[1] == ""): return
		if (not c.objExists(self.loft[1])): return
		_scale = self.sliderPRadius.ValueCheck() * OVLP.loftFactor
		c.setAttr(self.loft[1] + ".scaleX", _scale)
		c.setAttr(self.loft[1] + ".scaleY", _scale)
		c.setAttr(self.loft[1] + ".scaleZ", _scale)
		if (self._LoftGetDistance() < OVLP.loftMinDistance): c.setAttr(self.loft[2] + ".visibility", 0)
		else: c.setAttr(self.loft[2] + ".visibility", 1)
	def _LoftGetDistance(self, *args):
		vector = [0, 0, 0]
		vector[0] = self.sliderOffsetX.ValueCheck()
		vector[1] = self.sliderOffsetY.ValueCheck()
		vector[2] = self.sliderOffsetZ.ValueCheck()
		return sqrt(pow(vector[0], 2) + pow(vector[1], 2) + pow(vector[2], 2)) # Distance formula : √((x2 - x1)2 + (y2 - y1)2 + (z2 - z1)2)

	def _GetSimulation(self, *args):
		self.sliderPConserve.ValueGet()
		self.sliderPDrag.ValueGet()
		self.sliderPDamp.ValueGet()
		self.sliderGSmooth.ValueGet()
		self.sliderGWeight.ValueGet()
		self.sliderNTimeScale.ValueGet()
	def _GetOffsets(self, *args):
		self.sliderOffsetX.ValueGet()
		self.sliderOffsetY.ValueGet()
		self.sliderOffsetZ.ValueGet()
	
	def _ResetAllValues(self, *args):
		self.sliderPRadius.ValueReset()
		self._ResetSimulation()
		self._ResetOffset()
	def _ResetSimulation(self, *args):
		self.sliderPConserve.ValueReset()
		self.sliderPDrag.ValueReset()
		self.sliderPDamp.ValueReset()
		self.sliderGSmooth.ValueReset()
		self.sliderGWeight.ValueReset()
		self.sliderNTimeScale.ValueReset()
		self._ValuesSetSimulation()
	def _ResetOffset(self, *args):
		self.sliderOffsetX.ValueReset()
		self.sliderOffsetY.ValueReset()
		self.sliderOffsetZ.ValueReset()
		self._ValuesSetOffset()
	
	### BAKE
	def _BakeLogic(self, parent, translation=True, *args):
		if (translation): _attributes = OVLP.attrT
		else: _attributes = OVLP.attrR
		c.currentTime(self.time[0])
		_item = self.selected
		_name = "_rebake_" + self.ConvertText(_item)
		_clone = c.duplicate(_item, name = _name, parentOnly = 1, transformsOnly = 1, smartTransform = 1, returnRootsOnly = 1)
		c.parentConstraint(parent, _clone, maintainOffset = True)
		c.select(_clone, r = 1)
		# Bake
		OVLP.BakeSelected()
		_children = c.listRelatives(_clone, type = "constraint")
		for child in _children: c.delete(child)
		# Copy/Paste keys
		c.copyKey(_clone, attribute = _attributes) # TODO filtered attributes
		c.pasteKey(_item, option = "replace", attribute = _attributes) # TODO filtered attributes
		c.delete(_clone)
		if (c.checkBox(self.checkboxCleanup, q = 1, v = 1)):
			self._SetupDelete()
	def _BakeToTranslation(self, *args): # TODO merge repeated
		_selected = c.ls(sl = 1)
		if (len(_selected) == 0):
			if (self.selected == ""): return
			_iterations = 0
		else: _iterations = len(_selected)
		_value1 = self.sliderOffsetX.ValueCheck()
		_value2 = self.sliderOffsetY.ValueCheck()
		_value3 = self.sliderOffsetZ.ValueCheck()
		self.sliderOffsetX.ValueReset()
		self.sliderOffsetY.ValueReset()
		self.sliderOffsetZ.ValueReset()
		if (_iterations == 0):
			self._BakeLogic(self.locGoalTarget[1], True)
		else:
			for ii in range(_iterations):
				c.select(_selected[ii], r = 1)
				self._SetupInit()
				self._BakeLogic(self.locGoalTarget[1], True)
			c.select(_selected, r = 1)
		self.sliderOffsetX.ValueSet(_value1)
		self.sliderOffsetY.ValueSet(_value2)
		self.sliderOffsetZ.ValueSet(_value3)
	def _BakeToTranslationOffset(self, *args): # TODO merge repeated # TODO need improvements
		_selected = c.ls(sl = 1)
		if (len(_selected) == 0):
			if (self.selected == ""): return
			_iterations = 0
		else: _iterations = len(_selected)
		if (_iterations == 0):
			self._BakeLogic(self.locGoalTarget[1], True)
		else:
			for ii in range(_iterations):
				c.select(_selected[ii], r = 1)
				self._SetupInit()
				self._BakeLogic(self.locGoalTarget[1], True)
			c.select(_selected, r = 1)
	def _BakeToRotation(self, *args): # TODO merge repeated
		_selected = c.ls(sl = 1)
		if (len(_selected) == 0):
			if (self.selected == ""): return
			_iterations = 0
		else: _iterations = len(_selected)
		if (_iterations == 0):
			self._BakeLogic(self.locGoalTarget[1], True)
		else:
			for ii in range(_iterations):
				c.select(_selected[ii], r = 1)
				self._SetupInit()
				self._BakeLogic(self.locAim[2], False)
			c.select(_selected, r = 1)
	def _BakeToWorldLocator(self, *args):
		_selected = c.ls(sl = 1) # Get selected objects
		if (len(_selected) == 0):
			c.warning("Need to select at least 1 object")
			return
		_locators = []
		for item in _selected: # Create locator
			_name = OVLP.nameBakedWorldLocator + "1"
			_locator = c.spaceLocator(n = _name)[0]
			c.matchTransform(_locator, item, pos = True, rot = True)
			c.parentConstraint(item, _locator, maintainOffset = 1)
			c.scaleConstraint(item, _locator, maintainOffset = 1)
			_scale = 50
			c.setAttr(_locator + "Shape.localScaleX", _scale)
			c.setAttr(_locator + "Shape.localScaleY", _scale)
			c.setAttr(_locator + "Shape.localScaleZ", _scale)
			_locators.append(_locator)
		c.select(_locators, r = 1) # Bake and cleanup
		OVLP.BakeSelected()
		for loc in _locators:
			_children = c.listRelatives(loc, type = "constraint")
			for child in _children:
				c.delete(child)

	@staticmethod
	def BakeSelected(DoNotCut=1): # TODO from GETools class (need to merge in future)
		_startTime = c.playbackOptions(q = 1, min = 1)
		_endTime = c.playbackOptions(q = 1, max = 1)
		c.bakeResults(t = (_startTime, _endTime), preserveOutsideKeys = DoNotCut, simulation = 1)
	
	### DEV TOOLS
	def _DEVFunction(self, *args):
		print("DEV Function")
	
	def _MotionTrailCreate(self, *args):
		_selected = c.ls(sl = 1) # Get selected objects
		if (len(_selected) == 0):
			c.warning("Need to select at least 1 object")
			return
		_name = "MotionTrail_1"
		_step = 1
		_start = c.playbackOptions(q = 1, min = 1)
		_end = c.playbackOptions(q = 1, max = 1)
		c.snapshot(n = _name, mt = 1, i = _step, st = _start, et = _end)
		_trails = c.ls(type = "motionTrail")
		for item in _trails:
			c.setAttr(item + "Handle" + "Shape.trailDrawMode", 1)
			c.setAttr(item + "Handle" + "Shape.template", 1)
	def _MotionTrailSelect(self, *args):
		_trails = c.ls(type = "motionTrail")
		if (len(_trails) == 0): return
		c.select(clear = 1)
		for item in _trails:
			c.select(item + "Handle", add = 1)
	def _MotionTrailDelete(self, *args):
		_trails = c.ls(type = "motionTrail")
		if (len(_trails) == 0): return
		for item in _trails:
			c.delete(item + "Handle")

	### EXECUTION
	def Start(self, *args):
		_OVERLAPPY.CreateUI()
	def Restart(self, *args):
		c.evalDeferred("_OVERLAPPY.Start()")
	def Cleanup(self, *args): # TODO something wrong
		# c.evalDeferred("_OVERLAPPY = None")
		# c.evalDeferred("OVLP = None")
		pass

_OVERLAPPY = OVLP()
_OVERLAPPY.Start()