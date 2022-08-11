/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < instance_number(parent_enemy); ++i) {
    enemy = instance_find(parent_enemy, i)
	distance = distance_to_object(enemy)
	if distance < 2.5{
		with(enemy){
			event_user(1)	
		}
		enemy.hp -= p_dmg
	}
	
}


for (var i = 0; i < 20; ++i) {
	part_particles_create(particles.p_system, x, y, particles.catapult_land, 1)
    var col = irandom_range(120, 220)
	part_type_color_rgb(particles.catapult_land,col,col,col,col,col,col)
}
