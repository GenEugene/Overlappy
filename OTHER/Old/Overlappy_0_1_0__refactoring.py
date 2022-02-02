######
################################################################################
""" Links
https://www.highend3d.com/maya/script/overlappy-for-maya-105076 - Overlappy page
https://www.highend3d.com/users/geneugene - Highend page
https://www.artstation.com/geneugene - 3d portfolio (modeling, texturing, animation)
https://vk.com/geneugene3d - My page in social media
"""
################################################################################
""" Information
Hello. I want to share my script that I use in my animation projects.
This is a simple tool for add some overlaps to your animation.
Animation will bake to override layers, so your animation not will be deleted.
 
Based on:
	- https://vimeo.com/196234485
	- https://www.youtube.com/watch?v=BTBZgLYO6eo&feature=youtu.be&t=490

Features:
	- nParticle based
	- baking to layer
	- work with cycles

How to use:
	- For install just open script in script editor and press button "Save Script to Shelf"
	- Selected objects must have keyed channels (Translation or Rotation)
	- Script always creates override layers with baked animation. Use MOVE button
		to keep good animation. Then you can set the weight of the layer and
		bake again without losing the saved layers.
		
Button and checkbox descriptions:
	- RUN TRANSLATION BAKING: You need select 1 or more objects.
	
	- Run ROTATION BAKING: You need select 2 or more objects. Last selected
		object will be the target for the previous one.
	
	- Aim reverse: For reorientation aim in rotation script.
		- May be useful when aim need reverse
	
	- Looping animation: 
		- For baking clear loops you need use 60+ fps. On lower fps script
			can bake wrong loops.
		- Strong recomended to use animation minimum with 1 phase before and
			after animation cycle. Simple way to do it just use pre and
			post infinity with "Cycle" option.
		- Or you can bake animation with off cycle checkbox into 3 or more loops,
			then move animation to your main animation range and delete remains.
	
	- RESET ALL: Clears all values in script window
	
	- DELETE: Delete "OVERLAPPY" layer and everything inside it.
		- Dont forget to move baked animation to safe layer by MOVE button
	
	- MOVE: Move all keyed layers from "OVERLAPPY" layer to "SAVED_Overlaps"
	
Known problems:
	- In Maya 2019 animation caching can break creating constraints by script
 
p.s. This is my first script on maya python, so please report bugs and leave
some comments, if you have ideas to modify the code.
"""
################################################################################
""" Version history
v 0.1.0
	- [NEW] Full refactoring, class inheritance
	- [NEW] Collapsed main logic into one block
	- [NEW] Script execution time log
	- [NEW] HIERARCHY button (press to select transforms hierarchy)
	- [NEW] Hierarchy mode checkbox (select roots for auto select hierarchy)
	
	- [FIX] Joints chain rotation problem
	- [FIX] Progress bar close with script window
	- [OTHER] More comfortable default values and sliders limits
v 0.0.9
	- [NEW] Created simulation states (for translate/rotate/other separation)
	- [FIX] "blendParent1" issue
	- [FIX] Optimized speed, reduced simulation passes (from 2-3 to 1)
	- [FIX] Progressbar events
	- [FIX] MOVE button exceptions
	- [OTHER] Rewrited layer logic, safe move and much other logic
v 0.0.8
	- [NEW] Compatibility with Maya 2017
	- [NEW] "MOVE" button to move all overlappy keyed layers to safe layer
	- [NEW] "offsetLocator" for calculate angle offsets
	- [FIX] "'list_objects' is not defined"
	- [FIX] Constraints offset baking
	- [REMOVE] "sbm" parameter from frameLayout's
	- [REMOVE] "cycleInfinity" variable
v 0.0.7
	- [NEW] Progress bar
	- [FIX] Incorrect loop baking
	- [FIX] Non zero start animation loop baking
	- [OTHER] Refined much of code
	- [OTHER] UI corrections
v 0.0.6
	- [NEW] New variables for UI and other
	- [FIX] RESET CHECKBOX button event
	- [FIX] All reset events debug log
	- [OTHER] Small text/descriptions fixes
	- [OTHER] Set new default values
	- [REMOVE] "Set cycle infinity" checkbox (combined with "Looping animation")
v 0.0.5
	- [NEW] Separated reset for TRANSLATION and ROTATION variables and added CHECKBOX reset
	- [NEW] "Set cycle infinity" checkbox for cycle/constant infinity
	- [OTHER] Full reconstructed UI
	- [OTHER] Rewrited some script blocks
	- [OTHER] New test checkboxes for future features
v 0.0.4
	- [OTHER] Replaced all descriptions and comments to english
	- [OTHER] Changed font size of buttons
	- [OTHER] Rewrited main instruction
v 0.0.3
	- [NEW] Can use locked translations and rotations
	- [NEW] Checkbox reverse aim axis Y (1, -1)
	- [FIX] Combined 2 checkboxes to 1 for loop animation
v 0.0.2
	- [NEW] Rotation simulation script
	- [NEW] Instruction (rus)
	- [FIX] Symbols issue (":" and "|" will replaced by "_" symbol)
	- [OTHER] Few text corrections
v 0.0.1
	- [NEW] UI and test
	- [NEW] Layouts and descriptions
v 0.0.0
	- [NEW] Translation simulation script
	- [NEW] Bking animation to layers
"""
################################################################################
""" TO DO    ||| FOR DEBUG ||| sys.exit() |||
	- Hierarchy mode
	- Split chain mode (Rotation script)

	- Fix descriptions
	- Timeline returns to frame before simulation
	- Add keys to attributes before simulation
	- Add "min loop factor" controller
	
	- Deselect shapes from list
	
	- Gravity options
	- Twist mode
	- Limit to particles active zone from spawn point
	- Stop "ESC"
	- Save prefs to file
"""
################################################################################
# Import
import maya.cmds as cmds
import sys
from datetime import datetime



