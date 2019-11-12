

#### Set names ####
base_locator = list_objects[i] + "_base_loc"
base_aim_locator = list_objects[i] + "_base_aim_loc"
goal_locator = list_objects[i] + "_goal_loc"
goal_aim_locator = list_objects[i] + "_goal_aim_loc"


#### Create locators ####
cmds.spaceLocator(n = base_locator)
cmds.matchTransform (base_locator, list_objects[i], pos = True, rot = True)
cmds.duplicate(base_locator, n = base_aim_locator)
cmds.parent(base_aim_locator, base_locator, a = True)
cmds.parentConstraint(list_objects[i], base_locator, mo = True, w = 1)

cmds.spaceLocator(n = goal_locator)
cmds.matchTransform (goal_locator, list_objects[i + 1], pos = True, rot = True)
cmds.parentConstraint(list_objects[i + 1], goal_locator, mo = True, w = 1)

cmds.spaceLocator(n = goal_aim_locator)


#### Create particle and nucleus ####
goal_position = cmds.getAttr(goal_locator + ".translate")
cmds.nParticle(p = goal_position, n = np_name, c = 1)
cmds.goal(np_name, w = T_goal_weight, utr = 1, g = goal_locator)
partCenter = np_name + ".center"
goal_aim_locator_pos = goal_aim_locator + ".translate"


#### Create connections ####
cmds.connectAttr(partCenter, goal_aim_locator_pos, f = True)
cmds.aimConstraint(goal_aim_locator, base_aim_locator, w = 1,
						aim = (0, rotAimVector, 0), u = (0, 1, 0),
						wut = "vector", wu = (0, 1, 0), sk = "y")
cmds.duplicate(list_objects[i], po = True, n = temp_obj_node)
cmds.parentConstraint(base_aim_locator, temp_obj_node, mo = True, w = 1)











cmds.spaceLocator(n = zeroLoc)
cmds.spaceLocator(n = aim_locator)
cmds.spaceLocator(n = temp_locator)

cmds.matchTransform (zeroLoc, list_objects[i], pos = True, rot = True)
cmds.matchTransform (temp_locator, list_objects[i + 1], pos = True, rot = True)

cmds.select(temp_locator, r = True)
cmds.duplicate(n = tempAimLoc)

cmds.select(list_objects[i], r = True)
cmds.select(zeroLoc, add = True)
cmds.parentConstraint(mo = True, w = 1)

cmds.select(aim_locator, r = True)
cmds.select(zeroLoc, add = True)
cmds.parent(r = True)


cmds.select(aim_locator, r = True) #+
cmds.duplicate(n = offsetAimLoc) #+


cmds.select(list_objects[i + 1], r = True)
cmds.select(temp_locator, add = True)
cmds.parentConstraint(mo = True, sr = ["x", "y", "z"], w = 1)

aimPosName = temp_locator + ".translate"
partCenter = np_name + ".center"
aim_locatorPos = tempAimLoc + ".translate"

aimPos = cmds.getAttr(aimPosName)
cmds.nParticle(p = aimPos, n = np_name, c = 1)
cmds.goal(np_name, w = 0.5, utr = 1, g = temp_locator)
cmds.connectAttr(partCenter, aim_locatorPos, f = True)

cmds.select(tempAimLoc, r = True)
cmds.select(aim_locator, add = True)
cmds.aimConstraint(w = 1, aim = (0, rotAimVector, 0), u = (0, 1, 0), wut = "vector", wu = (0, 1, 0), sk = "y")

cmds.select(aim_locator, r = True) #+
cmds.select(offsetAimLoc, add = True) #+
cmds.parentConstraint(mo = True, st = ["x","y","z"], w = 1) #+

#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

cmds.setAttr (np_render_type, particle_shape)
cmds.setAttr (np_shape_radius, particle_radius)
cmds.setAttr (np_goal_smooth, R_goal_smooth)
cmds.setAttr (np_goal_weight, R_goal_weight)
cmds.setAttr (nucleus_timeScale, R_time_scale)
cmds.setAttr (nucleus_start, start_time)
