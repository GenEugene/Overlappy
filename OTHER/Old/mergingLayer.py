def playbackRangeInit():
	global asT; asT = cmds.playbackOptions( query=True, min=True ) # Get min anim range
	global aeT; aeT = cmds.playbackOptions( query=True, max=True ) # Get max anim range
	offset = aeT - asT
	global minLoopTime; minLoopTime = asT - offset * minLoopScale
	global maxLoopTime; maxLoopTime = asT + offset * maxLoopScale
	resetRangeTime()
	
def saveYourLayers():
	playbackRangeInit()
	
	layerList1 = cmds.animLayer( "OVERLAPPY", q=True, c=True ) #
	for i in range(len(layerList1)):
		layerList2[i] = cmds.animLayer( layerList1[i], q=True, c=True )
		
	layerList3 = layerList2[:]
	for i in range(len(layerList2)):
		layerList3[i] = layerList2[i][0]
		print i+1, layerList3[i]
	
	if cmds.objExists( "SAVED_Overlaps" ): print "SAVED_Overlaps layer exists" #
	else: print "SAVED_Overlaps layer created"; cmds.animLayer( "SAVED_Overlaps" ) #
	
	for i in range(len(layerList3)):
		cmds.animLayer( layerList3[i], e=True, p="SAVED_Overlaps" ) #
	cmds.delete( "OVERLAPPY" ) #
		
saveYourLayers()
