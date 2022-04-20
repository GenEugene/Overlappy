######
###############################################################################
""" Links
https://www.highend3d.com/maya/script/overlappy-for-maya-105076 - Overlappy page
https://www.highend3d.com/users/geneugene - Highend page
https://www.artstation.com/geneugene - 3d portfolio (modeling, texturing, animation)
https://vk.com/geneugene3d - My page in social media
"""
###############################################################################
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
###############################################################################
""" Version history
v 0.0.0
	- manual tests
	- created Translation simulation script
	- added baking animation to layers
v 0.0.1
	- created ui and test
	- added layouts and descriptions
v 0.0.2
	- added Rotation simulation script
	- fixed symbols issue (":" and "|" will replaced by "_" symbol)
	- few text corrections
	- added instruction (rus)
v 0.0.3
	- can use locked translations and rotations
	- added checkbox reverse aim axis Y (1, -1)
	- combined 2 checkboxes to 1 for loop animation
v 0.0.4
	- replaced all descriptions and comments to english
	- changed font size of buttons
	- rewrite main instruction
v 0.0.5
	- separated reset for TRANSLATION and ROTATION variables and added CHECKBOX reset
	- full reconstructed UI
	- rewrited some script blocks
	- added new test checkboxes for future features
	- added "Set cycle infinity" checkbox for cycle/constant infinity
v 0.0.6
	- removed "Set cycle infinity" checkbox (combined with "Looping animation")
	- fixed RESET CHECKBOX button event
	- fixed all reset events debug log
	- small text/descriptions fixes
	- set new default values
	- added new variables for UI and other
v 0.0.7
	- !!! fixed incorrect loop baking
	- !!! fixed non zero start animation loop baking
	- added progress bar
	- refined much of code
	- UI corrections
v 0.0.8
	- !!! added compatibility with Maya 2017
	- added "MOVE" button to move all overlappy keyed layers to safe layer
	- added "offsetLocator" for calculate angle offsets
	- fixed "'list_objects' is not defined"
	- fixed constraints offset baking
	- removed "sbm" parameter from frameLayout's
	- removed "cycleInfinity" variable
v 0.0.9
	- !!! fixed "blendParent1" issue !!!
	- !!! optimized speed, reduced simulation passes (from 2-3 to 1) !!!
	- rewrited layer logic, safe move and much other logic
	- created simulation states (for translate/rotate/other separation)
	- fixed progressbar events
	- fixed MOVE button exceptions
"""
###############################################################################
""" TO DO    ||| FOR DEBUG ||| sys.exit() |||
	- 1. union script*
	- 2. add "min loop factor" controller
	- 3. hierarchy mode

	- 4. add gravity slider
	- 5. add dump slider

	- 6. twist logic
	- 7. stop "ESC"
"""
###############################################################################
###### 0. Start code ######

import maya.cmds as cmds

###### 1. Set main variables ######

def set_checkbox_values():
	global check_cycle; check_cycle = False # Animation cycle check
	global aim_vector_reverse; aim_vector_reverse = False # Reverse aim vector
def set_translation_values():
	global T_goal_smooth; T_goal_smooth = 1.5 # Translation goal smooth
	global T_time_scale; T_time_scale = 0.3 # Translation time scale
	global T_goal_weight; T_goal_weight = 0.5 # Translation goal weight
def set_rotation_values():
	global R_goal_smooth; R_goal_smooth = 1.5 # Rotation goal smooth
	global R_time_scale; R_time_scale = 0.3 # Rotation time scale
	global R_goal_weight; R_goal_weight = 0.5 # Rotation goal weight
def set_other_values():
	global particle_radius; particle_radius = 0.253 # Radius of nParticle mesh
	global particle_shape; particle_shape = 4 # Type of nParticle mesh
	
	global min_loop_factor; min_loop_factor = 1 # Start scale simulation time
	global max_loop_factor; max_loop_factor = 2 # End scale simulation time
	
	global slider_width; slider_width = 300 # Slider width
	global slider_height; slider_height = 30 # Button height
	
	global Bg1; Bg1 = 0.85
	global Bg2; Bg2 = 0.3
	
	global window_width; window_width = 330
	global rW1; rW1 = 163
	global rW2; rW2 = 4
	global rW3; rW3 = 163
	
	#### Set colors ####
	
	global frame_color_1; frame_color_1 = (0.1, 0.1, 0.1)
	global frame_color_2; frame_color_2 = (1, 0.4, 0.4)
	
	global yellow_button; yellow_button = (1, 1, 0.5)
	global red_button; red_button = (1, 0.4, 0.4)
	global blue_button; blue_button = (0.4, 0.8, 1)
	global green_button; green_button = (0.4, 1, 0.4)
	
	global end_color_1; end_color_1 = (0.9, 0.5, 0.5)
	
	global link_color_1; link_color_1 = (0.9, 0.55, 0.55)
	global link_color_2; link_color_2 = (0.9, 0.4, 0.4)
