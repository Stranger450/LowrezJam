/// @description Insert description here
// You can write your code in this editor

distance_to_goal = path_get_length(p_deb) * (1-path_position)

if hp <= 0 {
	instance_destroy(self)
}

if slowed{
	path_speed 	= spd*0.6
}else{
	path_speed = spd
}

slowed = false

show_debug_message(hp)