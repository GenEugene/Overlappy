################################################################################
###### OVERLAPPY v0.1.0
################################################################################
### https://www.highend3d.com/maya/script/overlappy-for-maya-105076 - Overlappy page. Check updates and report bugs
################################################################################
""" TO DO    ||| FOR DEBUG ||| sys.exit() |||
	- Gravity options
	- Aim position offset
	- Deselect shapes from list
	- Installation
	- Twist mode
	- Loop mode upgrade
	- Stop "ESC"
	- Save prefs to file
"""
################################################################################
### Import ###
import maya.cmds as cmds
import sys
from datetime import datetime
from inspect import currentframe, getframeinfo

### Class ###
class TheOverlappy:
	""""TheOverlappy" class is cool"""
	class OverlappyObject:
		""""OverlappyObject" class is amazing"""
		
		### Slider values ###
		T_goal_smooth, T_time_scale, T_goal_weight = 1.5, 0.3, 0.5
		R_goal_smooth, R_time_scale, R_goal_weight = 1.5, 0.3, 0.5
		
		goalSmooth_min, goalSmooth_limit, goalSmooth_max = 0.0, 4.0, 10.0
		timeScale_min, timeScale_limit, timeScale_max = 0.01, 1.0, 10.0
		goalWeight_min, goalWeight_max = 0.0, 1.0
		
		slider_height = 30
		precision = 2
		
		## Checkboxes\Radial buttons
		check_cycle = False
		aim_vector_reverse = False
		
		default_mode = True
		hierarchy_mode = False
		splitChains_mode = False
		splitChains_step = 2
		
		## Start and end scale simulation time
		min_loop_factor, max_loop_factor = 1, 2
		
		## Particle
		particle_radius = 0.253
		particle_shape = 4
		
		## UI size
		window_width = 330
		sl_Width = 300
		rW1 = 163
		rW2 = 4
		rW3 = 163
		
		## Set colors
		frame_color_1 = (0.1, 0.1, 0.1)
		frame_color_2 = (1, 0.4, 0.4)
		
		color_yellow = (1, 1, 0.5)
		color_green = (0.4, 1, 0.4)
		
		color_blue = (0.4, 0.8, 1)
		color_lightBlue = (0.5, 1, 1)
		
		color_orange = (1.0, 0.74, 0.39)
		color_lightOrange = (1.0, 0.8, 0.7)

		color_red = (1, 0.4, 0.4)
		
		color_grey_1 = (0.8, 0.8, 0.8)
		color_grey_2 = (0.6, 0.6, 0.6)
		color_grey_3 = (0.4, 0.4, 0.4)
		color_grey_4 = (0.3, 0.3, 0.3)
		
		end_color_1 = (0.9, 0.5, 0.5)
		link_color_1 = (0.9, 0.55, 0.55)
		link_color_2 = (0.9, 0.4, 0.4)
		
		## Logs
		printLog_T_smooth = "Translation smooth ="
		printLog_T_scale = "Translation scale ="
		printLog_T_weight = "Translation weight ="
		
		printLog_R_smooth = "Rotation smooth ="
		printLog_R_scale = "Rotation scale ="
		printLog_R_weight = "Rotation weight ="
		
		printLog_cycle = "Looping animation ="
		printLog_aimReverse = "Aim reverse ="
		printLog_splitChains = "Split chains mode ="
		printLog_hierarchy = "Hierarchy mode ="
		printLog_resetAll = "Reset all values"
		
		myLog = "\tLOG:"
		myMessage = "\tMESSAGE:"
		myError = "\tERROR:"
		myWarning = "\tWARNING:"
		
		## Layers
		root_layer_name = "OVERLAPPY"
		safe_layer_name = "SAVED_Overlaps"
		prefix_base_layer = ["default_", "translate_", "rotate_"]
		final_layer_name = prefix_base_layer[0] + "_layer"
		
		## Technical
		simState = prefix_base_layer[0]
		default_channels = [("x","y","z"), ("y","z"), ("x","z"), ("x","y")]
		translate_attr_names = ["translateX", "translateY", "translateZ"]
		rotate_attr_names = ["rotateX", "rotateY", "rotateZ"]
		temp_obj_node = "temp_copyObj"
		nonLocked_attributes = [] 
		start_time, end_time = 0, 1
		
		## UI
		main_window_name = 'OverlappyUI'
		UI_layout_name = 'root_layout'
		
		T_layout_name = 'T_layout'
		R_layout_name = 'R_layout'
		CH1_layout_name = 'CH1_layout'
		B1_layout_name = 'B1_layout'
		about_layout_name = 'endColumn'
		
		T_sliderSmooth_name = "T_slider_smooth"
		T_sliderScale_name = "T_slider_scale"
		T_sliderWeight_name = "T_slider_weight"
		
		R_sliderSmooth_name = "R_slider_smooth"
		R_sliderScale_name = "R_slider_scale"
		R_sliderWeight_name = "R_slider_weight"
		
		cycle_checkbox_name = "cycle_checkbox"
		aimReverse_checkbox_name = "aim_reverse_checkbox"
		
		default_rb_name = "rb1"
		splitChains_rb_name = "rb2"
		hierarchy_rb_name = "rb3"
		
		loopFactor_text_name = 'loopFactor_text'
		splitChain_text_name = 'splitChain_text'
		
		## Labels
		script_label = "Overlappy"
		script_version = "v0.1.0"
		main_window_label = "{0} {1}".format(script_label, script_version)
		
		TL_label = "TRANSLATION VALUES"
		RL_label = "ROTATION VALUES"
		CH1_label = "OPTIONS"
		B1_label = "BUTTONS"
		about_label = "LINKS AND TIPS"
		
		smooth_label = 'Smooth'
		scale_label = 'Scale'
		weight_label = 'Weight'
		
		TB_run_label = "RUN TRANSLATION BAKING"
		RB_run_label = "RUN ROTATION BAKING"
		Aim_reverse_label = "Aim reverse"
		Cycle_checkbox_label = "Looping animation"
		
		radialHeader_label = 'Modes:'
		default_rb_label = "Default mode"
		splitChains_rb_label = "Split chains"
		hierarchy_rb_label = "Hierarchy mode"
		
		reset_button_label = "RESET"
		resetAll_button_label = "RESET ALL\nvalues"
		delete_label = "DELETE\nmain layer"
		hierarchy_label = "SELECT\nhierarchy"
		move_label = "MOVE to\nsafe layer"
		
		## Annotations
		goal_smooth_ann = "You can increase the maximum limit to 10.0 by entering the value manually"
		time_scale_ann = "You can increase the maximum limit to 10.0 by entering the value manually"
		goal_weight_ann = ""
		
		T_reset_ann = 'Reset all translation values'
		R_reset_ann = 'Reset all rotation values'
		CH1_reset_ann = 'Reset options'
		resetAll_ann = 'Reset all values and options in script window'
		
		aim_reverse_ann = \
		'Reorientation aim for rotation simulation. May be useful\
		\nwhen rotation bake animation with incorrect flipped rotations.'
		
		cycle_checkbox_ann = \
		'USE 60+ FPS\
		\n\nStrong recomended to use animation minimum\
		\nwith 1 phase before and after animation cycle.\
		\n\nSimple way to do it just use pre and post infinity\
		\nwith "Cycle" option in graph editor.\
		\n\nAfter baking loop animation on layer will be set cycle infinity'
		
		hierarchyMode_checkbox_ann = \
		'To use it, just select the root objects only.\n\
		\nThe script will find all hierarchies of transforms inside the selected,\
		\nand the simulation will process each chain separately'
		
		delete_ann = 'Delete main layer "OVERLAPPY" with all layers inside'
		
		hierarchy_ann = \
		'Select transforms hierarchy (without shapes)\
		\nIf you use this button, turn off Hierarchy checkbox'
		
		move_ann = \
		'Move all keyed layers from "OVERLAPPY" layer to "SAVED_Overlaps".\
		\n\nDELETE button cant delete saved layers.'
		
		loopFactor_ann = 'WARNING !!! More time will be spent to simulation loops\
		\n\nNeed to increase value, if the first and the last frames dont match well enough'
		
		splitChains_ann = \
		'Need to specify number of elements in each chain, then manually select objects.\
		\nCount of selected objects must be a multiple of the specified number\
		\n\nExamples:\
		\n1. Set 2, selected 8 objects        obj1|obj2|obj3|obj4|obj5|obj6|obj7|obj8\
		\n\tResult:\
		\n\t- Chain1   obj1|obj2\
		\n\t- Chain2   obj3|obj4\
		\n\t- Chain3   obj5|obj6\
		\n\t- Chain4   obj7|obj8\
		\n2. Set 3, selected 6 objects        obj1|obj2|obj3|obj4|obj5|obj6\
		\n\tResult:\
		\n\t- Chain1   obj1|obj2|obj3\
		\n\t- Chain2   obj4|obj5|obj6\
		\n3. Set 4, selected 10 objects        obj1|obj2|obj3|obj4|obj5|obj6|obj7|obj8|obj9|obj10)\
		\n\tResult:\
		\n\t- Error: Count of selected objects must be a multiple of 4)'
		
		
		## Text
		aboutText = ("\
		Report bugs and leave rewiew please", "vk.com/geneugene3d",\
		"www.artstation.com/geneugene", "www.highend3d.com/users/geneugene",\
		"www.highend3d.com/maya/script/overlappy-for-maya-105076",\
		"To see tooltips go to maya preferences/interface/help/\
		\nand activate 'Display ToolClips' checkbox")
		
		## Other declarations
		list_objects = []
		list_fixed = []
		list_split = []
		
		base_locator = ""
		base_aim_locator = ""
		offset_aim_locator = ""
		
		goal_locator = ""
		goal_aim_locator = ""
		
		goal_aim_locator_pos = ""
		
		np_name = ""
		np_center = ""
		np_render_type = ""
		np_shape_radius = ""
		np_goal_smooth = ""
		np_goal_weight = ""
		
		nucleus_name = ""
		nucleus_timeScale = ""
		nucleus_start = ""
		
		final_layer_name = ""
		nonLockedList = []
		min_loop_time, max_loop_time = 0, 1
		
		selection_set = []
		
		## Progress bar
		progressBar_step_value = 10
		progressBar_name = "Overlappy_ProgressBar"
		progressBar_text = "Please wait"
		progressControl = None
		
		## Confirm dialog
		text_report = 'Please SCREEN and REPORT this bug.'
		logList = ['',]
		
		dontShow_hier = 1
		dontShow_hierB = 1
		
		dontShow_hier_text =\
		'Some selected objects has no hierarchy inside.\
		\n\tSimulation cancelled for them:'
		
		
		########################################################################
		########################################################################
		
		
		
		### Reset
		@classmethod
		def reset_translation_sliders(cls, pr=True):
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, e = True,
							min = cls.goalSmooth_min, max = cls.goalSmooth_limit,
							fmx = cls.goalSmooth_max, v = cls.T_goal_smooth)
			cmds.floatSliderGrp(obj.T_sliderScale_name, e = True,
							min = cls.timeScale_min, max = cls.timeScale_limit,
							fmx = cls.timeScale_max, v = cls.T_time_scale)
			cmds.floatSliderGrp(obj.T_sliderWeight_name, e = True,
							min = cls.goalWeight_min, max = cls.goalWeight_max,
							v = cls.T_goal_weight)
			
			obj.T_goal_smooth = cls.T_goal_smooth
			obj.T_time_scale = cls.T_time_scale
			obj.T_goal_weight = cls.T_goal_weight
			
			if pr:
				#print obj.myMessage, obj.printLog_T_smooth, obj.T_goal_smooth
				#print obj.myMessage, obj.printLog_T_scale, obj.T_time_scale
				#print obj.myMessage, obj.printLog_T_weight, obj.T_goal_weight
				pass
		
		@classmethod
		def reset_rotation_sliders(cls, pr=True):
			cmds.floatSliderGrp(obj.R_sliderSmooth_name, e = True,
							min = cls.goalSmooth_min, max = cls.goalSmooth_limit,
							fmx = cls.goalSmooth_max, v = cls.R_goal_smooth)
			cmds.floatSliderGrp(obj.R_sliderScale_name, e = True,
							min = cls.timeScale_min, max = cls.timeScale_limit,
							fmx = cls.timeScale_max, v = cls.R_time_scale)
			cmds.floatSliderGrp(obj.R_sliderWeight_name, e = True,
							min = cls.goalWeight_min, max = cls.goalWeight_max,
							v = cls.R_goal_weight)
			
			obj.R_goal_smooth = cls.R_goal_smooth
			obj.R_time_scale = cls.R_time_scale
			obj.R_goal_weight = cls.R_goal_weight
			
			if pr:
				#print obj.myMessage, obj.printLog_R_smooth, obj.R_goal_smooth
				#print obj.myMessage, obj.printLog_R_scale, obj.R_time_scale
				#print obj.myMessage, obj.printLog_R_weight, obj.R_goal_weight
				pass
		
		@classmethod
		def reset_options(cls, pr=True):
			cmds.checkBox(obj.cycle_checkbox_name, e = True, v = cls.check_cycle)
			cmds.checkBox(obj.aimReverse_checkbox_name, e = True, v = cls.aim_vector_reverse)
			cmds.intField(obj.loopFactor_text_name, e = True, v = cls.min_loop_factor)

			obj.check_cycle = cls.check_cycle
			obj.min_loop_factor = cls.min_loop_factor
			obj.aim_vector_reverse = cls.aim_vector_reverse

			cmds.radioButton(obj.default_rb_name, e = 1, sl = 1)
			obj.default_mode = cls.default_mode
			obj.hierarchy_mode = cls.hierarchy_mode
			obj.splitChains_mode = cls.splitChains_mode
			obj.splitChains_step = cls.splitChains_step
			cmds.intField(obj.splitChain_text_name, e = True, v = cls.splitChains_step)
			
			if pr:
				#print obj.myMessage, obj.printLog_cycle, obj.check_cycle
				#print obj.myMessage, obj.printLog_aimReverse, obj.aim_vector_reverse
				
				#print obj.myMessage, 'default_mode', obj.default_mode
				#print obj.myMessage, 'hierarchy_mode', obj.hierarchy_mode
				#print obj.myMessage, 'splitChains_mode', obj.splitChains_mode
				pass
		
		@classmethod
		def reset_all(cls, pr=True):
			obj.reset_translation_sliders(False)
			obj.reset_rotation_sliders(False)
			obj.reset_options(False)
			if pr:
				print obj.myMessage, obj.printLog_resetAll
		
		
		
		### Sliders events
		@staticmethod
		def switch_T_smooth():
			obj.T_goal_smooth = cmds.floatSliderGrp(obj.T_sliderSmooth_name, q = True, v = True)
			#print obj.printLog_T_smooth, obj.T_goal_smooth
			pass
		
		@staticmethod
		def switch_T_scale():
			obj.T_time_scale = cmds.floatSliderGrp(obj.T_sliderScale_name, q = True, v = True)
			#print obj.printLog_T_scale, obj.T_time_scale
			pass
		
		@staticmethod
		def switch_T_weight():
			obj.T_goal_weight = cmds.floatSliderGrp(obj.T_sliderWeight_name, q = True, v = True)
			#print obj.printLog_T_weight, obj.T_goal_weight
			pass
		
		@staticmethod
		def switch_R_smooth():
			obj.R_goal_smooth = cmds.floatSliderGrp(obj.R_sliderSmooth_name, q = True, v = True)
			#print obj.printLog_R_smooth, obj.R_goal_smooth
			pass
		
		@staticmethod
		def switch_R_scale():
			obj.R_time_scale = cmds.floatSliderGrp(obj.R_sliderScale_name, q = True, v = True)
			#print obj.printLog_R_scale, obj.R_time_scale
			pass
		
		@staticmethod
		def switch_R_weight():
			obj.R_goal_weight = cmds.floatSliderGrp(obj.R_sliderWeight_name, q = True, v = True)
			#print obj.printLog_R_weight, obj.R_goal_weight
			pass
		
		
		
		### Checkboxes events
		@staticmethod
		def switch_check_cycle():
			obj.check_cycle = cmds.checkBox(obj.cycle_checkbox_name, q = True, v = True)
			#print obj.printLog_cycle, obj.check_cycle
			pass
			
		@staticmethod
		def switch_vector_reverse():
			obj.aim_vector_reverse = cmds.checkBox(obj.aimReverse_checkbox_name, q = True, v = True)
			#print obj.printLog_aimReverse, obj.aim_vector_reverse
			pass
		
		
		
		### Radio buttons SWITCH MODE ###
		@staticmethod
		def switch_mode_default():
			if cmds.radioButton(obj.default_rb_name, q = 1, sl = 1):
				obj.default_mode = True
			else:
				obj.default_mode = False
		
		@staticmethod
		def switch_mode_hierarchy():
			if cmds.radioButton(obj.hierarchy_rb_name, q = 1, sl = 1):
				obj.hierarchy_mode = True
			else:
				obj.hierarchy_mode = False
		
		@staticmethod
		def switch_mode_splitChains():
			if cmds.radioButton(obj.splitChains_rb_name, q = 1, sl = 1):
				obj.splitChains_mode = True
			else:
				obj.splitChains_mode = False
		
		
		@staticmethod
		def min_loop_factor_change(button='none'):
			if button == 'up':
				cmds.intField(obj.loopFactor_text_name, e = True, v = obj.min_loop_factor + 1)
			if button == 'down':
				cmds.intField(obj.loopFactor_text_name, e = True, v = obj.min_loop_factor - 1)
			obj.min_loop_factor = cmds.intField(obj.loopFactor_text_name, q = True, v = True)
			#print 'min_loop_factor =', obj.min_loop_factor
			pass
		
		@staticmethod
		def split_chain_change(button='none'):
			if button == 'up':
				cmds.intField(obj.splitChain_text_name, e = True, v = obj.splitChains_step + 1)
			if button == 'down':
				cmds.intField(obj.splitChain_text_name, e = True, v = obj.splitChains_step - 1)
			obj.splitChains_step = cmds.intField(obj.splitChain_text_name, q = True, v = True)
		
		
		
		### Buttons events ###
		@staticmethod
		def SelectTransformHierarchy(objName='', roots=1):
			curRoots = cmds.ls(sl = True)
			errObj = ''
			cmds.select(hi = True)
			transfList = cmds.ls(sl = True, typ = "transform", s = False)
			if (len(transfList) > 1 and len(transfList) != len(curRoots)) or (len(transfList) == 1 and roots > 1):
				cmds.select(cl = True)
				for i in range(len(transfList)):
					cmds.select(transfList[i], add = True)
				if obj.simState == obj.prefix_base_layer[0] and obj.default_mode == False:
					cmds.radioButton(obj.default_rb_name, e = 1, sl = 1)
					obj.switch_mode_default()
					obj.switch_mode_splitChains()
					obj.switch_mode_hierarchy()
					
					__err = 'Default mode activated, its good combination with manual selected hierarchy'
					print obj.myWarning, __err
					if obj.dontShow_hierB == 1:
						obj.confirmMessage(__err, obj.dontShow_hierB, 2, 'selTransHier')
				return True
			
			elif len(transfList) == 1 or len(curRoots) == len(transfList):
				for line in range(len(transfList)):
					errObj = errObj + '\n- ' + ''.join(transfList[line])
				__err = 'Need to select object with hierarchy inside:' + errObj
				print obj.myError, __err
				obj.confirmMessage(__err)
				return False
			else:
				__err = 'Need to select 1 or more objects for select hierarchy'
				print obj.myError, __err
				obj.confirmMessage(__err)
				return False
			
			
		
		### UI ###
		@staticmethod
		def confirmMessage(main_text, dontShow=0, typ=1, curDef='def'):
			if typ == 1: mess = 'ERROR: '
			if typ == 2: mess = 'WARNING: '
		
			if dontShow == 0: currentButtons = 'Ok'
			if dontShow == 1: currentButtons = ['Ok', 'Dont show this again']
		
			confirm = cmds.confirmDialog(t = obj.script_label + ' message', m = mess + main_text,
											b = currentButtons, db = 'Ok',
											cb = 'Dont show this again')
			if confirm == 'Ok':
				#print 'confirm = "Ok"'
				pass
			elif confirm == 'Dont show this again':
				if curDef == 'printHier': obj.dontShow_hier = 2
				elif curDef == 'selTransHier': obj.dontShow_hierB = 2
			else:
				#print 'i dont know'
				pass
		
		@staticmethod
		def close_progressbar():
			if cmds.window(obj.progressBar_name, exists = True):
				cmds.deleteUI(obj.progressBar_name)
		
		@staticmethod
		def run_progressbar(stepCount): # NEED TO REFACTOR
			obj.close_progressbar()
			
			maxVal = 100
			barWidth = (obj.rW1 + obj.rW2) * 2
			barHeight = 30
			
			#winRes = cmds.window("MayaWindow", q = True, wh = True) # Get Maya window size
			winLeftCorner = cmds.window(obj.main_window_name, q = True, tlc = True)
			winLeftCorner[0] = winLeftCorner[0] - barHeight * 1.5
			
			if (stepCount >= 1):
				obj.progressBar_step_value = maxVal / stepCount
			
			
			cmds.window(obj.progressBar_name, title = obj.progressBar_text,
																	s = False,
																	rtf = True,
																	tb = False)
			cmds.columnLayout()
			
			obj.progressControl = cmds.progressBar(maxValue = maxVal,
																w = barWidth,
																h = barHeight)
			
			cmds.window(obj.progressBar_name, e = True, wh = (barWidth, barHeight))
			cmds.windowPref(obj.progressBar_name, e = True, tlc = winLeftCorner)
			
			cmds.showWindow(obj.progressBar_name)
		
		@staticmethod
		def resize_UI():
			cmds.window(obj.main_window_name, e = True, wh = (10, 10), rtf = True)
		
		@staticmethod
		def create_ui(): # NEED TO REFACTOR
			if cmds.window(obj.main_window_name, exists = True):
				cmds.deleteUI(obj.main_window_name)
			obj.close_progressbar()
			
			## Variables
			arrow_bw = 18
			arrow_bh = 10
			
			## Window
			cmds.window(obj.main_window_name, title = obj.main_window_label,
														mxb = False, s = False)
			cmds.window(obj.main_window_name, e = True, rtf = True,
								wh = (10, 10), cc = 'obj.close_progressbar()')
			cmds.columnLayout(obj.UI_layout_name, rs = 4, adj = True)
			
			## Translate layout ##
			cmds.frameLayout(obj.T_layout_name, l = obj.TL_label, cll = 1,
								bgc = obj.frame_color_1, parent = obj.UI_layout_name,
								cc = ('obj.resize_UI()'))
			
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, l = obj.smooth_label, f = True,
								cc = ('obj.switch_T_smooth()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_smooth_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			cmds.floatSliderGrp(obj.T_sliderScale_name, l = obj.scale_label, f = True,
								cc = ('obj.switch_T_scale()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.time_scale_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			cmds.floatSliderGrp(obj.T_sliderWeight_name, l = obj.weight_label, f = True,
								cc = ('obj.switch_T_weight()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_weight_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			
			cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, obj.rW1),
													(2, obj.rW2), (3, obj.rW3)])
			
			cmds.button(label = obj.reset_button_label, command = ('obj.reset_translation_sliders()'),
								bgc = obj.color_yellow, h = obj.slider_height,
								ann = obj.T_reset_ann)
			
			cmds.separator(h = obj.slider_height / 1.25, style = 'none')
			
			cmds.button(label = obj.TB_run_label,
					command = ('obj.run_simulation(obj.prefix_base_layer[1])'),
					bgc = obj.color_green, h = obj.slider_height)
			
			
			
			## Rotate layout ##
			cmds.frameLayout(obj.R_layout_name, l = obj.RL_label, cll = 1,
								bgc = obj.frame_color_1, parent = obj.UI_layout_name,
								cc = ('obj.resize_UI()'))
			
			cmds.floatSliderGrp(obj.R_sliderSmooth_name, l = obj.smooth_label, f = True,
								cc = ('obj.switch_R_smooth()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_smooth_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			cmds.floatSliderGrp(obj.R_sliderScale_name, l = obj.scale_label, f = True,
								cc = ('obj.switch_R_scale()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.time_scale_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			cmds.floatSliderGrp(obj.R_sliderWeight_name, l = obj.weight_label, f = True,
								cc = ('obj.switch_R_weight()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_weight_ann,
								cal = (1, "left"), cw3 = (45, 40, 10) )
			
			
			cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, obj.rW1),
													(2, obj.rW2), (3, obj.rW3)])
			
			cmds.button(label = obj.reset_button_label,
								command = ('obj.reset_rotation_sliders()'),
								bgc = obj.color_yellow, h = obj.slider_height,
								ann = obj.R_reset_ann)
			
			cmds.separator(h = obj.slider_height / 1.25, style = 'none')
			
			cmds.button(label = obj.RB_run_label,
					command = ('obj.run_simulation(obj.prefix_base_layer[2])'),
					bgc = obj.color_green, h = obj.slider_height)
			
			
			
			## Checkbox layout ##
			cmds.frameLayout(obj.CH1_layout_name, l = obj.CH1_label, cll = 1,
								bgc = obj.frame_color_1, p = obj.UI_layout_name,
								cc = ('obj.resize_UI()'))
			