def set_text_values():
	script_label = "Overlappy "
	script_version = "v0.0.9"
	
	global main_window_name; main_window_name = script_label + script_version
	global translation_script_name; translation_script_name = "TRANSLATION VALUES"
	global rotation_script_name; rotation_script_name = "ROTATION VALUES"
	
	global myError; myError = "ERROR:"
	global myLog; myLog = "LOG:"
	global myMessage; myMessage = "MESSAGE:"
	
	global goal_smooth_annotation; goal_smooth_annotation = "Goal smooth from 0.5 to 4 "
	global time_scale_annotation; time_scale_annotation = "Time scale from 0.15 to 0.4 "
	global goal_weight_annotation; goal_weight_annotation = "Goal weight 0.3 to 0.7 "
	
	global root_layer_name; root_layer_name = "OVERLAPPY"
	global safe_layer_name; safe_layer_name = "SAVED_Overlaps"
	
	## Layer control ##
	global prefix_base_layer; prefix_base_layer = ["default_", "translate_", "rotate_"]
	global simState; simState = prefix_base_layer[0]
	global final_layer_name; final_layer_name = prefix_base_layer[0] + "_layer"

	## Sliders values ##
	global slider_1_max; slider_1_max = 4.0 # slider1 max smooth slider
	global slider_2_max; slider_2_max = 0.5 # slider2 max scale slider
	global slider_3_max; slider_3_max = 1.0 # slider1 max weight slider

	global slider_4_max; slider_4_max = slider_1_max # slider4 max smooth slider
	global slider_5_max; slider_5_max = slider_2_max # slider5 max scale slider
	global slider_6_max; slider_6_max = slider_3_max # slider6 max weight slider
	
	## Other ##
	global translate_attr_names
	translate_attr_names = ["translateX", "translateY", "translateZ"]
	global rotate_attr_names
	rotate_attr_names = ["rotateX", "rotateY", "rotateZ"]
	global nonLocked_attributes; nonLocked_attributes = []
	global temp_obj_node; temp_obj_node = "temp_copyObj"
	global default_channels
	default_channels = [("x","y","z"), ("y","z"), ("x","z"), ("x","y")]

def set_checkbox_ui():
	cmds.checkBox("cycle_checkbox", e = True, v = check_cycle)
	cmds.checkBox("aim_reverse_checkbox", e = True, v = aim_vector_reverse)
def set_translation_sliders():
	cmds.floatSliderGrp("slider_1", e = True, f = True, min = 0.0,
							max = slider_1_max, fmx = 10, v = T_goal_smooth)
	cmds.floatSliderGrp("slider_2", e = True, f = True, min = 0.0,
							max = slider_2_max, fmx = 10, v = T_time_scale)
	cmds.floatSliderGrp("slider_3", e = True, f = True, min = 0.0,
							max = slider_3_max, v = T_goal_weight)
def set_rotation_sliders():
	cmds.floatSliderGrp("slider_4", e = True, f = True, min = 0.0,
							max = slider_4_max, fmx = 10, v = R_goal_smooth)
	cmds.floatSliderGrp("slider_5", e = True, f = True, min = 0.0,
							max = slider_5_max, fmx = 10, v = R_time_scale)
	cmds.floatSliderGrp("slider_6", e = True, f = True, min = 0.0,
							max = slider_6_max, v = R_goal_weight)

###############################################################################
###### 2. Reset UI variables ######

def reset_checkbox():
	set_checkbox_values()
	set_checkbox_ui()
	print myMessage, "Reset checkbox options"
def reset_translation():
	set_translation_values()
	set_translation_sliders()
	print myMessage, "Reset translation values"
def reset_rotation():
	set_rotation_values()
	set_rotation_sliders()
	print myMessage, "Reset rotation values"
def reset_all_button():
	set_checkbox_values()
	set_translation_values()
	set_rotation_values()
	set_checkbox_ui()
	set_translation_sliders()
	set_rotation_sliders()
	print myMessage, "Reset all values"

###############################################################################
###### 3. Events ######

#### Checkbox events ####
def func_check_cycle():
	check_cycle = cmds.checkBox("cycle_checkbox", q = True, v = True)
	print myMessage, "Looping animation", "=", check_cycle
	return check_cycle
def func_check_vector():
	aim_vector_reverse = cmds.checkBox("aim_reverse_checkbox", q = True, v = True)
	print myMessage, "Aim reverse", "=", aim_vector_reverse
	return aim_vector_reverse

#### Sliders events ####
def T_print_smooth():
	T_goal_smooth = cmds.floatSliderGrp("slider_1", q = True, v = True)
	print myMessage, "Translation smooth =", T_goal_smooth
	return T_goal_smooth
def T_print_scale():
	T_time_scale = cmds.floatSliderGrp("slider_2", q = True, v = True)
	print myMessage, "Translation scale =", T_time_scale
	return T_time_scale
def T_print_weight():
	T_goal_weight = cmds.floatSliderGrp("slider_3", q = True, v = True)
	print myMessage, "Translation weight =", T_goal_weight
	return T_goal_weight
def R_print_smooth():
	R_goal_smooth = cmds.floatSliderGrp ("slider_4", q = True, v = True)
	print myMessage, "Rotation smooth =", R_goal_smooth
	return R_goal_smooth
def R_print_scale():
	R_time_scale = cmds.floatSliderGrp ("slider_5", q = True, v = True)
	print myMessage, "Rotation scale =", R_time_scale
	return R_time_scale
def R_print_weight():
	R_goal_weight = cmds.floatSliderGrp ("slider_6", q = True, v = True)
	print myMessage, "Rotation weight =", R_goal_weight
	return R_goal_weight

###############################################################################
###### 4. UI ######

def close_progressbar(): # Just delete progressbar
	if cmds.window("progressBar", exists = True):
		cmds.deleteUI("progressBar")
