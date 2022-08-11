/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x, mouse_y, self){
	hoveredInstance = floor((floor((mouse_y-y)/7)*4+(mouse_x-(x+1))/6))

	if hoveredInstance >= 0 and hoveredInstance < array_length(gamecontroller.shopList){
		var inst = gamecontroller.shopList[hoveredInstance]
		var price = gamecontroller.prices[? inst]
		hovered_price = price
		if object_get_parent(inst) == parent_tower{
			radius = gamecontroller.range_list[hoveredInstance]
			min_radius = gamecontroller.min_range_list[hoveredInstance]
		}
		else{
			radius = noone	
		}
	}
	else{
		hoveredInstance = noone
		hovered_price = noone
		radius = noone
		min_radius = noone
	}
}