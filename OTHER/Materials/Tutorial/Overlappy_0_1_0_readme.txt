################################################################################
###### OVERLAPPY v0.1.0
################################################################################


Hello. I want to share my script that I use in my animation projects.
This is a simple tool for add some overlaps to your animation.
Animation will bake to override layers, so your animation not will be deleted.


Links
https://www.highend3d.com/maya/script/overlappy-for-maya-105076 - Overlappy page
https://www.highend3d.com/users/geneugene - Highend page
https://www.artstation.com/geneugene - 3d portfolio (modeling, texturing, animation)
https://vk.com/geneugene3d - My page in social media


Based on:
	- https://vimeo.com/196234485
	- https://www.youtube.com/watch?v=BTBZgLYO6eo&feature=youtu.be&t=490


Features:
	- nParticle based
	- baking to layer
	- work with cycles
	- hierarchy mode


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
	
	- Looping animation: 
		- For baking clear loops you need use 60+ fps. On lower fps script
			can bake wrong loops.
		
		- Strong recomended to use animation minimum with 1 phase before and
			after animation cycle. Simple way to do it just use pre and
			post infinity with "Cycle" option.
		
		- Or you can bake animation with off cycle checkbox into 3 or more loops,
			then move animation to your main animation range and delete remains.
	
	- Aim reverse: For reorientation aim in rotation script.
		- May be useful when aim need reverse
	
	- Modes:
		- Default mode: Default mode. Manual select each element.
		
		- Hierarchy mode: Need to select roots only, hierarchy inside will select automatically.
			Your hierarchy must be clear and linear.
			(obj1|obj2|obj3|...|obj10)
		
		- SplitChains mode: Need to specify number of elements in each chain,
			then manually select objects.
			For example:
			1. SplitChains mode = 3 parts
			2. 6 objects selected:
				obj1|obj2|obj3|obj4|obj5|obj6
			3. Objects converts to 2 separate chains with 3 objects inside:
				Chain1 obj1|obj2|obj3 and Chain2 obj4|obj5|obj6
	
	
	- RESET ALL: Clears all values in script window
	
	- DELETE: Delete "OVERLAPPY" layer and everything inside it.
		- Dont forget to move baked animation to safe layer by MOVE button
	
	- HIERARCHY: Automatically select the hierarchy transforms of selected objects
	
	- MOVE: Move all keyed layers from "OVERLAPPY" layer to "SAVED_Overlaps"


Known problems:
	- In Maya 2019 animation caching can break creating constraints by script


p.s. This is my first script on maya python, so please report bugs and leave
some comments, if you have ideas to modify the code.



Version history:

v 0.1.0
	- [NEW] Full refactoring, class inheritance
	- [NEW] Collapsed main logic into one block
	- [NEW] Execution time log
	- [NEW] SELECT hierarchy button
	- [NEW] Hierarchy mode
	- [NEW] SplitChains mode
	- [NEW] Min loop factor controller
	- [NEW] Confirm message dialogs system
	- [FIX] Joint chain rotation issue
	- [FIX] Progress bar close with script window
	- [FIX] Timeline returns to frame before simulation
	- [OTHER] More comfortable default values and sliders limits
	- [OTHER] More informative logs (counts, time, etc.)
	- [OTHER] Rename some buttons and color changes

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
	- [NEW] Separated reset for TRANSLATION and ROTATION variables and add CHECKBOX reset
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
