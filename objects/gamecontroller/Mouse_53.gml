/// @description Insert description here
// You can write your code in this editor



selected_x_start = floor(mouse_x / 6) * 6
selected_y_start = floor(mouse_y / 6) * 6 
if not instance_exists(o_tower_purchase_field) and mouse_x>=0 and mouse_x <= 60 and mouse_y >=0 and mouse_y <= 60{
	if not collision_point(selected_x_start, selected_y_start, parent_cannotBuyHere, false, false){
		instance_create_layer(selected_x_start, selected_y_start, "shop", o_tower_purchase_field)
	}
}