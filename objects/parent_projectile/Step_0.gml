/// @description Insert description here
// You can write your code in this editor

image_angle = direction

if instance_exists(goal){
	gx = goal.x+2
	gy = goal.y+2
}else{
	if point_distance(x,y,gx,gy)<=2{
		instance_destroy(self)	
	}
}
	

direction = point_direction(x,y,gx,gy)


if place_meeting(x,y,goal){
	goal.lv = 0.6
	goal.alarm[2] = 5
	goal.hp -= p_dmg
	instance_destroy(self)
}