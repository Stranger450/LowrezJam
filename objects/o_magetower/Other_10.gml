/// @description Insert description here
// You can write your code in this editor


direction = point_direction(x+3,y+3,attack_choice.x+3,attack_choice.y+3)

part_type_direction(particles.mage_shoot,direction-30,direction+30,0,3)

part_particles_create(particles.p_system,x+3,y+3,particles.mage_shoot,30)

radians = (direction/180)*pi

middle_x = x + cos(radians) * range
middle_y = y - sin(radians) * range

right_x = x + cos(radians-pi/6) * range
right_y = y - sin(radians-pi/6) * range

left_x = x + cos(radians+pi/6) * range
left_y = y - sin(radians+pi/6) * range


collision_line_list(x+3, y+3, left_x, left_y, parent_enemy, false, false, all_enemies, true)
collision_line_list(x+3, y+3, middle_x, middle_y, parent_enemy, false, false, all_enemies, true)
collision_line_list(x+3, y+3, right_x, right_y, parent_enemy, false, false, all_enemies, true)


for (var i = ds_list_size(all_enemies); i > 0; --i) {
	if all_enemies[| i] == all_enemies[| i-1]{
		ds_list_delete(all_enemies, i)
	}
}
for (var i = 0; i < ds_list_size(all_enemies); ++i) {
	enemy = all_enemies[| i]
    enemy.hp -= dmg
}

ds_list_clear(all_enemies)