/// @description Insert description here
// You can write your code in this editor

if instance_exists(goal){
	gx = goal.x+2
	gy = goal.y+2
}else{
	if point_distance(x,y,gx,gy)<=2{
		instance_destroy(self)	
	}
}


distance_behind += speed
distance_forward = point_distance(gx, gy, x, y)
total_distance = distance_behind + distance_forward
size_increase = 1 + (distance_forward / total_distance) * 1.5

image_xscale = size_increase
image_yscale = size_increase
direction = point_direction(x,y,gx,gy)


if place_meeting(x,y,goal){
	instance_destroy(self)
}

