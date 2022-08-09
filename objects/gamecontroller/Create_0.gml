/// @description Insert description here
// You can write your code in this editor
randomise()

draw_selected_field = true
selected_alpha = 0.6

enemy_start = irandom_range(0, 9)
player_start = irandom_range(0, 9)

instance_create_layer(54, enemy_start*6, "towers", o_hole)
instance_create_layer(0, player_start*6, "towers", o_castle)


shopList = [o_normal_tower, o_catapult, o_magetower, o_wall,o_spikes,o_goldfield,o_swamp]