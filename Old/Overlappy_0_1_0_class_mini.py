import maya.cmds as cmds
class TheOverlappy:
	""""TheOverlappy" class contains "Object" class"""
	class OverlappyObject:
		""""OverlappyObject" class contains variables and methods"""
		# Slider values
		T_goal_smooth = 1.5
		T_time_scale = 0.3
		T_sliderSmooth_name = 'T_slider_smooth'
		T_sliderScale_name = 'T_slider_scale'
		
		smooth_min, smooth_limit, smooth_max = 0.0, 4.0, 10.0
		scale_min, scale_limit, scale_max = 0.01, 1.0, 10.0
		
		smooth_label = 'Smooth'
		scale_label = 'Scale'
		sl_Width = 500
		main_window_label = 'Overlappy v0.0.9'
		main_window_name = 'OverlappyUI'
		UI_layout = 'root_layout'
		mainFrameL_name = 'main_frame_layout'
		
		# Reset values
		@classmethod
		def reset_translation_sliders(cls):
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, e = True, min = cls.smooth_min, max = cls.smooth_limit,
																				fmx = cls.smooth_max, v = cls.T_goal_smooth)
			cmds.floatSliderGrp(obj.T_sliderScale_name, e = True, min = cls.scale_min, max = cls.scale_limit,
																				fmx = cls.scale_max, v = cls.T_time_scale)
			obj.T_goal_smooth = cls.T_goal_smooth
			obj.T_time_scale = cls.T_time_scale
			print "Translation smooth =", obj.T_goal_smooth
			print "Translation scale =", obj.T_time_scale
		
		# Events
		@staticmethod
		def T_print_smooth():
			obj.T_goal_smooth = cmds.floatSliderGrp(obj.T_sliderSmooth_name, q = True, v = True)
			print "Translation smooth =", obj.T_goal_smooth
		
		@staticmethod
		def T_print_scale():
			obj.T_time_scale = cmds.floatSliderGrp(obj.T_sliderScale_name, q = True, v = True)
			print "Translation scale =", obj.T_time_scale
		
		
		
		
		
		
		
		
		
		
		
		
		# Create ui
		@staticmethod
		def create_ui(): # Create main UI elements
			if cmds.window(obj.main_window_name, exists = True):
				cmds.deleteUI(obj.main_window_name)
			
			cmds.window(obj.main_window_name, title = obj.main_window_label, mxb = False, s = True)
			cmds.window(obj.main_window_name, e = True, rtf = True, wh = (10, 10))
			
			cmds.columnLayout(obj.UI_layout, rs = 4, adj = True)
			
			cmds.frameLayout(obj.mainFrameL_name, l = "layout_1", parent = obj.UI_layout)
			
			cmds.floatSliderGrp(obj.T_sliderSmooth_name, l = obj.smooth_label, f = True, cc = ('obj.T_print_smooth()'), pre = 2, w = obj.sl_Width)
			cmds.floatSliderGrp(obj.T_sliderScale_name, l = obj.scale_label, f = True, cc = ('obj.T_print_scale()'), pre = 2, w = obj.sl_Width)
			cmds.button("button_1", label = "Reset", command = ('obj.reset_translation_sliders()'), h = 30)
			cmds.button("button_2", label = "Reset all", command = ('obj.reset_all()'), h = 30)
			cmds.showWindow(obj.main_window_name)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		# Overlappy logic
		def main_logic(): print "Run some overlappy logics"
		
		# Run
		@staticmethod
		def RunOverlappy():
			obj.create_ui()
			obj.reset_all()
		@staticmethod
		def reset_all():
			obj.reset_translation_sliders()

obj = TheOverlappy.OverlappyObject()
obj.RunOverlappy()














