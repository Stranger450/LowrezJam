/// @description Insert description here
// You can write your code in this editor



enemy = enemies[irandom_range(0, array_length(enemies) - 1)]
val = values[? enemy]


if val <= wave_value {
	wave_value -= val
	instance_create_layer(x,y,"enemies",enemy)
}


if wave_value > 0
	alarm[0] = game_get_speed(gamespeed_fps) * random_range(spawn_delay_min, spawn_delay_max)
else
	alarm[1] = game_get_speed(gamespeed_fps) * 10