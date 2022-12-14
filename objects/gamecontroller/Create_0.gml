/// @description Insert description here
// You can write your code in this editor
randomise()

global.Font = font_add_sprite(s_font, ord(0),true, 1)
audio_play_sound(sfx_theme, 0, true)

draw_selected_field = true
inside_bounds = false
selected_alpha = 0.6

enemy_start = irandom_range(0, 9)
player_start = irandom_range(0, 9)

instance_create_layer(54, enemy_start*6, "towers", o_hole)
instance_create_layer(0, player_start*6, "towers", o_castle)


shopList = [o_normal_tower, o_catapult, o_magetower, o_wall,o_spikes,o_goldfield,o_swamp]
range_list = [20, 30, 12, 0]
min_range_list = [0, 12, 0, 0]

player_money = 20
player_oldMoney = player_money

prices = ds_map_create()

prices[? o_normal_tower] = 8
prices[? o_catapult]     = 12
prices[? o_magetower]    = 18
prices[? o_wall]         = 2
prices[? o_spikes]       = 8
prices[? o_goldfield]    = 7
prices[? o_swamp]        = 4

var _fxshake = fx_create("_filter_screenshake")
fx_set_parameter(_fxshake, "g_Magnitude",1.0)
fx_set_parameter(_fxshake, "g_ShakeSpeed ",0.25)
layer_set_fx("Screenshake",_fxshake)
layer_enable_fx("Screenshake",false)