class TheOverlappy:
	""""TheOverlappy" class is cool"""
	class OverlappyObject:
		""""OverlappyObject" class is amazing"""
		
		# Slider values
		T_goal_smooth, T_time_scale, T_goal_weight = 1.5, 0.3, 0.5
		R_goal_smooth, R_time_scale, R_goal_weight = 1.5, 0.3, 0.5
		
		goalSmooth_min, goalSmooth_limit, goalSmooth_max = 0.0, 4.0, 10.0
		timeScale_min, timeScale_limit, timeScale_max = 0.01, 1.0, 10.0
		goalWeight_min, goalWeight_max = 0.0, 1.0
		
		slider_height = 30
		precision = 2
		
		# Checkboxes
		check_cycle = False
		aim_vector_reverse = False
		hierarchy_mode = False
		
		# Start and end scale simulation time
		min_loop_factor, max_loop_factor = 1, 2
		
		# Particle
		particle_radius = 0.253
		particle_shape = 4
		
		# UI size
		window_width = 330
		sl_Width = 300
		Bg1 = 0.85
		Bg2 = 0.3
		rW1 = 163
		rW2 = 4
		rW3 = 163
		
		#Set colors
		frame_color_1 = (0.1, 0.1, 0.1)
		frame_color_2 = (1, 0.4, 0.4)
		yellow_button = (1, 1, 0.5)
		red_button = (1, 0.4, 0.4)
		blue_button = (0.4, 0.8, 1)
		green_button = (0.4, 1, 0.4)
		end_color_1 = (0.9, 0.5, 0.5)
		link_color_1 = (0.9, 0.55, 0.55)
		link_color_2 = (0.9, 0.4, 0.4)
		
		# Logs
		printLog_T_smooth = "Translation smooth ="
		printLog_T_scale = "Translation scale ="
		printLog_T_weight = "Translation weight ="
		
		printLog_R_smooth = "Rotation smooth ="
		printLog_R_scale = "Rotation scale ="
		printLog_R_weight = "Rotation weight ="
		
		printLog_cycle = "Looping animation ="
		printLog_aimReverse = "Aim reverse ="
		printLog_hierarchy = "Hierarchy mode ="
		printLog_resetAll = "Reset all values"
		
		myLog = "LOG:"
		myMessage = "MESSAGE:"
		myError = "ERROR:"
		
		# Layers
		root_layer_name = "OVERLAPPY"
		safe_layer_name = "SAVED_Overlaps"
		prefix_base_layer = ["default_", "translate_", "rotate_"]
		final_layer_name = prefix_base_layer[0] + "_layer"
		
		# Technical
		simState = prefix_base_layer[0]
		default_channels = [("x","y","z"), ("y","z"), ("x","z"), ("x","y")]
		translate_attr_names = ["translateX", "translateY", "translateZ"]
		rotate_attr_names = ["rotateX", "rotateY", "rotateZ"]
		temp_obj_node = "temp_copyObj"
		nonLocked_attributes = [] #?? Нужно ли создавать её здесь??
		start_time, end_time = 0, 1
		
		# UI
		main_window_name = 'OverlappyUI'
		UI_layout = 'root_layout'
		
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
		hierarchy_checkbox_name = "hierarchy_mode_checkbox"
		
		# Labels
		script_label = "Overlappy"
		script_version = "v0.1.0"
		main_window_label = "{0} {1}".format(script_label, script_version)
		
		TL_label = "TRANSLATION VALUES"
		RL_label = "ROTATION VALUES"
		CH1_label = "OPTIONS"
		B1_label = "BUTTONS"
		about_label = "ABOUT"
		
		smooth_label = 'Smooth'
		scale_label = 'Scale'
		weight_label = 'Weight'
		
		TB_run_label = "RUN TRANSLATION BAKING"
		RB_run_label = "RUN ROTATION BAKING"
		Aim_reverse_label = "Aim reverse"
		Cycle_checkbox_label = "Looping animation"
		
		reset_button_label = "RESET VALUES"
		resetAll_button_label = "RESET ALL"
		delete_label = "DELETE"
		move_label = "MOVE"
		
		# Annotations
		goal_smooth_ann = "You can increase the maximum limit to 10.0 by entering the value manually"
		
		time_scale_ann = "You can increase the maximum limit to 10.0 by entering the value manually"
		goal_weight_annn = ""
		
		T_reset_ann = 'Reset all translation values'
		R_reset_ann = 'Reset all rotation values'
		CH1_reset_ann = 'Reset options'
		resetAll_ann = 'Reset all values and options in script window'
		
		aim_reverse_ann = '\
		For reorientation aim for rotation script. May be useful \n\
		when rotation simulation bake animation with incorrect rotations.'
		
		cycle_checkbox_ann = '\
		USE 60 FPS \n\
		Strong recomended to use animation minimum\
		with 1 phase before and after animation cycle. \n\
		Simple way to do it just use pre and post infinity \
		with "Cycle" option in graph editor. \n\
		After baking loop animation on layer will be set cycle infinity'
		
		delete_ann = 'Delete main layer "OVERLAPPY" with all layers inside'
		
		move_ann = '\
		Move all keyed layers from "OVERLAPPY" layer to "SAVED_Overlaps". \n\
		DELETE button cant delete saved layers.'
		
		# Text
		aboutText = (\
		"Report bugs and leave rewiew please", "vk.com/geneugene3d",\
		"www.artstation.com/geneugene", "www.highend3d.com/users/geneugene",\
		"www.highend3d.com/maya/script/overlappy-for-maya-105076")
		
		# Other declarations
		list_objects = []
		list_fixed = []
		
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
		
		# Progress bar
		progressBar_step_value = 10
		progressBar_name = "Overlappy_ProgressBar"
		progressBar_text = "Please wait"
		progressControl = None
		
		
		
		########################################################################
		########################################################################
		
		
		
		# Reset
		@classmethod
		def reset_translation_sliders(cls, pr=True):
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, e = True, min = cls.goalSmooth_min, max = cls.goalSmooth_limit, fmx = cls.goalSmooth_max, v = cls.T_goal_smooth)
			cmds.floatSliderGrp(obj.T_sliderScale_name, e = True, min = cls.timeScale_min, max = cls.timeScale_limit, fmx = cls.timeScale_max, v = cls.T_time_scale)
			cmds.floatSliderGrp(obj.T_sliderWeight_name, e = True, min = cls.goalWeight_min, max = cls.goalWeight_max, v = cls.T_goal_weight)
			
			obj.T_goal_smooth = cls.T_goal_smooth
			obj.T_time_scale = cls.T_time_scale
			obj.T_goal_weight = cls.T_goal_weight
			
			if pr:
				print obj.printLog_T_smooth, obj.T_goal_smooth
				print obj.printLog_T_scale, obj.T_time_scale
				print obj.printLog_T_weight, obj.T_goal_weight
		
		@classmethod
		def reset_rotation_sliders(cls, pr=True):
			cmds.floatSliderGrp(obj.R_sliderSmooth_name, e = True, min = cls.goalSmooth_min, max = cls.goalSmooth_min, fmx = cls.goalSmooth_max, v = cls.R_goal_smooth)
			cmds.floatSliderGrp(obj.R_sliderScale_name, e = True, min = cls.timeScale_min, max = cls.timeScale_limit, fmx = cls.timeScale_max, v = cls.R_time_scale)
			cmds.floatSliderGrp(obj.R_sliderWeight_name, e = True, min = cls.goalWeight_min, max = cls.goalWeight_max, v = cls.R_goal_weight)
			
			obj.R_goal_smooth = cls.R_goal_smooth
			obj.R_time_scale = cls.R_time_scale
			obj.R_goal_weight = cls.R_goal_weight
			
			if pr:
				print obj.printLog_R_smooth, obj.R_goal_smooth
				print obj.printLog_R_scale, obj.R_time_scale
				print obj.printLog_R_weight, obj.R_goal_weight
		
		@classmethod
		def reset_checkboxes(cls, pr=True):
			cmds.checkBox(obj.cycle_checkbox_name, e = True, v = cls.check_cycle)
			cmds.checkBox(obj.aimReverse_checkbox_name, e = True, v = cls.aim_vector_reverse)
			cmds.checkBox(obj.hierarchy_checkbox_name, e = True, v = cls.hierarchy_mode)
			
			obj.check_cycle = cls.check_cycle
			obj.aim_vector_reverse = cls.aim_vector_reverse
			obj.hierarchy_mode = cls.hierarchy_mode
			
			if pr:
				print obj.printLog_cycle, obj.check_cycle
				print obj.printLog_aimReverse, obj.aim_vector_reverse
		
		@classmethod
		def reset_all(cls, pr=True):
			obj.reset_translation_sliders(False)
			obj.reset_rotation_sliders(False)
			obj.reset_checkboxes(False)
			if pr:
				print obj.printLog_resetAll
		
		
		
		# Events
		@staticmethod
		def T_print_smooth():
			obj.T_goal_smooth = cmds.floatSliderGrp(obj.T_sliderSmooth_name, q = True, v = True)
			print obj.printLog_T_smooth, obj.T_goal_smooth
		
		@staticmethod
		def T_print_scale():
			obj.T_time_scale = cmds.floatSliderGrp(obj.T_sliderScale_name, q = True, v = True)
			print obj.printLog_T_scale, obj.T_time_scale
		
		@staticmethod
		def T_print_weight():
			obj.T_goal_weight = cmds.floatSliderGrp(obj.T_sliderWeight_name, q = True, v = True)
			print obj.printLog_T_weight, obj.T_goal_weight
		
		@staticmethod
		def R_print_smooth():
			obj.R_goal_smooth = cmds.floatSliderGrp(obj.R_sliderSmooth_name, q = True, v = True)
			print obj.printLog_R_smooth, obj.R_goal_smooth
		
		@staticmethod
		def R_print_scale():
			obj.R_time_scale = cmds.floatSliderGrp(obj.R_sliderScale_name, q = True, v = True)
			print obj.printLog_R_scale, obj.R_time_scale
		
		@staticmethod
		def R_print_weight():
			obj.R_goal_weight = cmds.floatSliderGrp(obj.R_sliderWeight_name, q = True, v = True)
			print obj.printLog_R_weight, obj.R_goal_weight
		
		@staticmethod
		def print_check_cycle():
			obj.check_cycle = cmds.checkBox(obj.cycle_checkbox_name, q = True, v = True)
			print obj.printLog_cycle, obj.check_cycle
			
		@staticmethod
		def print_check_vector():
			obj.aim_vector_reverse = cmds.checkBox(obj.aimReverse_checkbox_name, q = True, v = True)
			print obj.printLog_aimReverse, obj.aim_vector_reverse
		
		@staticmethod
		def print_hierarchy_mode():
			obj.hierarchy_mode = cmds.checkBox(obj.hierarchy_checkbox_name,
															q = True, v = True)
			print obj.printLog_hierarchy, obj.hierarchy_mode
			
			
		
		@staticmethod
		def resize_UI():
			cmds.window(obj.main_window_name, e = True, wh = (10, 10), rtf = True)
		
		
		
		# Hierarchy logics
		@staticmethod
		def SelectTransformHierarchy():
			cmds.select(hi = True)
			transfList = cmds.ls(sl = True, typ = "transform", s = False)
			cmds.select(cl = True )
			for i in range(len(transfList)):
				cmds.select(transfList[i], add = True)
		
		

		
		
		# UI
		@staticmethod
		def close_progressbar():
			if cmds.window(obj.progressBar_name, exists = True):
				cmds.deleteUI(obj.progressBar_name)
		
		@staticmethod
		def setup_progressbar(stepCount): # NEED TO REFACTOR
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
		def create_ui(): # NEED TO REFACTOR
			if cmds.window(obj.main_window_name, exists = True):
				cmds.deleteUI(obj.main_window_name)
			obj.close_progressbar()
			
			cmds.window(obj.main_window_name, title = obj.main_window_label,
														mxb = False, s = True)
			cmds.window(obj.main_window_name, e = True, rtf = True,
								wh = (10, 10), cc = "obj.close_progressbar()")
			
			cmds.columnLayout(obj.UI_layout, rs = 4, adj = True)
			
			# Translate layout
			cmds.frameLayout(obj.T_layout_name, l = obj.TL_label, cll = 1,
								bgc = obj.frame_color_1, parent = obj.UI_layout,
								cc = ('obj.resize_UI()'))
			
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, l = obj.smooth_label, f = True,
								cc = ('obj.T_print_smooth()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_smooth_ann,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			cmds.floatSliderGrp(obj.T_sliderScale_name, l = obj.scale_label, f = True,
								cc = ('obj.T_print_scale()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.time_scale_ann,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			cmds.floatSliderGrp(obj.T_sliderWeight_name, l = obj.weight_label, f = True,
								cc = ('obj.T_print_weight()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_weight_annn,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			
			cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, obj.rW1), (2, obj.rW2), (3, obj.rW3)])
			
			cmds.button(label = obj.reset_button_label, command = ('obj.reset_translation_sliders()'),
								bgc = obj.yellow_button, h = obj.slider_height,
								ann = obj.T_reset_ann)
			
			cmds.separator(h = obj.slider_height / 1.25, style = 'none')
			
			#cmds.button(label = obj.TB_run_label, command = ('obj.translate_simulation()'),
			cmds.button(label = obj.TB_run_label,
					command = ('obj.run_simulation(obj.prefix_base_layer[1])'),
					bgc = obj.green_button, h = obj.slider_height)
			
			
			
			# Rotate layout
			cmds.frameLayout(obj.R_layout_name, l = obj.RL_label, cll = 1,
								bgc = obj.frame_color_1, parent = obj.UI_layout,
								cc = ('obj.resize_UI()'))
			
			cmds.floatSliderGrp(obj.R_sliderSmooth_name, l = obj.smooth_label, f = True,
								cc = ('obj.R_print_smooth()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_smooth_ann,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			cmds.floatSliderGrp(obj.R_sliderScale_name, l = obj.scale_label, f = True,
								cc = ('obj.R_print_scale()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.time_scale_ann,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			cmds.floatSliderGrp(obj.R_sliderWeight_name, l = obj.weight_label, f = True,
								cc = ('obj.R_print_weight()'), pre = obj.precision,
								w = obj.sl_Width, ann = obj.goal_weight_annn,
								cal = (1, "left"), cw3 = (45, 50, 10) )
			
			
			cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, obj.rW1), (2, obj.rW2), (3, obj.rW3)])
			
			cmds.button(label = obj.reset_button_label, command = ('obj.reset_rotation_sliders()'),
								bgc = obj.yellow_button, h = obj.slider_height,
								ann = obj.R_reset_ann)
			
			cmds.separator(h = obj.slider_height / 1.25, style = 'none')
			
			cmds.button(label = obj.RB_run_label,
										#command = ('obj.rotate_simulation()'),
					command = ('obj.run_simulation(obj.prefix_base_layer[2])'),
					bgc = obj.green_button, h = obj.slider_height)
			
			
			
			# Checkbox layout
			cmds.frameLayout(obj.CH1_layout_name, l = obj.CH1_label, cll = 1,
								bgc = obj.frame_color_1, p = obj.UI_layout,
								cc = ('obj.resize_UI()'))
			
			
			
