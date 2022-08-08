/// @description Insert description here
// You can write your code in this editor

points = 0

if collision_point(x, y-6, o_wall, false, false){
	points += 1
}
if collision_point(x+6, y, o_wall, false, false){
	points += 2
}
if collision_point(x, y+6, o_wall, false, false){
	points += 4
}
if collision_point(x-6, y, o_wall, false, false){
	points += 8
}

image_index = points