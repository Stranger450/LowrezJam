/// @description Insert description here
// You can write your code in this editor

var minimum = 2500
attack_choice = noone


for (var i = 0; i < instance_number(parent_enemy); ++i) {
    enemy = instance_find(parent_enemy, i)
	distance = distance_to_object(enemy)
	if min_range <= distance <= range
		if enemy.distance_to_goal < minimum
			attack_choice = enemy
			minimum = enemy.distance_to_goal
}

if attack_choice != noone{
	event_user(0)	
}

alarm[0] = shoot_cd