## Надо решить
			columns_count1 = 3
			cWraw1 = obj.window_width / columns_count1
			cellOffset1 = 10
			cHeight1 = obj.slider_height / 1.3
## Надо решить
			
			cmds.rowColumnLayout(numberOfColumns = columns_count1, columnWidth = [
															(1, cWraw1),
															(2, cWraw1 - cellOffset1),
															(3, cWraw1 + cellOffset1)])
			
			cmds.separator(h = obj.slider_height / 4, style = 'none')
			cmds.separator(style = 'none')
			cmds.separator(style = 'none')
			
			## Cell #1 ##
			## Reset button ##
			cmds.button(label = obj.reset_button_label, command = ('obj.reset_checkboxes()'),
								bgc = obj.yellow_button, h = cHeight1,
								ann = obj.CH1_reset_ann)
			
			## Cell #2 ##
			## Aim reverse #1 ##
			cmds.checkBox(obj.aimReverse_checkbox_name, label = obj.Aim_reverse_label,
								cc = ('obj.print_check_vector()'),
								bgc = (obj.Bg1, obj.Bg1, obj.Bg1), ann = obj.aim_reverse_ann)
			
			## Cell #3 ##
			## Cycle #2 ##
			cmds.checkBox(obj.cycle_checkbox_name, label = obj.Cycle_checkbox_label,
								h = cHeight1, cc = ('obj.print_check_cycle()'),
								bgc = (obj.Bg1, obj.Bg1, obj.Bg1),
								ann = obj.cycle_checkbox_ann)
			
			## Cell #4 ##
			## Empty ##
			cmds.separator(style = 'none')
			
