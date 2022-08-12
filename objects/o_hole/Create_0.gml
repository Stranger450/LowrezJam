/// @description Insert description here
// You can write your code in this editor

function add_enemy(obj, spawn_cost) {
	values[? obj] = spawn_cost;
	enemies = ds_map_keys_to_array(values)
}

function register(obj, _spawn_cost, _first_wave) {
	all_enemies[? obj] = {spawn_cost: _spawn_cost, first_wave: _first_wave}
}

all_enemies = ds_map_create()
values = ds_map_create()

register(o_goblin, 1, 1)
register(o_albinoGoblin, 3, 2)
register(o_snail, 2, 5)
register(o_blackKnight, 10, 10)


wave_num = 0
wave_value = 0
next_wave_value = 5


spawn_delay_min = 2
spawn_delay_max = 4


hp_multiplier = 1

function spawn_next_wave() {	
	alarm[0] = room_speed
	
	wave_num += 1
	wave_value = next_wave_value
	next_wave_value = get_next_wave_value(wave_value, wave_num)
	
	hp_multiplier = get_next_hp_multiplier(hp_multiplier, wave_num)
	
	var keys = ds_map_keys_to_array(all_enemies)
	for (var i = 0; i < array_length(keys); ++i) {
		var e = keys[i]
	    if wave_num == all_enemies[? e].first_wave
			add_enemy(e, all_enemies[? e].spawn_cost)
	}
	
	spawn_delay_min = max(0.5, spawn_delay_min - 0.15)
	spawn_delay_max = max(0.5, spawn_delay_max - 0.2)
}

function get_next_wave_value(cur_val, wave_num) {
	return ceil(cur_val * 1.5)
}

function get_next_hp_multiplier(cur_val, wave_num) {
	if wave_num == 1
		return 1
		
	return cur_val * 1.05
}

spawn_next_wave()