## NEED TO SOLVE
			cHeight1 = obj.slider_height / 1.3
## NEED TO SOLVE
			
			cmds.flowLayout('mode_layout', columnSpacing = 3, h = 70)
			
			col_1 = 70
			col_2 = 123
			col_3 = 400
			
			cmds.columnLayout(adj = True, p = 'mode_layout', w = col_1)
			## Reset button
			cmds.button(label = obj.reset_button_label,
											command = ('obj.reset_options()'),
											bgc = obj.color_yellow, h = cHeight1,
											ann = obj.CH1_reset_ann)
			
			
			## Looping animation and Aim reverse
			cmds.columnLayout('column1', adj = True, p = 'mode_layout', w = col_2, bgc = obj.color_grey_1)
			cmds.checkBox(obj.cycle_checkbox_name, label = obj.Cycle_checkbox_label,
								h = cHeight1, cc = ('obj.switch_check_cycle()'),
								ann = obj.cycle_checkbox_ann)
			
			
			cmds.flowLayout(columnSpacing = 3, w = 500)
			cmds.text(l = 'Min loop factor', h = 20, ann = obj.loopFactor_ann)
			cmds.intField(obj.loopFactor_text_name, w = 16, min = 1, max = 5, s = 1,
									cc = 'obj.min_loop_factor_change()', v = 1,
									bgc = obj.color_grey_3, ann = obj.loopFactor_ann)
			cmds.columnLayout()
			cmds.button(label='^', w = arrow_bw, h = arrow_bh, bgc = obj.color_grey_3,
										c = 'obj.min_loop_factor_change("up")',
										ann = obj.loopFactor_ann)
			cmds.button(label='v', w = arrow_bw, h = arrow_bh, bgc = obj.color_grey_4,
										c = 'obj.min_loop_factor_change("down")',
										ann = obj.loopFactor_ann)
			
			
			cmds.separator(h = 3, style = 'in', p = 'column1')
			
			cmds.checkBox(obj.aimReverse_checkbox_name, label = obj.Aim_reverse_label,
								cc = ('obj.switch_vector_reverse()'), h = 21,
								ann = obj.aim_reverse_ann, p = 'column1')
			
			
			
			## Modes
			cmds.columnLayout(p = 'mode_layout', w = col_3, bgc = obj.color_grey_2)
			cmds.radioCollection()
			cmds.text(l = obj.radialHeader_label, al = 'left')
			
			cmds.radioButton(obj.default_rb_name, l = obj.default_rb_label,
				onc = 'obj.switch_mode_default()',
				ofc = 'obj.switch_mode_default()')
			
			cmds.radioButton(obj.hierarchy_rb_name, l = obj.hierarchy_rb_label,
				onc = 'obj.switch_mode_hierarchy()',
				ofc = 'obj.switch_mode_hierarchy()',
				ann = obj.hierarchyMode_checkbox_ann)
			
			
			cmds.flowLayout(columnSpacing = 3, w = 500)
			cmds.radioButton(obj.splitChains_rb_name, l = obj.splitChains_rb_label,
				onc = 'obj.switch_mode_splitChains()',
				ofc = 'obj.switch_mode_splitChains()', ann = obj.splitChains_ann)
			
			
			cmds.intField(obj.splitChain_text_name, w = 25, min = 2, max = 99, s = 1,
									cc = 'obj.split_chain_change()', v = 2,
									bgc = obj.color_grey_3, ann = obj.splitChains_ann)
			cmds.columnLayout()
			cmds.button(label='^', w = arrow_bw, h = arrow_bh, bgc = obj.color_grey_3,
											c = 'obj.split_chain_change("up")',
											ann = obj.splitChains_ann)
			cmds.button(label='v', w = arrow_bw, h = arrow_bh, bgc = obj.color_grey_4,
											c = 'obj.split_chain_change("down")',
											ann = obj.splitChains_ann)
			
			
			
			
			## Button layout ##
			cmds.frameLayout(obj.B1_layout_name, l = obj.B1_label, cll = 1, bgc = obj.frame_color_1,
										parent = obj.UI_layout_name, cc = ('obj.resize_UI()'))
