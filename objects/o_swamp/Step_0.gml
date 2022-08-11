/// @description Insert description here
// You can write your code in this editor


if col{
	enemy_list = ds_list_create()
	collision_rectangle_list(x,y,x+5,y+5,parent_enemy,false,true,enemy_list,false)

	for (var i = 0; i < ds_list_size(enemy_list); ++i) {
	    var enemy = enemy_list[| i]
		enemy.slowed = true
	}

	ds_list_clear(enemy_list)
}
col = false