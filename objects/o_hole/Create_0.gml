/// @description Insert description here
// You can write your code in this editor

function add_enemie(obj, val) {
	values[? obj] = val;
	enemies = ds_map_keys_to_array(values)
}

values = ds_map_create()

add_enemie(o_goblin, 1)

wave_num = 0
wave_value = 0
next_wave_value = 5


function spawn_next_wave() {
	alarm[0] = room_speed
	
	wave_num += 1
	wave_value = next_wave_value
	next_wave_value = get_next_wave_value(wave_value)
	
	if (wave_num == 3) {
		add_enemie(o_albinoGoblin, 3)
	}
}

function get_next_wave_value(cur_val) {
	return ceil(cur_val * 1.5)
}

spawn_next_wave()