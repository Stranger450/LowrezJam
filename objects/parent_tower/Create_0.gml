/// @description Insert description here
// You can write your code in this editor

part_particles_create(particles.p_system, x + sprite_width/2, y + sprite_width/2, particles.dust1, 10)

range = 20
min_range = 0
dmg = 10

alarm[0] = shoot_cd

audio_play_sound(sfx_turret_place, 1, false)