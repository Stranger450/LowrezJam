/// @description Insert description here
// You can write your code in this editor


clickedInstance = floor((mouse_x-(x+1))/6)

if clickedInstance >= 0 and clickedInstance < array_length(gamecontroller.shopList){
	instance_create_layer(selected_x_start,selected_y_start,"towers",gamecontroller.shopList[clickedInstance])
	pathfindingcontroller.set_collider(selected_x_start, selected_y_start)
}