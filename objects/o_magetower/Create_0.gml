/// @description Insert description here
// You can write your code in this editor

shoot_cd = 1

event_inherited()

range = 15

dmg = 0.35

all_enemies = ds_list_create()

e = part_emitter_create(particles.p_system)

part_emitter_region(particles.p_system, e, x + 3, x + sprite_width - 2, y+4, y+4, ps_shape_line, ps_distr_linear)

part_emitter_stream(particles.p_system, e, particles.mage_aura, 1)
