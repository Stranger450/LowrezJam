/// @description Insert description here
// You can write your code in this editor

if (returning and place_meeting(x, y, o_hole)) {
	instance_destroy()	
}

if (place_meeting(x, y, target)) {
	instance_create_layer(target.x, target.y, "flipped_towers", o_antiTower_flippedTower, {sprite_index: target.sprite_index})
	instance_destroy(target)
	returning = true
	path_delete(path)
	
	path = pathfindingcontroller.calculate_path(x, y, o_hole.x, o_hole.y)
	path_start(path, spd, path_action_stop, true)
	
	with (parent_enemy){
		event_user(0)
	}
	
	with (o_wall) {
		event_user(0)	
	}
}

