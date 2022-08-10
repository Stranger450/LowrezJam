/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < instance_number(o_wall); ++i) {
    current_wall = instance_find(o_wall, i)
	with (current_wall){
		event_user(0)
	}
}

part_particles_create(particles.p_system, x + sprite_width/2, y + sprite_width/2, particles.dust1, 10)