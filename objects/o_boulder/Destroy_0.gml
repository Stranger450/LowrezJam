/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < instance_number(parent_enemy); ++i) {
    enemy = instance_find(parent_enemy, i)
	distance = distance_to_object(enemy)
	if distance < 4{
		enemy.hp -= p_dmg
	}
	
}

