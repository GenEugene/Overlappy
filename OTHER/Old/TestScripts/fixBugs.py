"""
playbackRangeInit()

global minLoopTime; minLoopTime = asT - aeT * minLoopScale; print minLoopTime
global maxLoopTime; maxLoopTime = asT + aeT * maxLoopScale; print maxLoopTime

#resetRangeTime()
#setTimeToMin()

global listObjects; listObjects = cmds.ls( sl=True )
#if( len( listObjects ) != 0 ): progBar( ( len( listObjects )-1 ) ) # start progress bar window

#if( len( listObjects ) <= 1 ): print "\n||| Need to select two or more objects |||\n"
#else:

global listFixed; listFixed = listObjects [:]

for i in range( len( listFixed ) ): # cycle for generate names from list
	listFixed[i] = listFixed[i].replace( "|", "_" )
	listFixed[i] = listFixed[i].replace( ":", "_" )

#if (cmds.objExists( mainLayerName ) ): print "\n||| OVERLAPPY start |||\n"
#else:
	
cmds.animLayer( mainLayerName )
#print "\n||| OVERLAPPY start ||| Layer created |||\n"

#for i in range( len( listFixed ) ): # start rotation cycle
"""

i = 0 #+

resetRangeTime() #+

#cmds.progressBar( progressControl, edit=True, step=stepValue )
	
#if ( i+1 != len( listFixed ) ): # если следующий элемент не последний в списке
	
global zeroLoc; zeroLoc = listFixed[i] + "_base_loc"
global aimLoc; aimLoc = listFixed[i] + "_aim_loc"
global tempLoc; tempLoc = listFixed[i] + "_temp_loc"
global tempAimLoc; tempAimLoc = listFixed[i] + "_tempAim_loc"

global tempPart; tempPart = listFixed[i] + "_temp_part"
global tempNucl; tempNucl = "nucleus1"

global partRtype; partRtype = tempPart + "Shape.particleRenderType"
global partRrad; partRrad = tempPart + "Shape.radius"
global partRsm; partRsm = tempPart + "Shape.goalSmoothness"
global partRwe; partRwe = tempPart + "Shape.goalWeight[0]"
global partNucl; partNucl = tempNucl + ".timeScale"
global nuclStart; nuclStart = tempNucl + ".startFrame"

if aimVectorReverse: rotAimVector = -1
else: rotAimVector = 1

#print rotAimVector #+
	
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		
cmds.spaceLocator( n = zeroLoc )
cmds.spaceLocator( n = aimLoc )
cmds.spaceLocator( n = tempLoc )

cmds.matchTransform ( zeroLoc, listObjects[i], pos=True, rot=True ) #+
cmds.matchTransform ( tempLoc, listObjects[i+1], pos=True, rot=True ) #+

cmds.select( tempLoc, r=True )
cmds.duplicate( n = tempAimLoc )

cmds.select( listObjects[i], r=True )
cmds.select( zeroLoc, add=True )
cmds.parentConstraint( mo=True, w = 1 )

cmds.select( aimLoc, r=True )
cmds.select( zeroLoc, add=True )
cmds.parent( r=True )



cmds.select( aimLoc, r=True ) #+
cmds.duplicate( n = "offsetAim" ) #+




cmds.select( listObjects[i+1], r=True )
cmds.select( tempLoc, add=True )
cmds.parentConstraint( mo=True, sr=["x", "y", "z"], w = 1 )
#cmds.parentConstraint( mo=True, w = 1 ) #+

aimPosName = tempLoc + ".translate"
partCenter = tempPart + ".center"
aimLocPos = tempAimLoc + ".translate"

aimPos = cmds.getAttr( aimPosName )

cmds.nParticle( p = aimPos , n = tempPart , c = 1 )
cmds.goal( tempPart, w=0.5, utr=1, g = tempLoc )
cmds.connectAttr( partCenter, aimLocPos, f=True )

cmds.select( tempAimLoc, r=True )
cmds.select( aimLoc, add=True )
cmds.aimConstraint( w=1, aim=(0, rotAimVector, 0), u=(0, 1, 0), wut="vector", wu=(0, 1, 0), sk="y" )






cmds.select( aimLoc, r=True ) #+
cmds.select( "offsetAim", add=True ) #+
cmds.parentConstraint( mo=True, st=["x","y","z"], w = 1 ) #+

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

goalSmoothRot = 3

