/// @description Insert description here
// You can write your code in this editor
randomise()

draw_selected_field = true
inside_bounds = false
selected_alpha = 0.6

enemy_start = irandom_range(0, 9)
player_start = irandom_range(0, 9)

instance_create_layer(54, enemy_start*6, "towers", o_hole)
instance_create_layer(0, player_start*6, "towers", o_castle)


shopList = [o_normal_tower, o_catapult, o_magetower, o_wall,o_spikes,o_goldfield,o_swamp]

player_money = 42

prices = ds_map_create()

prices[? o_normal_tower] = 3
prices[? o_catapult]     = 5
prices[? o_magetower]    = 6
prices[? o_wall]         = 1
prices[? o_spikes]       = 3
prices[? o_goldfield]    = 4
prices[? o_swamp]        = 2