## NEED TO SOLVE
			columns_count2 = 5
			cWraw2 = obj.window_width / columns_count2
## NEED TO SOLVE
			
			cmds.gridLayout(nc = 5, cwh = (cWraw2, obj.slider_height),
												p = obj.B1_layout_name)
			## Cell #1 ##
			cmds.button(label = obj.resetAll_button_label, command = ('obj.reset_all()'),
								bgc = obj.color_yellow, h = obj.slider_height, ann = obj.resetAll_ann)
			## Cell #2 ##
			cmds.button(label = obj.delete_label, command = ('obj.delete_overlappy_layer()'),
								bgc = obj.color_red, h = obj.slider_height, ann = obj.delete_ann)
			## Cell #3 ##
			cmds.button(label = "", command = ('print "button 2"'), en = False,
								h = obj.slider_height, ann = "")
			## Cell #4 ##
			cmds.button(label = obj.hierarchy_label, command = ('obj.SelectTransformHierarchy()'),
									bgc = obj.color_orange, en = True, h = obj.slider_height,
									ann = obj.hierarchy_ann)
			## Cell #5 ##
			cmds.button(label = obj.move_label, command = ('obj.move_layers_to_safe()'),
									bgc = obj.color_blue, h = obj.slider_height,
									ann = obj.move_ann)
			
			
			## About layout ##
			cmds.columnLayout(obj.about_layout_name, rs = 4, adj = True,
								parent = obj.UI_layout_name, bgc = obj.end_color_1)
			cmds.frameLayout(l = obj.about_label, cll = 1, bgc = obj.frame_color_2,
								cl = 1, p = obj.about_layout_name, cc = ('obj.resize_UI()'))
			cmds.text(obj.aboutText[5], h = 40, bgc = obj.color_green)
			cmds.text(obj.aboutText[0], h = 20, bgc = obj.color_yellow)
			cmds.text(obj.aboutText[1], hl = True, h = 20, bgc = obj.link_color_1)
			cmds.text(obj.aboutText[2], hl = True, h = 20, bgc = obj.link_color_1)
			cmds.text(obj.aboutText[3], hl = True, h = 20, bgc = obj.link_color_2)
			cmds.text(obj.aboutText[4], hl = True, h = 20, bgc = obj.link_color_2)
			
			
			cmds.showWindow(obj.main_window_name)
		
		
		
		### Playback setup ###
		@staticmethod
		def playback_range_initialization():
			# Get min anim range
			obj.start_time = cmds.playbackOptions(q = True, min = True)
			# Get max anim range
			obj.end_time = cmds.playbackOptions(q = True, max = True)
			
			offset_time = obj.end_time - obj.start_time
			
			obj.min_loop_time = obj.start_time - offset_time * obj.min_loop_factor
			obj.max_loop_time = obj.start_time + offset_time * obj.max_loop_factor
		
		@staticmethod
		def reset_range_time():
			cmds.playbackOptions(e = True, min = obj.start_time, max = obj.end_time)
			cmds.currentTime(obj.start_time)
		
		@staticmethod
		def set_time_to_start(): # Only for cycles
			cmds.currentTime(obj.min_loop_time)
		
		
		
		### Main methods ###
		@staticmethod
		def create_overlappy_layer():
			if(cmds.objExists(obj.root_layer_name)):
				#print myMessage, root_layer_name, "layer already exists"
				pass
			else:
				#print myLog, root_layer_name, "layer created"
				cmds.animLayer(obj.root_layer_name, o = True)
		
		@staticmethod
		def delete_overlappy_layer():
			if (cmds.objExists(obj.root_layer_name)):
				cmds.delete(obj.root_layer_name)
				print obj.myMessage, obj.root_layer_name, "layer deleted"
			else:
				obj.confirmMessage(obj.root_layer_name + ' layer not created yet')
		
		@staticmethod
		def move_layers_to_safe():
			if(cmds.objExists(obj.root_layer_name)):
				obj.playback_range_initialization()
				# Get list of all final layers into OVERLAPPY layer
				obj.layerList1 = cmds.animLayer(obj.root_layer_name, q = True, c = True)
				if obj.layerList1 == None:
					__err = obj.root_layer_name + ' has no layers inside'
					print obj.myError, __err
					obj.confirmMessage(__err)
				else:
					if len(obj.layerList1) == 0:
						__err = 'No layers with animation keys'
						print obj.myError, __err
						obj.confirmMessage(__err)
					else:
						if cmds.objExists(obj.safe_layer_name):
							pass
						else: 
							cmds.animLayer(obj.safe_layer_name)
						for i in range(len(obj.layerList1)):
							obj.temp_list = cmds.ls(obj.layerList1[i] + "Safe_*")
							if len(obj.temp_list) == 0:
								obj.final_safe_layer_name = obj.layerList1[i] + "Safe_1"
							else:
								## 1. Get index of tip number ##
								find_number_pos = int(obj.temp_list[-1].find("Safe_")) + 5
								## 2. Get value of tip number ##
								find_number_val = obj.temp_list[-1][find_number_pos:]
								## 3. Increment value of tip number ##
								increment_number = int(find_number_val) + 1
								obj.final_safe_layer_name = obj.layerList1[i] + "Safe_" + str(increment_number)
							cmds.rename(obj.layerList1[i], obj.final_safe_layer_name)
							cmds.animLayer(obj.final_safe_layer_name, e = True, p = obj.safe_layer_name)
						cmds.delete(obj.root_layer_name)
						print obj.myMessage, obj.root_layer_name, "layer deleted"	
			else:
				__err = obj.root_layer_name + ' layer not created, nothing to move.'
				print obj.myError, __err
				obj.confirmMessage(__err)
		
		@staticmethod
		def replaceSymbols():
			for i in range(len(obj.list_fixed)):
				obj.list_fixed[i] = obj.list_fixed[i].replace("|", "_")
				obj.list_fixed[i] = obj.list_fixed[i].replace(":", "_")
		
		@staticmethod
		def get_nonLocked_attributes(i): # and duplicate transform node
			obj.reset_range_time()
			if obj.check_cycle:
				obj.set_time_to_start()
			
			temp_particle_attrs = [obj.T_goal_smooth, obj.T_goal_weight, obj.T_time_scale,
							   obj.R_time_scale, obj.R_goal_weight, obj.R_goal_smooth]
			
			if obj.simState == obj.prefix_base_layer[1]:
				attrX = obj.list_objects[i] + '.translateX'
				attrY = obj.list_objects[i] + '.translateY'
				attrZ = obj.list_objects[i] + '.translateZ'
				temp_constraint_parent = obj.goal_aim_locator
				temp_locked_names = obj.translate_attr_names
				temp_index = [1, 0, 2, 0, 3, 0]
			
			elif obj.simState == obj.prefix_base_layer[2]:
				attrX = obj.list_objects[i] + '.rotateX'
				attrY = obj.list_objects[i] + '.rotateY'
				attrZ = obj.list_objects[i] + '.rotateZ'
				temp_constraint_parent = obj.offset_aim_locator
				temp_locked_names = obj.rotate_attr_names
				temp_index = [0, 1, 0, 2, 0, 3]
				temp_particle_attrs.reverse()
			
			else:
				frameinfo = getframeinfo(currentframe())
				ln = '\n' + obj.text_report + ' Line {0}'.format(frameinfo.lineno - 2)
				__err = 'get_nonLocked_attributes( ) state error #1.' + ln
				print obj.myError, __err
				obj.confirmMessage(__err)
			
			cmds.setAttr(obj.np_goal_smooth, temp_particle_attrs[0])
			cmds.setAttr(obj.np_goal_weight, temp_particle_attrs[1])
			cmds.setAttr(obj.nucleus_timeScale, temp_particle_attrs[2])
			cmds.setAttr(obj.np_render_type, obj.particle_shape)
			cmds.setAttr(obj.np_shape_radius, obj.particle_radius)
			cmds.setAttr(obj.nucleus_start, obj.start_time)
			
			## Get lock state bool ##
			lockX = cmds.getAttr(attrX, lock = True)
			lockY = cmds.getAttr(attrY, lock = True)
			lockZ = cmds.getAttr(attrZ, lock = True)
			
			if lockX and lockY and lockZ == True:
				obj.cleaning(i)
				if cmds.animLayer(obj.root_layer_name, q = True, c = True) == None:
					obj.delete_overlappy_layer()
					#print myError, root_layer_name, "has no layers inside"
				else:
					#print myLog, root_layer_name, "has layers inside"
					pass
					
				print obj.myError, "All required attributes are locked"
			else:
				#print myLog, "Required attributes are available"
				
				cmds.duplicate(obj.list_objects[i], po = True, n = obj.temp_obj_node)
				
				del(obj.nonLocked_attributes[:])
				
				
				mOffset = True
				
				if (lockX != True):
					obj.nonLocked_attributes.append(temp_locked_names[0])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = mOffset,
												st = obj.default_channels[temp_index[0]],
												sr = obj.default_channels[temp_index[1]], w = 1)
				if (lockY != True):
					obj.nonLocked_attributes.append(temp_locked_names[1])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = mOffset,
												st = obj.default_channels[temp_index[2]],
												sr = obj.default_channels[temp_index[3]], w = 1)
				if (lockZ != True):
					obj.nonLocked_attributes.append(temp_locked_names[2])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = mOffset,
												st = obj.default_channels[temp_index[4]],
												sr = obj.default_channels[temp_index[5]], w = 1)
				
				obj.create_other_layers(i)
				obj.baking_to_temp_object()
				obj.copyPaste_main_animation(i)
				obj.cleaning(i)
		
		@staticmethod
		def create_other_layers(i):
			if obj.simState == obj.prefix_base_layer[1]:
				obj.final_layer_name = obj.prefix_base_layer[1] + obj.list_fixed[i] + "_layer"
			elif obj.simState == obj.prefix_base_layer[2]:
				obj.final_layer_name = obj.prefix_base_layer[2] + obj.list_fixed[i] + "_layer"
			else:
				obj.final_layer_name = "error" + obj.list_fixed[i] + "_layer"
				
				frameinfo = getframeinfo(currentframe())
				ln = '\n' + obj.text_report + '\nLine {0}'.format(frameinfo.lineno - 2)
				__err = 'create_other_layers( ) state error #2' + ln
				print obj.myError, __err
				obj.confirmMessage(__err)
			
			obj.nonLockedList = [] # Clean attr list
			for x in range(len(obj.nonLocked_attributes)):
				obj.nonLockedList.append(obj.list_objects[i] + "." + obj.nonLocked_attributes[x])
			
			if (cmds.objExists(obj.final_layer_name)):
				cmds.delete(obj.final_layer_name)
				cmds.animLayer(obj.final_layer_name, o = True, p = obj.root_layer_name)
			else:
				cmds.animLayer(obj.final_layer_name, o = True, p = obj.root_layer_name)
		
		@staticmethod
		def baking_to_temp_object():
			if(obj.check_cycle): 
				#print myLog, "Cycled baking"
				cmds.setAttr(obj.nucleus_start, obj.min_loop_time)
				cmds.bakeResults(obj.temp_obj_node, t = (obj.min_loop_time, obj.max_loop_time),
									sm = True, at = obj.nonLocked_attributes)
			else:
				#print myLog, "Linear baking"
				cmds.bakeResults(obj.temp_obj_node, t = (obj.start_time, obj.end_time),
									sm = True, at = obj.nonLocked_attributes)
		
		@staticmethod
		def copyPaste_main_animation(i):
			# Set keys to main object before simulation (experimental)
			#cmds.setKeyframe(obj.list_objects[i], at = obj.nonLocked_attributes)
			cmds.animLayer(obj.final_layer_name, e = True, at = obj.nonLockedList)
			cmds.select(obj.temp_obj_node, r = True)
			
			if (obj.check_cycle):
				#print myLog, 'Infinity changed to "Cycle"'
				cmds.cutKey(time = (obj.min_loop_time, obj.start_time - 1))
				cmds.cutKey(time = (obj.end_time + 1, obj.max_loop_time))
				cmds.setInfinity(pri = "cycle", poi = "cycle")
			else:
				#print myLog, 'Infinity changed to "Constant"'
				cmds.setInfinity(pri = "constant", poi = "constant")
			
			temp_copyKey = cmds.copyKey(obj.temp_obj_node, at = obj.nonLocked_attributes)
			cmds.pasteKey(obj.list_objects[i], o = "replace", al = obj.final_layer_name, at = obj.nonLocked_attributes)
		
		@staticmethod
		def cleaning(i):
			if obj.simState == obj.prefix_base_layer[1]:
				cmds.delete(obj.goal_aim_locator, obj.goal_locator, obj.np_name, obj.nucleus_name)
				if cmds.objExists(obj.temp_obj_node):
					cmds.delete(obj.temp_obj_node)
			elif obj.simState == obj.prefix_base_layer[2]:
				cmds.delete(obj.base_locator, obj.base_aim_locator, obj.goal_aim_locator, obj.goal_locator, obj.np_name, obj.nucleus_name)
				if cmds.objExists(obj.temp_obj_node):
					cmds.delete(obj.temp_obj_node)
			else:
				frameinfo = getframeinfo(currentframe())
				ln = '\n' + obj.text_report + ' Line {0}'.format(frameinfo.lineno - 2)
				__err = 'cleaning( ) state error #3' + ln
				print obj.myError, __err
				obj.confirmMessage(__err)
			obj.reset_range_time()
		
		
		
		### Main scripts ###
		@staticmethod
		def main_start():
			obj.playback_range_initialization()
			obj.reset_range_time()
			
			obj.list_objects = cmds.ls(sl = True)
			obj.list_fixed = obj.list_objects[:]
		
		@staticmethod
		def main_set_names(i):
			if obj.simState == obj.prefix_base_layer[2]:
				obj.base_locator = obj.list_fixed[i] + "_base_loc"
				obj.base_aim_locator = obj.list_fixed[i] + "_base_aim_loc"
				obj.offset_aim_locator = obj.list_fixed[i] + "_offset_aim_loc"
			
			obj.goal_locator = obj.list_fixed[i] + "_goal_loc"
			obj.goal_aim_locator = obj.list_fixed[i] + "_aim_loc"
			
			obj.goal_aim_locator_pos = obj.goal_aim_locator + ".translate"
			
			obj.np_name = obj.list_fixed[i] + "_temp_part" # nParticle name
			obj.np_center = obj.np_name + ".center"
			obj.np_render_type = obj.np_name + "Shape.particleRenderType"
			obj.np_shape_radius = obj.np_name + "Shape.radius"
			obj.np_goal_smooth = obj.np_name + "Shape.goalSmoothness"
			obj.np_goal_weight = obj.np_name + "Shape.goalWeight[0]"
			
			obj.nucleus_name = "nucleus1"
			obj.nucleus_timeScale = obj.nucleus_name + ".timeScale"
			obj.nucleus_start = obj.nucleus_name + ".startFrame"
		
		@staticmethod
		def main_translate_logic(i):
			## Create main logic ##
			cmds.spaceLocator(n = obj.goal_locator)
			cmds.matchTransform(obj.goal_locator, obj.list_objects[i], pos = True)
			objC = cmds.getAttr(obj.goal_locator + ".translate")
			
			cmds.nParticle(p = objC, n = obj.np_name, c = 1)
			cmds.goal(obj.np_name, w = obj.T_goal_weight, utr = 1, g = obj.goal_locator)
			
			cmds.parent(obj.goal_locator, obj.list_objects[i], r = True) #
			cmds.matchTransform(obj.goal_locator, obj.list_objects[i], pos = True) #
			
			cmds.duplicate(obj.goal_locator, rr = True, n = obj.goal_aim_locator)
			cmds.parent(obj.goal_aim_locator, w = True)
			cmds.connectAttr(obj.np_center, obj.goal_aim_locator_pos, f = True)
			
		@staticmethod
		def main_rotate_logic(i):
			#### Create main logic ####
			if obj.aim_vector_reverse: obj.rotAimVector = -1
			else: obj.rotAimVector = 1
			
			## Create locators ##
			cmds.spaceLocator(n = obj.base_locator)
			cmds.matchTransform(obj.base_locator, obj.list_objects[i], pos = True, rot = True)
			
			cmds.aimConstraint(obj.list_objects[i+1], obj.base_locator, w = 1,
									aim = (0, 1, 0), u = (0, 1, 0),
									wut = "vector", wu = (0, 0, 1))
			cmds.delete(obj.base_locator + "_aimConstraint1")
			
			cmds.duplicate(obj.base_locator, n = obj.base_aim_locator)
			cmds.parent(obj.base_aim_locator, obj.base_locator, a = True)
			
			cmds.duplicate(obj.base_aim_locator, n = obj.offset_aim_locator)
			
			cmds.parentConstraint(obj.list_objects[i], obj.base_locator, mo = True, w = 1)
			
			cmds.spaceLocator(n = obj.goal_locator)
			cmds.matchTransform (obj.goal_locator, obj.list_objects[i + 1], pos = True, rot = True)
			cmds.parentConstraint(obj.list_objects[i + 1], obj.goal_locator, mo = True, w = 1)
			
			cmds.spaceLocator(n = obj.goal_aim_locator)
			
			## Create particle and nucleus ##
			goal_position = cmds.getAttr(obj.goal_locator + ".translate")
			cmds.nParticle(p = goal_position, n = obj.np_name, c = 1)
			cmds.goal(obj.np_name, w = obj.T_goal_weight, utr = 1, g = obj.goal_locator)
			
			## Create connections ##
			cmds.connectAttr(obj.np_center, obj.goal_aim_locator_pos, f = True)
			
			cmds.aimConstraint(obj.goal_aim_locator, obj.base_aim_locator, w = 1,
									aim = (0, obj.rotAimVector, 0), u = (0, 1, 0),
									wut = "vector", wu = (0, 1, 0), sk = "y")
			
			cmds.parentConstraint(obj.base_aim_locator, obj.offset_aim_locator,
											mo = True, st=["x","y","z"], w = 1)
		
		@staticmethod
		def main_last_part(i):
			## Layers, connections, baking, copy/paste ##
			obj.get_nonLocked_attributes(i)
			
			cmds.select(d = True)
			cmds.progressBar(obj.progressControl, edit = True, step = obj.progressBar_step_value)
		
		@staticmethod
		def main_end():
			cmds.select(cl = True)
			for l in obj.selection_set:
				cmds.select(l, add = True)
			obj.close_progressbar()
		
		
		
		### Simulation ###
		@staticmethod
		def run_simulation(currentState):
			start_time = datetime.now()
			
			print "#" * 80
			initial_playback_time = cmds.currentTime(q = True)
			obj.simState = currentState
			total_count = 1
			root_count = 1
			obj.logList = []
			
			splitChains_message = 'You need to select the number of objects multiple of {0}. ( {1}, {2}, {3} etc. )'\
													.format(obj.splitChains_step,
														obj.splitChains_step*1,
														obj.splitChains_step*2,
														obj.splitChains_step*3)
			
			def core_func(objName=''):
				obj.main_start()
				# Translate block
				if obj.simState == obj.prefix_base_layer[1]:
					obj.create_overlappy_layer()
					obj.replaceSymbols()
					for i in range(len(obj.list_fixed)):
						obj.main_set_names(i)
						obj.main_translate_logic(i)
						obj.main_last_part(i)
				
				# Rotate block
				elif obj.simState == obj.prefix_base_layer[2]:
					if (len(obj.list_objects) <= 1):
						__err = 'Need to select 2 or more objects:\n- ' + objName
						obj.logList.append(objName)
						print obj.myError, __err
						if root_count == 1:
							obj.confirmMessage(__err)
					else:
						obj.create_overlappy_layer()
						obj.replaceSymbols()
						for i in range(len(obj.list_fixed)-1):
							obj.main_set_names(i)
							obj.main_rotate_logic(i)
							obj.main_last_part(i)
				else:
					print obj.myError, 'simState = 0'
			
			
			if obj.default_mode:
				obj.selection_set = cmds.ls(sl = True)
				if len(obj.selection_set) != 0:
					root_count = 1
					if obj.simState == obj.prefix_base_layer[1]:
						total_count = len(cmds.ls(sl = True))
						obj.run_progressbar(total_count)
					elif obj.simState == obj.prefix_base_layer[2]:
						total_count = len(cmds.ls(sl = True)) - 1
						obj.run_progressbar(total_count - root_count)
					core_func(str(obj.selection_set[0]))
					
				elif len(obj.selection_set) == 0:
					if obj.simState == obj.prefix_base_layer[1]:
						__err = 'Need to select 1 or more objects'
						print obj.myError, __err
						obj.confirmMessage(__err)
					elif obj.simState == obj.prefix_base_layer[2]:
						__err = 'Need to select 2 or more objects'
						print obj.myError, __err
						obj.confirmMessage(__err)
				
			elif obj.hierarchy_mode:
				obj.selection_set = cmds.ls(sl = True)
				root_list = cmds.ls(sl = True)
				root_count = len(root_list)
				cmds.select(root_list, r = True)
				
				curCount = ''
				if root_count != 0:
					curCount = root_list[0]
				
				if obj.SelectTransformHierarchy(curCount, root_count):
					total_count = len(cmds.ls(sl = True))

					if obj.simState == obj.prefix_base_layer[1]:
						obj.run_progressbar(total_count)
						
					elif obj.simState == obj.prefix_base_layer[2]:
						obj.run_progressbar(total_count - root_count)
						
					for root in range(len(root_list)):
						cmds.select(root_list[root], r = True)
						if obj.SelectTransformHierarchy(root_list[root],root_count):
							core_func(root_list[root])
			
			elif obj.splitChains_mode:	
				if obj.simState == obj.prefix_base_layer[1]:
					__err = 'Split chains mode works with Rotation baking only'
					print obj.myError, __err
					obj.confirmMessage(__err)
				else:
					obj.selection_set = cmds.ls(sl = True)
					total_count = len(cmds.ls(sl = True))
					if total_count == 0:
						__err = 'Nothing selected for Split chains mode'
						print obj.myError, __err
						obj.confirmMessage(__err)
					else:
						if total_count % obj.splitChains_step:
							__err = splitChains_message
							print obj.myError, __err
							obj.confirmMessage(__err)
						else:
							root_count = total_count / obj.splitChains_step
							obj.list_split = []
							step = 0
							for i in range(root_count):
								obj.list_split.append(obj.selection_set[step:step
														+ obj.splitChains_step])
								step += obj.splitChains_step
							obj.run_progressbar(total_count - root_count)
							for i in range(len(obj.list_split)):
								cmds.select(obj.list_split[i], r = True)
								core_func()
			
			else:
				frameinfo = getframeinfo(currentframe())
				ln = '\n' + obj.text_report + ' Line {0}'.format(frameinfo.lineno - 2)
				
				__err = 'Cant find mode.' + ln
				print obj.myError, __err
				obj.confirmMessage(__err)

			
			print obj.myMessage, 'total_count', total_count
			print obj.myMessage, 'root_count', root_count
			obj.main_end()
			obj.simState = obj.prefix_base_layer[0]
			cmds.currentTime(initial_playback_time)
			end_time = datetime.now()
			print obj.myMessage, "Simulation time: {}".format(end_time - start_time)
			print "#" * 80
			
			if obj.hierarchy_mode and len(obj.logList) != 0 and obj.dontShow_hier == 1:
				showLogList = ''
				for item in range(len(obj.logList)):
					showLogList += '\n- ' + ''.join(obj.logList[item])
				
				__err = obj.dontShow_hier_text + showLogList
				print obj.myWarning, __err
				obj.confirmMessage(__err, obj.dontShow_hier, 2, 'printHier')
		
		
		
		### Run code ###
		@staticmethod
		def RunOverlappy():
			obj.create_ui()
			obj.reset_all(False)
		
		
### Create instance ###
obj = TheOverlappy.OverlappyObject()
obj.RunOverlappy()

################################################################################
###### End code ######