cmds.setAttr (partRtype, pShape)
cmds.setAttr (partRrad, pRad)
cmds.setAttr (partRsm, goalSmoothRot)
cmds.setAttr (partRwe, goalWRot)
cmds.setAttr (partNucl, timeScaleRot)
cmds.setAttr (nuclStart, asT)

#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#if (cycle):
cmds.setAttr( nuclStart, minLoopTime )

#cmds.bakeResults( zeroLoc, t = (asT, aeT), sm=True, at=( "translate", "rotate") )

cmds.bakeResults( zeroLoc, t = (minLoopTime, maxLoopTime), sm=True, at=( "translate", "rotate") )
cmds.bakeResults( aimLoc, t = (minLoopTime, maxLoopTime), sm=True, at="rotate" )

#rotateConstraining(i)




cmds.delete( tempAimLoc, tempLoc, tempPart, tempNucl )
zeroParent = zeroLoc + "_parentConstraint1"
cmds.delete( zeroParent )

setTimeToMin()
resetRangeTime()


#cmds.select( aimLoc, r=True ) #-
cmds.select( "offsetAim", r=True ) #+
cmds.select( listObjects[i], add=True )

attrX = listObjects[i] + '.rotateX'
attrY = listObjects[i] + '.rotateY'
attrZ = listObjects[i] + '.rotateZ'

lockX = cmds.getAttr( attrX, lock=True )
lockY = cmds.getAttr( attrY, lock=True )
lockZ = cmds.getAttr( attrZ, lock=True )



#!!!!!!!!

if ( lockX != True ):
	cmds.parentConstraint( mo=False, st=["x","y","z"], sr=["y","z"], w = 1 )
if ( lockY != True ):
	cmds.parentConstraint( mo=False, st=["x","y","z"], sr=["x","z"], w = 1 )
if ( lockZ != True ):
	cmds.parentConstraint( mo=False, st=["x","y","z"], sr=["x","y"], w = 1 )

#!!!!!!!!

if ( lockX != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["y","z"], w = 1 )
if ( lockY != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["x","z"], w = 1 )
if ( lockZ != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["x","y"], w = 1 )

#!!!!!!!!



#else: #+
"""
cmds.bakeResults( zeroLoc, t = (asT, aeT), sm=True, at=( "translate", "rotate") )
cmds.bakeResults( aimLoc, t = (asT, aeT), sm=True, at="rotate" )

#rotateConstraining(i) #-

cmds.delete( tempAimLoc, tempLoc, tempPart, tempNucl )
zeroParent = zeroLoc + "_parentConstraint1"
cmds.delete( zeroParent )

setTimeToMin() #?
resetRangeTime()

cmds.select( aimLoc, r=True )
cmds.select( listObjects[i], add=True )

attrX = listObjects[i] + '.rotateX'
attrY = listObjects[i] + '.rotateY'
attrZ = listObjects[i] + '.rotateZ'

lockX = cmds.getAttr( attrX, lock=True )
lockY = cmds.getAttr( attrY, lock=True )
lockZ = cmds.getAttr( attrZ, lock=True )

if ( lockX != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["y","z"], w = 1 )
if ( lockY != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["x","z"], w = 1 )
if ( lockZ != True ):
	cmds.parentConstraint( mo=True, st=["x","y","z"], sr=["x","y"], w = 1 )
"""
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

global layerName; layerName = rotateLayerBase + listFixed[i]
global layerComp; layerComp = listFixed[i] + '_layer_{0}'.format("0")

#if ( cmds.objExists( layerName ) ): rotationBakingToLayer(i)
#else:
cmds.animLayer( layerName )
cmds.animLayer( layerName, e=True, p = mainLayerName )

#rotationBakingToLayer(i)



cmds.bakeResults( listObjects[i], t = (asT, aeT), sm=True, bol=True, at = "rotate" )
cmds.select( listObjects[i], r=True )
#if (cycleInfinity): cmds.setInfinity( pri="cycle", poi="cycle" )
#else: 
cmds.setInfinity( pri="constant", poi="constant" )
cmds.delete( aimLoc, zeroLoc )
cmds.container( "BakeResultsContainer", e=True, rc=True )
cmds.animLayer( "BakeResults", e=True, p = layerName )
cmds.rename( "BakeResults", layerComp )
#cmds.deleteAttr( n=listObjects[i], at="blendParent1" )
resetRangeTime()


cmds.select( listObjects[i], r=True )



cmds.select (d=True)


"""
for l in listObjects:
	cmds.select (l, add=True)

closeProgressBar()

print "\n||| OVERLAPPY ends rotation baking |||\n"
"""