/// @description Insert description here
// You can write your code in this editor
if hovered_price != noone{
	draw_set_font(global.Font)
	draw_text(selected_x_start, selected_y_start, hovered_price)
}
if radius != noone{
	draw_circle(selected_x_start+3, selected_y_start+3, radius, true)
}
if min_radius != noone{
	draw_circle(selected_x_start+3, selected_y_start+3, min_radius, true)
}

draw_self()

for (var i = 0; i < array_length(gamecontroller.shopList); ++i) {
	if i < 4{
		draw_sprite(object_get_sprite(gamecontroller.shopList[i]),0,x+1+6*i,y+1)
	}else{
		draw_sprite(object_get_sprite(gamecontroller.shopList[i]),0,x+1+6*(i-4),y+7)	
	}
}

draw_set_alpha(selected_alpha)
draw_rectangle(selected_x_start, selected_y_start, selected_x_start + 5, selected_y_start + 5, true)
draw_set_alpha(1)

