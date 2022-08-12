/// @description Insert description here
// You can write your code in this editor
if position_meeting(x+3,y+3,o_goldfield){
	drop += 1	
}

gamecontroller.player_money += drop

part_particles_create(particles.pg_system, x+3, y+3, particles.blood, 10)

audio_play_sound(death_sound, 1, false)