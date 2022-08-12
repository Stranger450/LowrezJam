/// @description Insert description here
// You can write your code in this editor


if target == o_antiTower_invalidTarget {
	instance_destroy()
} else {
	path = pathfindingcontroller.calculate_path(x, y, target.x, target.y)
	
	path_start(path, spd, path_action_stop, true)
}