## Надо решить
			## Cell #5 ##
			## Checkbox #3 ##
			cmds.checkBox("test_checkbox_5", label = "", v = False, en = False,
					cc = ('print "Hello TEST!!!"'), h = cHeight1, bgc = (obj.Bg1, obj.Bg1, obj.Bg1),
					ann = "Work in progress")
## Надо решить
			## Cell #6 ##
			## Hierarchy mode #4 ##
			cmds.checkBox(obj.hierarchy_checkbox_name, label = "Hierarchy mode",
									h = cHeight1, cc = ('obj.print_hierarchy_mode()'),
									bgc = (obj.Bg1, obj.Bg1, obj.Bg1),
									ann = "Work in progress")
## Надо решить
			
			
			
			
			
			# Button layout
			cmds.frameLayout(obj.B1_layout_name, l = obj.B1_label, cll = 1, bgc = obj.frame_color_1,
										parent = obj.UI_layout, cc = ('obj.resize_UI()'))
			
## Надо решить
			columns_count2 = 5
			cWraw2 = obj.window_width / columns_count2
## Надо решить
			
			cmds.rowColumnLayout(numberOfColumns = columns_count2, columnWidth = [
											(1, cWraw2), (2, cWraw2), (3, cWraw2),
											(4, cWraw2), (5, cWraw2)], p = obj.B1_layout_name)
			## Cell #1 ##
			cmds.button(label = obj.resetAll_button_label, command = ('obj.reset_all()'),
								bgc = obj.yellow_button, h = obj.slider_height, ann = obj.resetAll_ann)
			## Cell #2 ##
			cmds.button(label = "", command = ('print "button 2"'), en = False,
								h = obj.slider_height, ann = "")
			## Cell #3 ##
			cmds.button(label = obj.delete_label, command = ('obj.delete_overlappy_layer()'),
								bgc = obj.red_button, h = obj.slider_height, ann = obj.delete_ann)
			## Cell #4 ##
			cmds.button(label = "", command = ('print "some command"'), en = False,
								h = obj.slider_height, ann = "")
			## Cell #5 ##
			cmds.button(label = obj.move_label, command = ('obj.move_layers_to_safe()'), en = True,
								bgc = obj.blue_button, h = obj.slider_height, ann = obj.move_ann)
			
			
			
			## Cell #6 ##
			cmds.button(label = "", command = ('print "some command"'), en = False,
												h = obj.slider_height, ann = "")
			## Cell #7 ##
			cmds.button(label = "", command = ('print "some command"'), en = False,
												h = obj.slider_height, ann = "")
			## Cell #8 ##
			cmds.button(label = "", command = ('print "some command"'), en = False,
												h = obj.slider_height, ann = "")
			## Cell #9 ##
			cmds.button(label = "", command = ('print "some command"'), en = False,
												h = obj.slider_height, ann = "")
			## Cell #10 ##
			cmds.button(label = "HIERARCHY", command = ('obj.SelectTransformHierarchy()'),
								en = True, h = obj.slider_height,
								ann = "Select transform hierarchy (without shapes)")
			
			
			
			# About layout
			cmds.columnLayout(obj.about_layout_name, rs = 4, adj = True,
								parent = obj.UI_layout, bgc = obj.end_color_1)
			
			cmds.frameLayout(l = obj.about_label, cll = 1, bgc = obj.frame_color_2,
								cl = 1, p = obj.about_layout_name, cc = ('obj.resize_UI()'))
			
			cmds.text(obj.aboutText[0], h = 20)
			cmds.text(obj.aboutText[1], hl = True, h = 20, bgc = obj.link_color_1)
			cmds.text(obj.aboutText[2], hl = True, h = 20, bgc = obj.link_color_1)
			cmds.text(obj.aboutText[3], hl = True, h = 20, bgc = obj.link_color_2)
			cmds.text(obj.aboutText[4], hl = True, h = 20, bgc = obj.link_color_2)
			
			cmds.showWindow(obj.main_window_name)
		
		
		
		# Main methods
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
				print obj.myError, obj.root_layer_name, "layer not created yet"
		
		@staticmethod
		def move_layers_to_safe():
			if(cmds.objExists(obj.root_layer_name)):
				obj.playback_range_initialization()
				# Get list of all final layers into OVERLAPPY layer
				obj.layerList1 = cmds.animLayer(obj.root_layer_name, q = True, c = True)
				if obj.layerList1 == None:
					print obj.myError, obj.root_layer_name, "has no layers inside"
				else:
					if len(obj.layerList1) == 0:
						print obj.myError, "No layers with animation keys"
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
				print obj.myError, obj.root_layer_name, "layer not created, nothing to move"
		
		@staticmethod
		def replaceSymbols():
			for i in range(len(obj.list_fixed)):
				obj.list_fixed[i] = obj.list_fixed[i].replace("|", "_")
				obj.list_fixed[i] = obj.list_fixed[i].replace(":", "_")
		
		@staticmethod
		def get_nonLocked_attributes(i): # and duplicate transform node
			obj.reset_range_time()
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
				print obj.myError, '"get_nonLocked_attributes()":', "state error #1"
				#print myLog, '"simState" =', simState
			
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
				
				if (lockX != True):
					obj.nonLocked_attributes.append(temp_locked_names[0])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = True,
												st = obj.default_channels[temp_index[0]],
												sr = obj.default_channels[temp_index[1]], w = 1)
				if (lockY != True):
					obj.nonLocked_attributes.append(temp_locked_names[1])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = True,
												st = obj.default_channels[temp_index[2]],
												sr = obj.default_channels[temp_index[3]], w = 1)
				if (lockZ != True):
					obj.nonLocked_attributes.append(temp_locked_names[2])
					cmds.parentConstraint(temp_constraint_parent, obj.temp_obj_node, mo = True,
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
				print obj.myError, '"get_nonLocked_attributes()":', "state error #3"
			
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
			#cmds.copyKey(obj.temp_obj_node, at = nonLocked_attributes)
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
				print obj.myError, '"copyPaste_main_animation()":', "state error #3"
			obj.reset_range_time()
		
		
		
		# Playback setup
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
		
		
		
		# Main scripts
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
		def main_select_close():
			for l in obj.list_objects:
				cmds.select(l, add = True)
			obj.close_progressbar()
		
		
		
		
		# Simulation
		@staticmethod
		def run_simulation(currentState):
			start_time = datetime.now()
			obj.simState = currentState
			obj.main_start()
			
			
			# hierarchy_mode NEED CONDITION
			
			
			
			# Translate block
			if obj.simState == obj.prefix_base_layer[1]:
				if (len(obj.list_objects) == 0):
					print obj.myError, "Need to select 1 or more objects"
				else:
					print obj.myMessage, "Selected {0} objects".format(len(obj.list_objects))
					obj.setup_progressbar(len(obj.list_objects)) # start progress bar
					obj.create_overlappy_layer()
					obj.replaceSymbols()
					for i in range(len(obj.list_fixed)):
						obj.main_set_names(i)
						obj.main_translate_logic(i)
						obj.main_last_part(i)
					obj.main_select_close()
				
			# Rotate block
			if obj.simState == obj.prefix_base_layer[2]:
				if (len(obj.list_objects) <= 1):
					print obj.myError, "Need to select 2 or more objects"
				else:
					print obj.myMessage, "Selected {0} objects".format(len(obj.list_objects) - 1)
					obj.setup_progressbar(len(obj.list_objects) - 1) # start progress bar
					obj.create_overlappy_layer()
					obj.replaceSymbols()
					for i in range(len(obj.list_fixed)-1):
						obj.main_set_names(i)
						obj.main_rotate_logic(i)
						obj.main_last_part(i)
					obj.main_select_close()
			
			
			obj.simState = obj.prefix_base_layer[0]
			end_time = datetime.now()
			print "\t", obj.myMessage, "Overlappy time: {}".format(end_time - start_time)
		
		
		
		
		
		
		# OLD CODE
		@staticmethod
		def translate_simulation(): ######## Need to remove
			obj.simState = obj.prefix_base_layer[1]
			obj.playback_range_initialization()
			obj.reset_range_time()
			obj.list_objects = cmds.ls(sl = True)
			obj.list_fixed = obj.list_objects[:]
			
			if (len(obj.list_objects) == 0):
				print obj.myError, "Need to select 1 or more objects"
			else:
				print obj.myMessage, "Selected {0} objects".format(len(obj.list_objects))
				obj.setup_progressbar(len(obj.list_objects)) # start progress bar window
				
				obj.create_overlappy_layer()
				obj.replaceSymbols()
				
				for i in range(len(obj.list_fixed)):
					obj.main_set_names(i)
					
					#### Create main logic ####
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
					
					#### Layers, connections, baking, copy/paste ####
					obj.get_nonLocked_attributes(i)
					
					cmds.select(d = True)
					cmds.progressBar(obj.progressControl, edit = True, step = obj.progressBar_step_value)
				
				#### Select list in initial order, close progressbar ####
				for l in obj.list_objects:
					cmds.select (l, add = True)
				obj.close_progressbar()
				
				print obj.myMessage, obj.root_layer_name, "ends simulation"
			obj.simState = obj.prefix_base_layer[0]
		
		@staticmethod
		def rotate_simulation(): ######## Need to remove
			obj.simState = obj.prefix_base_layer[2]
			obj.playback_range_initialization()
			obj.reset_range_time()
			obj.list_objects = cmds.ls(sl = True)
			obj.list_fixed = obj.list_objects [:]
			
			if (len(obj.list_objects) <= 1):
				print obj.myError, "Need to select 2 or more objects"
			else:
				print obj.myMessage, "Selected {0} objects (the last element is discarded)".format(len(obj.list_objects) - 1)
				obj.setup_progressbar(len(obj.list_objects) - 1) # start progress bar window
				
				obj.create_overlappy_layer()
				obj.replaceSymbols()
				
				for i in range(len(obj.list_fixed)-1):
					#### Set names #### ########## Need to create method
					
					obj.main_set_names(i)
					
					#### Create main logic ####
					if obj.aim_vector_reverse: obj.rotAimVector = -1
					else: obj.rotAimVector = 1
					
					## Create locators ##
					cmds.spaceLocator(n = obj.base_locator)
					cmds.matchTransform (obj.base_locator, obj.list_objects[i], pos = True, rot = True)
					cmds.duplicate(obj.base_locator, n = obj.base_aim_locator)
					cmds.parent(obj.base_aim_locator, obj.base_locator, a = True)
					
					cmds.duplicate(obj.base_aim_locator, n = obj.offset_aim_locator)
					
					cmds.parentConstraint(obj.list_objects[i], obj.base_locator, mo = True, w = 1)
					
					cmds.spaceLocator(n = obj.goal_locator)
					cmds.matchTransform (obj.goal_locator, obj.list_objects[i + 1], pos = True, rot = True)
					cmds.parentConstraint(obj.list_objects[i + 1], obj.goal_locator, mo = True, w = 1)
					
					cmds.spaceLocator(n = obj.goal_aim_locator)
					
					## Create particle and nucleus ##
					obj.goal_position = cmds.getAttr(obj.goal_locator + ".translate")
					cmds.nParticle(p = obj.goal_position, n = obj.np_name, c = 1)
					cmds.goal(obj.np_name, w = obj.T_goal_weight, utr = 1, g = obj.goal_locator)
					
					## Create connections ##
					cmds.connectAttr(obj.np_center, obj.goal_aim_locator_pos, f = True)
					cmds.aimConstraint(obj.goal_aim_locator, obj.base_aim_locator, w = 1,
											aim = (0, obj.rotAimVector, 0), u = (0, 1, 0),
											wut = "vector", wu = (0, 1, 0), sk = "y")
					
					cmds.parentConstraint(obj.base_aim_locator, obj.offset_aim_locator,
											mo = True, st=["x","y","z"], w = 1)
					
					#### Layers, connections, baking, copy/paste ####
					obj.get_nonLocked_attributes(i)
					
					cmds.select(d = True)
					cmds.progressBar(obj.progressControl, edit = True, step = obj.progressBar_step_value)
					
				#### Select list in initial order, close progressbar ####
				for l in obj.list_objects:
					cmds.select (l, add = True)
				obj.close_progressbar()
				
				print obj.myMessage, obj.root_layer_name, "ends simulation"
			obj.simState = obj.prefix_base_layer[0]
		
		
		
		# Run code
		@staticmethod
		def RunOverlappy():
			obj.create_ui()
			obj.reset_all(False)
			print "Overlappy start UI"
		
		
		
obj = TheOverlappy.OverlappyObject()
obj.RunOverlappy()


################################################################################
###### End code ######