/// @description Insert description here
// You can write your code in this editor



shader_set(HitShader)

shader_set_uniform_f(shader_params,lv)

draw_self()

draw_set_font(global.Font)

draw_text(x,y,hp)

shader_reset()