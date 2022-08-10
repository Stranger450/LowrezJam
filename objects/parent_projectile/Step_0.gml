/// @description Insert description here
// You can write your code in this editor

image_angle = direction

if instance_exists(goal)
	direction = point_direction(x,y,goal.x,goal.y)
else
	instance_destroy(self)

