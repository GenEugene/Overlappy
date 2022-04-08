# GETools v0.1.2 (GenEugene Tools)
# Author Evgeny (GenEugene) Gataulin tek94@mail.ru tek942@gmail.com
# Maya 2017-2022
# https://github.com/GenEugene/Overlappy

from ast import If
import sys
import os
from turtle import position
import maya.cmds as cmds
import maya.mel as mel
from datetime import datetime
from inspect import currentframe, getframeinfo

# sys.exit()

class GETOOLS_class:
	def __init__(self):
		### SETUP
		self.titleText = "OVERLAPPY in progress..."
		self.windowWidth = 300
		self.lineHeight = 26

		### WINDOW
		self.window_name = "GEToolsWindow"
		self.windowHeight = 20
		self.defaultTab = 2
		self.tabs = None

	def CreateUI(self):
		# WINDOW
		if cmds.window(self.window_name, exists = True):
			cmds.deleteUI(self.window_name)
		cmds.window(self.window_name, title = self.titleText, mxb = 0, s = 0)
		cmds.window(self.window_name, e = True, rtf = True, wh = (self.windowWidth, self.windowHeight))
		cmds.columnLayout(adj = True, h = self.windowHeight)


		# HEAD MENU
		cmds.menuBarLayout()
		cmds.menu(label = 'Scene')
		cmds.menuItem(label = 'Reload', c = "GETOOLS.SceneReload()")
		cmds.menu(label = 'Script')
		cmds.menuItem(label = 'Reload', c = "GETOOLS.Restart()")


		# RUN WINDOW
		cmds.showWindow(self.window_name)
		self.Resize_UI()

	def Resize_UI(self, *args):
		cmds.window(self.window_name, e = True, h = self.windowHeight, rtf = True)

	def SceneReload(self, *args):
		currentScene = cmds.file(q = True, sceneName = True)
		if(currentScene):
			cmds.file(currentScene, open = True, force = True)
		else:
			cmds.file(new = 1, f = 1)




	class OVERLAPPY_class:
		def __init__(self):
			# self.weight = 0
			self.weight = 0.5
			# self.weight = 1

		
		def logic_Translate(self):
			# Get selected object and position
			_selected = cmds.ls(sl = 1)
			_translate = cmds.xform(_selected, q = 1, worldSpace = 1, rotatePivot = 1)

			# Create group
			cmds.select(cl=1)
			_group = cmds.group(em=1)

			# Create locator for goal
			_locGoal = cmds.spaceLocator()
			cmds.parent(_locGoal, _group)
			cmds.matchTransform(_locGoal, _selected, pos = True)
			cmds.parentConstraint(_selected, _locGoal)

			# Check exists nucleus nodes
			_nucleus = cmds.ls(type='nucleus')
			if (len(_nucleus) > 0):
				cmds.warning("Nucleus nodes exists and were removed")
				cmds.delete(_nucleus)
			
			# Create particle and goal
			_particle = cmds.nParticle(position = _translate, conserve = 1)
			_nucleus = cmds.ls(type='nucleus')
			_goal = cmds.goal(weight = self.weight, useTransformAsGoal = 1, goal = _locGoal)
			cmds.parent(_particle[0], _group)
			cmds.parent(_nucleus[0], _group)

			# Create locator for particle
			_locParticle = cmds.spaceLocator()
			cmds.parent(_locParticle, _group)
			cmds.matchTransform(_locParticle, _selected, pos = True)
			cmds.connectAttr(_particle[0] + ".center", _locParticle[0] + ".translate", f = True)

			
			# cmds.parent(loc, selected, r = True)
			# cmds.matchTransform(obj.goal_locator, obj.list_objects[i], pos = True) #
			
			# cmds.duplicate(obj.goal_locator, rr = True, n = obj.goal_aim_locator)
			# cmds.parent(obj.goal_aim_locator, w = True)
			# cmds.connectAttr(obj.np_center, obj.goal_aim_locator_pos, f = True)

			# Cleanup
			cmds.delete(_group)
			cmds.select(_selected)





	### EXECUTION
	@staticmethod
	def Start():
		GETOOLS.CreateUI()

		GETOOLS.OVLP = GETOOLS.OVERLAPPY_class()
		GETOOLS.OVLP.logic_Translate()
	
	@staticmethod
	def Restart():
		cmds.evalDeferred("GETOOLS.Start()")

GETOOLS = GETOOLS_class()
GETOOLS.Start()