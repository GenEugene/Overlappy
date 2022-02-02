# OVERLAPPY (author GenEugene)
Animation script for maya 2017/2022

---
## LINKS
https://gumroad.com/l/iCNa
https://www.highend3d.com/maya/script/overlappy-for-maya-105076
https://vk.com/geneugene3d
https://www.artstation.com/geneugene

---
## TODO List
- full refactoring
- add new tools

## TODO list OLD
- gravity options
- aim position offset
- deselect shapes from list
- twist mode
- loop mode upgrade
- installation
- stop "ESC"
- save prefs to file

---
# Version history
### v0.1.2*
    -

### v0.1.1
    - [FIX] updated for Maya 2020-2022

### v0.1.0
    - [NEW] full refactoring, class inheritance
    - [NEW] collapsed main logic into one block
    - [NEW] execution time log
    - [NEW] SELECT hierarchy button
    - [NEW] hierarchy mode
    - [NEW] splitChains mode
    - [NEW] min loop factor controller
    - [NEW] confirm message dialogs system
    - [FIX] joint chain rotation issue
    - [FIX] progress bar close with script window
    - [FIX] timeline returns to frame before simulation
    - [OTHER] more comfortable default values and sliders limits
    - [OTHER] more informative logs (counts, time, etc.)
    - [OTHER] rename some buttons and color changes

### v0.0.9
    - [NEW] created simulation states (for translate/rotate/other separation)
    - [FIX] "blendParent1" issue
    - [FIX] optimized speed, reduced simulation passes (from 2-3 to 1)
    - [FIX] progressbar events
    - [FIX] MOVE button exceptions
    - [OTHER] rewrited layer logic, safe move and much other logic

### v0.0.8
	- [NEW] compatibility with Maya 2017
	- [NEW] "MOVE" button to move all overlappy keyed layers to safe layer
	- [NEW] "offsetLocator" for calculate angle offsets
	- [FIX] "'list_objects' is not defined"
	- [FIX] constraints offset baking
	- [REMOVE] "sbm" parameter from frameLayout's
	- [REMOVE] "cycleInfinity" variable

### v0.0.7
	- [NEW] progress bar
	- [FIX] incorrect loop baking
	- [FIX] non zero start animation loop baking
	- [OTHER] refined much of code
	- [OTHER] UI corrections

### v0.0.6
	- [NEW] new variables for UI and other
	- [FIX] RESET CHECKBOX button event
	- [FIX] all reset events debug log
	- [OTHER] small text/descriptions fixes
	- [OTHER] set new default values
	- [REMOVE] "Set cycle infinity" checkbox (combined with "Looping animation")

### v0.0.5
	- [NEW] separated reset for TRANSLATION and ROTATION variables and add CHECKBOX reset
	- [NEW] "Set cycle infinity" checkbox for cycle/constant infinity
	- [OTHER] full reconstructed UI
	- [OTHER] rewrited some script blocks
	- [OTHER] new test checkboxes for future features

### v0.0.4
	- [OTHER] replaced all descriptions and comments to english
	- [OTHER] changed font size of buttons
	- [OTHER] rewrited main instruction

### v0.0.3
	- [NEW] can use locked translations and rotations
	- [NEW] checkbox reverse aim axis Y (1, -1)
	- [FIX] combined 2 checkboxes to 1 for loop animation

### v0.0.2
	- [NEW] rotation simulation script
	- [NEW] instruction (rus)
	- [FIX] symbols issue (":" and "|" will replaced by "_" symbol)
	- [OTHER] few text corrections

### v0.0.1
	- [NEW] UI and test
	- [NEW] layouts and descriptions

### v0.0.0
	- [NEW] translation simulation script
	- [NEW] baking animation to layers