def setup_progressbar(stepCount): # Progressbar setup
	close_progressbar()

	maxVal = 100
	barWidth = (rW1 + rW2) * 2
	barHeight = 30
	
	#winRes = cmds.window("MayaWindow", q = True, wh = True) # Get Maya window size
	winLeftCorner = cmds.window("main_overlappy_window", q = True, tlc = True)
	winLeftCorner[0] = winLeftCorner[0] - barHeight * 1.5
	
	windowText = "Please wait"
	buttonText = "Make Progress!"

	if (stepCount >= 1):
		global progress_step_value; progress_step_value = maxVal / stepCount

	#||||||||||||||||||||||||||||||||||||||||||||||||

	progressWindow = cmds.window("progressBar", title = windowText,
												s = False,
												rtf = True,
												tb = False)
	cmds.columnLayout()

	global progressControl; progressControl = cmds.progressBar(maxValue = maxVal,
												w = barWidth,
												h = barHeight)

	cmds.window(progressWindow, e = True, wh = (barWidth, barHeight))
	cmds.windowPref(progressWindow, e = True, tlc = winLeftCorner)
	
	cmds.showWindow(progressWindow)
def create_ui(): # Create main UI elements
	if cmds.window("main_overlappy_window", exists = True):
		cmds.deleteUI("main_overlappy_window")
	close_progressbar()

	overUI = cmds.window("main_overlappy_window", title = main_window_name,
													mxb = False, s = False)
	cmds.window("main_overlappy_window", e = True, wh = (10, 10), rtf = True)
	
	cmds.columnLayout('main_layout', rs = 4, adj = True)
	
	#### Translate layout ####
	cmds.frameLayout('testestes', l = translation_script_name, cll = 1,
						bgc = frame_color_1,
						parent = "main_overlappy_window",
						cc = ("""cmds.window('main_overlappy_window', e = True,
														h = 10, rtf = True)"""))
	
	cmds.floatSliderGrp("slider_1", l = 'Smooth', f = True, min = 0.0,
						max = slider_1_max, fmx = 10, v = T_goal_smooth,
						cc = ("""T_goal_smooth = T_print_smooth()"""), pre = 2,
						w = slider_width, ann = goal_smooth_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.floatSliderGrp("slider_2", l = 'Scale', f = True, min = 0.0,
						max = slider_2_max, fmx = 10, v = T_time_scale,
						cc = ("""T_time_scale = T_print_scale()"""), pre = 2,
						w = slider_width, ann = time_scale_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.floatSliderGrp("slider_3", l = 'Weight', f = True, min = 0.0,
						max = slider_3_max, v = T_goal_weight,
						cc = ("""T_goal_weight = T_print_weight()"""), pre = 2,
						w = slider_width, ann = goal_weight_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, rW1),
															 (2, rW2),
															 (3, rW3)])

	cmds.button(label = "RESET VALUES", command = ('reset_translation()'),
						bgc = yellow_button, h = slider_height,
						ann = 'Reset all translation values')
	cmds.separator(h = slider_height / 1.25, style = 'none')
	cmds.button(label = "RUN TRANSLATION BAKING", command = ('translate_simulation()'),
						bgc = green_button, h = slider_height)

	#### Rotate layout ####
	cmds.frameLayout("rotLayout", l = rotation_script_name, cll = 1,
						bgc = frame_color_1,
						parent = "main_overlappy_window",
						cc = ("""cmds.window("main_overlappy_window", e = True,
														h = 10, rtf = True)"""))
	
	cmds.floatSliderGrp("slider_4", l = 'Smooth', f = True, min = 0.0,
						max = slider_4_max, fmx = 10, v = R_goal_smooth,
						cc = ("""R_goal_smooth = R_print_smooth()"""), pre = 2,
						w = slider_width, ann = goal_smooth_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.floatSliderGrp("slider_5", l = 'Scale', f = True, min = 0.0, 
						max = slider_5_max, fmx = 10, v = R_time_scale,
						cc = ("""R_time_scale = R_print_scale()"""), pre = 2,
						w = slider_width, ann = time_scale_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.floatSliderGrp("slider_6", l = 'Weight', f = True, min = 0.0,
						max = slider_6_max, v = R_goal_weight,
						cc = ("""R_goal_weight = R_print_weight()"""), pre = 2,
						w = slider_width, ann = goal_weight_annotation,
						cal = (1, "left"), cw3 = (45, 50, 10) )
	
	cmds.rowColumnLayout(numberOfColumns = 3, columnWidth = [(1, rW1),
															 (2, rW2),
															 (3, rW3)])
	
	cmds.button(label = "RESET VALUES", command = ('reset_rotation()'),
						bgc = yellow_button, h = slider_height,
						ann = """Reset all rotation values""")
	cmds.separator(h = slider_height / 1.25, style = 'none')
	cmds.button(label = "RUN ROTATION BAKING", command = ('rotate_simulation()'),
						bgc = green_button, h = slider_height)

	#### Checkbox layout ####
	cmds.frameLayout("checkboxLayout", l = 'OPTIONS', cll = 1,
						bgc = frame_color_1, p = "main_overlappy_window",
						cc = ("""cmds.window("main_overlappy_window", e = True,
						h = 10, rtf = True)"""))
	
	columns_count1 = 3
	cWraw1 = window_width / columns_count1
	cellOffset1 = 10
	cHeight1 = slider_height / 1.3
	
	cmds.rowColumnLayout(numberOfColumns = columns_count1, columnWidth = [
													(1, cWraw1),
													(2, cWraw1 - cellOffset1),
													(3, cWraw1 + cellOffset1)])

	cmds.separator(h = slider_height / 4, style = 'none')
	cmds.separator(style = 'none')
	cmds.separator(style = 'none')
	
	## Cell #1 ##
	## Reset button ##
	cmds.button(label = "RESET OPTIONS", command = ('reset_checkbox()'),
						bgc = yellow_button, h = cHeight1,
						ann = """Reset options""")

	## Cell #2 ##
	## Checkbox #1 ##
	cmds.checkBox("aim_reverse_checkbox", label = "Aim reverse",
						v = aim_vector_reverse,
						cc = ("""aim_vector_reverse = func_check_vector()"""),
						bgc = (Bg1, Bg1, Bg1), ann = 
	'''For reorientation aim for rotation script. May be useful
when rotation simulation bake animation with incorrect rotations.''')

	## Cell #3 ##
	## Checkbox #2 ##
	cmds.checkBox("cycle_checkbox", label = "Looping animation", h = cHeight1,
						v = check_cycle, cc = ("""check_cycle = func_check_cycle()"""),
						bgc = (Bg1, Bg1, Bg1), ann = 
	'''USE 60 FPS
Strong recomended to use animation minimum
with 1 phase before and after animation cycle.

Simple way to do it just use pre and post infinity
with "Cycle" option in graph editor.

After baking loop animation on layer will be set cycle infinity''')

	## Cell #4 ##
	## Empty ##
	cmds.separator(style = 'none')

	## Cell #5 ##
	## Checkbox #3 ##
	cmds.checkBox("test_checkbox", label = "", v = False, en = False,
			cc = ('print "Hello TEST!!!"'), h = cHeight1, bgc = (Bg1, Bg1, Bg1),
			ann = "Work in progress")
	
	## Cell #6 ##
	## Checkbox #4 ##
	cmds.checkBox("hierarchy_checkbox", label = "Hierarchy mode", v = False, en = False,
			cc = ('print "Hello hierarchy mode!!!"'), h = cHeight1, bgc = (Bg1, Bg1, Bg1),
			ann = "Work in progress")

	#### Button layout ####
	cmds.frameLayout("buttonsLayout", l = 'BUTTONS PANEL', cll = 1,
						bgc = frame_color_1,
						parent = "main_overlappy_window",
						cc = ("""cmds.window("main_overlappy_window", e = True,
						h = 10, rtf = True)"""))
	
	columns_count2 = 5
	cWraw2 = window_width / columns_count2
	cmds.rowColumnLayout(numberOfColumns = columns_count2, columnWidth = [
														(1, cWraw2), (2, cWraw2),
														(3, cWraw2), (4, cWraw2),
														(5, cWraw2)],
														p = "buttonsLayout")
	
	## Cell #1 ##
	cmds.button(label = "RESET ALL", command = ('reset_all_button()'),
						bgc = yellow_button, h = slider_height, ann =
					"""Reset all values and options in script window""")
	## Cell #2 ##
	cmds.button(label = "", command = ('print "button 2"'), en = False,
						h = slider_height, ann = "")
	## Cell #3 ##
	cmds.button(label = "DELETE", command = ('delete_overlappy_layer()'),
						bgc = red_button, h = slider_height, ann = 
					"""Delete main layer "OVERLAPPY" with all layers inside""")
	## Cell #4 ##
	cmds.button(label = "", command = ('print "button 4"'), en = False,
						h = slider_height, ann = "")
	## Cell #5 ##
	cmds.button(label = "MOVE", command = ('move_layers_to_safe()'), en = True,
						bgc = blue_button, h = slider_height,
						ann =
"""Move all keyed layers from "OVERLAPPY" layer to "SAVED_Overlaps".
DELETE button cant delete saved layers.""")

	#### About layout ####
	cmds.columnLayout('endColumn', rs = 4, adj = True,
						parent = "main_overlappy_window", bgc = end_color_1)
						
	cmds.frameLayout("informLayout", l = 'ABOUT', cll = 1, bgc = frame_color_2,
						cl = 1, p = "endColumn",
						cc = ("""cmds.window("main_overlappy_window",
												e = True, h = 10, rtf = True)"""))
	cmds.text("Report bugs and leave rewiew please", h = 20)
	cmds.text("vk.com/geneugene3d", hl = True, h = 20, bgc = link_color_1)
	cmds.text("www.artstation.com/geneugene", hl = True, h = 20,
										bgc = link_color_1)
	cmds.text("www.highend3d.com/users/geneugene", hl = True, h = 20,
										bgc = link_color_2)
	cmds.text("www.highend3d.com/maya/script/overlappy-for-maya-105076",
										hl = True, h = 20, bgc = link_color_2)
	
	#### Run main window ####
	cmds.showWindow(overUI)

###############################################################################
###### 5. Main methods ######

def create_overlappy_layer():
	if(cmds.objExists(root_layer_name)):
		#print myMessage, root_layer_name, "layer already exists"
		pass
	else:
		#print myLog, root_layer_name, "layer created"
		cmds.animLayer(root_layer_name, o = True)
def delete_overlappy_layer():
	if (cmds.objExists(root_layer_name)):
		cmds.delete(root_layer_name)
		print myMessage, root_layer_name, "layer deleted"
	else:
		print myError, root_layer_name, "layer not created yet"
def replaceSymbols():
	for i in range(len(list_fixed)):
		list_fixed[i] = list_fixed[i].replace("|", "_")
		list_fixed[i] = list_fixed[i].replace(":", "_")

def get_nonLocked_attributes(i, simState): # and duplicate transform node
	reset_range_time()
	set_time_to_start()
	
	temp_particle_attrs = [T_goal_smooth, T_goal_weight, T_time_scale,
					   R_time_scale, R_goal_weight, R_goal_smooth]

	if simState == prefix_base_layer[1]:
		attrX = list_objects[i] + '.translateX'
		attrY = list_objects[i] + '.translateY'
		attrZ = list_objects[i] + '.translateZ'
		temp_constraint_parent = goal_aim_locator
		temp_locked_names = translate_attr_names
		temp_index = [1, 0, 2, 0, 3, 0]
	elif simState == prefix_base_layer[2]:
		attrX = list_objects[i] + '.rotateX'
		attrY = list_objects[i] + '.rotateY'
		attrZ = list_objects[i] + '.rotateZ'
		temp_constraint_parent = offset_aim_locator
		temp_locked_names = rotate_attr_names
		temp_index = [0, 1, 0, 2, 0, 3]
		temp_particle_attrs.reverse()
	else:
		print myError, '"get_nonLocked_attributes()":', "state error #1"
		#print myLog, '"simState" =', simState

	cmds.setAttr(np_goal_smooth, temp_particle_attrs[0])
	cmds.setAttr(np_goal_weight, temp_particle_attrs[1])
	cmds.setAttr(nucleus_timeScale, temp_particle_attrs[2])
	cmds.setAttr(np_render_type, particle_shape)
	cmds.setAttr(np_shape_radius, particle_radius)
	cmds.setAttr(nucleus_start, start_time)

	## Get lock state bool ##
	lockX = cmds.getAttr(attrX, lock = True)
	lockY = cmds.getAttr(attrY, lock = True)
	lockZ = cmds.getAttr(attrZ, lock = True)
	
	if lockX and lockY and lockZ == True:
		cleaning(i, simState)
		if cmds.animLayer(root_layer_name, q = True, c = True) == None:
			delete_overlappy_layer()
			#print myError, root_layer_name, "has no layers inside"
		else:
			#print myLog, root_layer_name, "has layers inside"
			pass
			
		print myError, "All required attributes are locked"
	else:
		#print myLog, "Required attributes are available"
		cmds.duplicate(list_objects[i], po = True, n = temp_obj_node)
		
		del(nonLocked_attributes[:])
		temp_m = False # Need to set "False" for correct work "offset_aim_locator"
		
		if (lockX != True):
			nonLocked_attributes.append(temp_locked_names[0])
			cmds.parentConstraint(temp_constraint_parent, temp_obj_node, mo = temp_m,
										st = default_channels[temp_index[0]],
										sr = default_channels[temp_index[1]], w = 1)
		if (lockY != True):
			nonLocked_attributes.append(temp_locked_names[1])
			cmds.parentConstraint(temp_constraint_parent, temp_obj_node, mo = temp_m,
										st = default_channels[temp_index[2]],
										sr = default_channels[temp_index[3]], w = 1)
		if (lockZ != True):
			nonLocked_attributes.append(temp_locked_names[2])
			cmds.parentConstraint(temp_constraint_parent, temp_obj_node, mo = temp_m,
										st = default_channels[temp_index[4]],
										sr = default_channels[temp_index[5]], w = 1)
		
		create_other_layers(i, simState)
		baking_to_temp_object()
		copyPaste_main_animation(i, simState)
		cleaning(i, simState)

def create_other_layers(i, simState):
	global final_layer_name
	if simState == prefix_base_layer[1]:
		final_layer_name = prefix_base_layer[1] + list_fixed[i] + "_layer"
	elif simState == prefix_base_layer[2]:
		final_layer_name = prefix_base_layer[2] + list_fixed[i] + "_layer"
	else:
		final_layer_name = "error" + list_fixed[i] + "_layer"
		print myError, '"get_nonLocked_attributes()":', "state error #3"
	
	global nonLockedList
	nonLockedList = []
	for x in range(len(nonLocked_attributes)):
		nonLockedList.append(list_objects[i] + "." + nonLocked_attributes[x])
	
	if (cmds.objExists(final_layer_name)):
		cmds.delete(final_layer_name)
		cmds.animLayer(final_layer_name, o = True, p = root_layer_name)
	else:
		cmds.animLayer(final_layer_name, o = True, p = root_layer_name)
def move_layers_to_safe():
	if(cmds.objExists(root_layer_name)):
		playback_range_initialization()
		# Get list of all final layers into OVERLAPPY layer
		layerList1 = cmds.animLayer(root_layer_name, q = True, c = True)
		if layerList1 == None:
			print myError, root_layer_name, "has no layers inside"
		else:
			if len(layerList1) == 0:
				print myError, "No layers with animation keys"
			else:
				if cmds.objExists(safe_layer_name):
					pass
				else: 
					cmds.animLayer(safe_layer_name)
				for i in range(len(layerList1)):
					temp_list = cmds.ls(layerList1[i] + "Safe_*")
					if len(temp_list) == 0:
						final_safe_layer_name = layerList1[i] + "Safe_1"
					else:
						## 1. Get index of tip number ##
						find_number_pos = int(temp_list[-1].find("Safe_")) + 5
						## 2. Get value of tip number ##
						find_number_val = temp_list[-1][find_number_pos:]
						## 3. Increment value of tip number ##
						increment_number = int(find_number_val) + 1
						final_safe_layer_name = layerList1[i] + "Safe_" + str(increment_number)
					cmds.rename(layerList1[i], final_safe_layer_name)
					cmds.animLayer(final_safe_layer_name, e = True, p = safe_layer_name)
				cmds.delete(root_layer_name)
				print myMessage, root_layer_name, "layer deleted"	
	else:
		print myError, root_layer_name, "layer not created, nothing to move"

def baking_to_temp_object():
	if(check_cycle): 
		#print myLog, "Cycled baking"
		cmds.setAttr(nucleus_start, min_loop_time)
		cmds.bakeResults(temp_obj_node, t = (min_loop_time, max_loop_time), sm = True, at = nonLocked_attributes)
	else:
		#print myLog, "Linear baking"
		cmds.bakeResults(temp_obj_node, t = (start_time, end_time), sm = True, at = nonLocked_attributes)
def copyPaste_main_animation(i, simState):
	cmds.animLayer(final_layer_name, e = True, at = nonLockedList)
	cmds.select(temp_obj_node, r = True)
	if (check_cycle):
		#print myLog, 'Infinity changed to "Cycle"'
		cmds.cutKey(time = (min_loop_time, start_time - 1))
		cmds.cutKey(time = (end_time + 1, max_loop_time))
		cmds.setInfinity(pri = "cycle", poi = "cycle")
	else:
		#print myLog, 'Infinity changed to "Constant"'
		cmds.setInfinity(pri = "constant", poi = "constant")
		
	temp_copyKey = cmds.copyKey(temp_obj_node, at = nonLocked_attributes)
	#cmds.copyKey(temp_obj_node, at = nonLocked_attributes)
	cmds.pasteKey(list_objects[i], o = "replace", al = final_layer_name, at = nonLocked_attributes)
def cleaning(i, simState):
	if simState == prefix_base_layer[1]:
		cmds.delete(goal_aim_locator, goal_locator, np_name, nucleus_name)
		if cmds.objExists(temp_obj_node):
			cmds.delete(temp_obj_node)
	elif simState == prefix_base_layer[2]:
		cmds.delete(base_locator, base_aim_locator, goal_aim_locator, goal_locator, np_name, nucleus_name)
		if cmds.objExists(temp_obj_node):
			cmds.delete(temp_obj_node)
	else:
		print myError, '"copyPaste_main_animation()":', "state error #3"
	reset_range_time()

###############################################################################
###### 6. Playback setup ######

def playback_range_initialization():
	# Get min anim range
	global start_time; start_time = cmds.playbackOptions(q = True, min = True)
	# Get max anim range
	global end_time; end_time = cmds.playbackOptions(q = True, max = True)
	
	offset_time = end_time - start_time
	
	global min_loop_time;
	min_loop_time = start_time - offset_time * min_loop_factor
	global max_loop_time;
	max_loop_time = start_time + offset_time * max_loop_factor
def reset_range_time():
	cmds.playbackOptions(e = True, min = start_time, max = end_time)
	cmds.currentTime(start_time)
def set_time_to_start(): # Only for cycles
	cmds.currentTime(min_loop_time)

###############################################################################
###### 7. Main scripts ######

def main_start():
	playback_range_initialization()
	reset_range_time()
	global list_objects; list_objects = cmds.ls(sl = True)
	global list_fixed; list_fixed = list_objects [:]
def main_set_names():
	#### Set names #### ########## Need to create method
	global base_locator; base_locator = list_fixed[i] + "_base_loc"
	global base_aim_locator; base_aim_locator = list_fixed[i] + "_base_aim_loc"
	global offset_aim_locator; offset_aim_locator = list_fixed[i] + "_offset_aim_loc"

	global goal_locator; goal_locator = list_fixed[i] + "_goal_loc"
	global goal_aim_locator; goal_aim_locator = list_fixed[i] + "_goal_aim_loc"

	global goal_aim_locator_pos; goal_aim_locator_pos = goal_aim_locator + ".translate"

	global np_name; np_name = list_fixed[i] + "_temp_part" # nParticle name
	global np_center; np_center = np_name + ".center"
	global np_render_type; np_render_type = np_name + "Shape.particleRenderType"
	global np_shape_radius; np_shape_radius = np_name + "Shape.radius"
	global np_goal_smooth; np_goal_smooth = np_name + "Shape.goalSmoothness"
	global np_goal_weight; np_goal_weight = np_name + "Shape.goalWeight[0]"

	global nucleus_name; nucleus_name = "nucleus1"
	global nucleus_timeScale; nucleus_timeScale = nucleus_name + ".timeScale"
	global nucleus_start; nucleus_start = nucleus_name + ".startFrame"
def main_translate_logic():
	## Create main logic ##
	cmds.spaceLocator(n = goal_locator)
	cmds.matchTransform(goal_locator, list_objects[i], pos = True)
	objC = cmds.getAttr(goal_locator + ".translate")

	cmds.nParticle(p = objC, n = np_name, c = 1)
	cmds.goal(np_name, w = T_goal_weight, utr = 1, g = goal_locator)

	cmds.parent(goal_locator, list_objects[i], r = True) #
	cmds.matchTransform(goal_locator, list_objects[i], pos = True) #

	cmds.duplicate(goal_locator, rr = True, n = goal_aim_locator)
	cmds.parent(goal_aim_locator, w = True)
	cmds.connectAttr(np_center, goal_aim_locator_pos, f = True)
def main_rotate_logic():
	#### Create main logic ####
	if aim_vector_reverse: rotAimVector = -1
	else: rotAimVector = 1
	
	## Create locators ##
	cmds.spaceLocator(n = base_locator)
	cmds.matchTransform (base_locator, list_objects[i], pos = True, rot = True)
	cmds.duplicate(base_locator, n = base_aim_locator)
	cmds.parent(base_aim_locator, base_locator, a = True)
	
	cmds.duplicate(base_aim_locator, n = offset_aim_locator)
	
	cmds.parentConstraint(list_objects[i], base_locator, mo = True, w = 1)

	cmds.spaceLocator(n = goal_locator)
	cmds.matchTransform (goal_locator, list_objects[i + 1], pos = True, rot = True)
	cmds.parentConstraint(list_objects[i + 1], goal_locator, mo = True, w = 1)

	cmds.spaceLocator(n = goal_aim_locator)

	## Create particle and nucleus ##
	goal_position = cmds.getAttr(goal_locator + ".translate")
	cmds.nParticle(p = goal_position, n = np_name, c = 1)
	cmds.goal(np_name, w = T_goal_weight, utr = 1, g = goal_locator)

	## Create connections ##
	cmds.connectAttr(np_center, goal_aim_locator_pos, f = True)
	cmds.aimConstraint(goal_aim_locator, base_aim_locator, w = 1,
							aim = (0, rotAimVector, 0), u = (0, 1, 0),
							wut = "vector", wu = (0, 1, 0), sk = "y")
	cmds.parentConstraint(base_aim_locator, offset_aim_locator, mo = True,
												st=["x","y","z"], w = 1)
def main_last_part():
	## Layers, connections, baking, copy/paste ##
	get_nonLocked_attributes(i, simState)
	create_other_layers(i, simState)
	baking_to_temp_object()
	copyPaste_main_animation(i, simState)

	cmds.select(d = True)
	cmds.progressBar(progressControl, edit = True, step = progress_step_value)

"""def run_simulation(): ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ### WIP ###

	##### Need condition ##### Need condition ##### Need condition ##### Need condition ##### Need condition #####
	simState = prefix_base_layer[1]
	
	main_start()
	
	##### Need condition ##### Need condition ##### Need condition ##### Need condition ##### Need condition #####
	#if (len(list_objects) == 0): #
	#	print myError, "Need to select 1 or more objects"
	#else:
	#	print myMessage, "Selected {0} objects".format(len(list_objects))
	#	setup_progressbar(len(list_objects)) # start progress bar window
	#
	#if (len(list_objects) <= 1): #
	#	print myError, "Need to select 2 or more objects"
	#else:
	#	print myMessage, "Selected {0} objects".format(len(list_objects) - 1)
	#	setup_progressbar(len(list_objects) - 1) # start progress bar window
	
		create_overlappy_layer()
		replaceSymbols()
		
		##### Need condition ##### Need condition ##### Need condition ##### Need condition ##### Need condition #####
		#for i in range(len(list_fixed)):
		#for i in range(len(list_fixed)-1):
		
		
			main_set_names()
			
			##### Need condition ##### Need condition ##### Need condition ##### Need condition #####
			main_translate_logic() #
			main_rotate_logic() #
			
			main_last_part()
		
		## Select list in initial order, close progressbar ##
		for l in list_objects:
			cmds.select (l, add = True)
		close_progressbar()
		print myMessage, root_layer_name, "ends simulation"
	simState = prefix_base_layer[0]"""

def translate_simulation(): ######## Need to remove
	simState = prefix_base_layer[1]
	playback_range_initialization()
	reset_range_time()
	global list_objects; list_objects = cmds.ls(sl = True)
	global list_fixed; list_fixed = list_objects [:]

	if (len(list_objects) == 0):
		print myError, "Need to select 1 or more objects"
	else:
		print myMessage, "Selected {0} objects".format(len(list_objects))
		setup_progressbar(len(list_objects)) # start progress bar window
		
		create_overlappy_layer()
		replaceSymbols()

		for i in range(len(list_fixed)):
			#### Set names ####
			global goal_aim_locator; goal_aim_locator = list_fixed[i] + "_aim_loc"
			global goal_locator; goal_locator = list_fixed[i] + "_goal_loc"
			
			global goal_aim_locator_pos; goal_aim_locator_pos = goal_aim_locator + ".translate"
			
			global np_name; np_name = list_fixed[i] + "_temp_part" # nParticle name
			global np_render_type; np_render_type = np_name + "Shape.particleRenderType"
			global np_shape_radius; np_shape_radius = np_name + "Shape.radius"
			global np_goal_smooth; np_goal_smooth = np_name + "Shape.goalSmoothness"
			global np_goal_weight; np_goal_weight = np_name + "Shape.goalWeight[0]"
			global np_center; np_center = np_name + ".center"
			
			global nucleus_name; nucleus_name = "nucleus1"
			global nucleus_timeScale; nucleus_timeScale = nucleus_name + ".timeScale"
			global nucleus_start; nucleus_start = nucleus_name + ".startFrame"
			
			#### Create main logic ####
			cmds.spaceLocator(n = goal_locator)
			cmds.matchTransform(goal_locator, list_objects[i], pos = True)
			objC = cmds.getAttr(goal_locator + ".translate")
			
			cmds.nParticle(p = objC, n = np_name, c = 1)
			cmds.goal(np_name, w = T_goal_weight, utr = 1, g = goal_locator)

			cmds.parent(goal_locator, list_objects[i], r = True) #
			cmds.matchTransform(goal_locator, list_objects[i], pos = True) #

			cmds.duplicate(goal_locator, rr = True, n = goal_aim_locator)
			cmds.parent(goal_aim_locator, w = True)
			cmds.connectAttr(np_center, goal_aim_locator_pos, f = True)
			
			#### Layers, connections, baking, copy/paste ####
			get_nonLocked_attributes(i, simState)
			#create_other_layers(i, simState)
			#baking_to_temp_object()
			#copyPaste_main_animation(i, simState)
			
			cmds.select(d = True)
			cmds.progressBar(progressControl, edit = True, step = progress_step_value)

		#### Select list in initial order, close progressbar ####
		for l in list_objects:
			cmds.select (l, add = True)
		close_progressbar()

		print myMessage, root_layer_name, "ends simulation"
	simState = prefix_base_layer[0]
def rotate_simulation(): ######## Need to remove
	simState = prefix_base_layer[2]
	playback_range_initialization()
	reset_range_time()
	global list_objects; list_objects = cmds.ls(sl = True)
	global list_fixed; list_fixed = list_objects [:]

	if (len(list_objects) <= 1):
		print myError, "Need to select 2 or more objects"
	else:
		print myMessage, "Selected {0} objects (the last element is discarded)".format(len(list_objects) - 1)
		setup_progressbar(len(list_objects) - 1) # start progress bar window
		
		create_overlappy_layer()
		replaceSymbols()

		for i in range(len(list_fixed)-1):
			#### Set names #### ########## Need to create method
			global base_locator; base_locator = list_fixed[i] + "_base_loc"
			global base_aim_locator; base_aim_locator = list_fixed[i] + "_base_aim_loc"
			global offset_aim_locator; offset_aim_locator = list_fixed[i] + "_offset_aim_loc"
			
			global goal_locator; goal_locator = list_fixed[i] + "_goal_loc"
			global goal_aim_locator; goal_aim_locator = list_fixed[i] + "_goal_aim_loc"
			
			global goal_aim_locator_pos; goal_aim_locator_pos = goal_aim_locator + ".translate"
			
			global np_name; np_name = list_fixed[i] + "_temp_part" # nParticle name
			global np_center; np_center = np_name + ".center"
			global np_render_type; np_render_type = np_name + "Shape.particleRenderType"
			global np_shape_radius; np_shape_radius = np_name + "Shape.radius"
			global np_goal_smooth; np_goal_smooth = np_name + "Shape.goalSmoothness"
			global np_goal_weight; np_goal_weight = np_name + "Shape.goalWeight[0]"

			global nucleus_name; nucleus_name = "nucleus1"
			global nucleus_timeScale; nucleus_timeScale = nucleus_name + ".timeScale"
			global nucleus_start; nucleus_start = nucleus_name + ".startFrame"
			
			#### Create main logic ####
			if aim_vector_reverse: rotAimVector = -1
			else: rotAimVector = 1
			
			## Create locators ##
			cmds.spaceLocator(n = base_locator)
			cmds.matchTransform (base_locator, list_objects[i], pos = True, rot = True)
			cmds.duplicate(base_locator, n = base_aim_locator)
			cmds.parent(base_aim_locator, base_locator, a = True)
			
			cmds.duplicate(base_aim_locator, n = offset_aim_locator)
			
			cmds.parentConstraint(list_objects[i], base_locator, mo = True, w = 1)

			cmds.spaceLocator(n = goal_locator)
			cmds.matchTransform (goal_locator, list_objects[i + 1], pos = True, rot = True)
			cmds.parentConstraint(list_objects[i + 1], goal_locator, mo = True, w = 1)

			cmds.spaceLocator(n = goal_aim_locator)

			## Create particle and nucleus ##
			goal_position = cmds.getAttr(goal_locator + ".translate")
			cmds.nParticle(p = goal_position, n = np_name, c = 1)
			cmds.goal(np_name, w = T_goal_weight, utr = 1, g = goal_locator)

			## Create connections ##
			cmds.connectAttr(np_center, goal_aim_locator_pos, f = True)
			cmds.aimConstraint(goal_aim_locator, base_aim_locator, w = 1,
									aim = (0, rotAimVector, 0), u = (0, 1, 0),
									wut = "vector", wu = (0, 1, 0), sk = "y")
									
			cmds.parentConstraint(base_aim_locator, offset_aim_locator, mo = True,
														st=["x","y","z"], w = 1)
			
			#### Layers, connections, baking, copy/paste ####
			get_nonLocked_attributes(i, simState)
			#create_other_layers(i, simState)
			#baking_to_temp_object()
			#copyPaste_main_animation(i, simState)
			
			cmds.select(d = True)
			cmds.progressBar(progressControl, edit = True, step = progress_step_value)

		#### Select list in initial order, close progressbar ####
		for l in list_objects:
			cmds.select (l, add = True)
		close_progressbar()

		print myMessage, root_layer_name, "ends simulation"
	simState = prefix_base_layer[0]

###############################################################################
###### 8. Run code ######

def runOverlappy():
	set_checkbox_values()
	set_translation_values()
	set_rotation_values()
	set_other_values()
	set_text_values()
	create_ui()

runOverlappy()

###############################################################################
###### End code ######