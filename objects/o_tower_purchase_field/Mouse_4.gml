/// @description Insert description here
// You can write your code in this editor


clickedInstance = floor((floor((mouse_y-y)/7)*4+(mouse_x-(x+1))/6))

if clickedInstance >= 0 and clickedInstance < array_length(gamecontroller.shopList){
	var inst = gamecontroller.shopList[clickedInstance]
	var price = gamecontroller.prices[? inst]
	
	if price <= gamecontroller.player_money and !collision_rectangle(selected_x_start,selected_y_start,selected_x_start+5,selected_y_start+5,parent_enemy,false,false){
		gamecontroller.player_money -= price
	
		instance_create_layer(selected_x_start,selected_y_start,"towers",inst)
		if clickedInstance < 4
			pathfindingcontroller.set_collider(selected_x_start, selected_y_start)
			
		layer_enable_fx("Screenshake",true)
		gamecontroller.alarm[0] = 3
		with (parent_enemy){
		event_user(0)
	}
		
	}

}