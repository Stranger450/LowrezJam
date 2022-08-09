/// @description Insert description here
// You can write your code in this editor


// draw selected field
if (mouse_x>=0 and mouse_x < 60 and mouse_y >=0 and mouse_y <= 60) {inside_bounds = true}
else {inside_bounds = false}

selected_x_start = floor(mouse_x / 6) * 6
selected_y_start = floor(mouse_y / 6) * 6 
	
if inside_bounds and draw_selected_field {

	draw_set_alpha(selected_alpha)
	draw_rectangle(selected_x_start, selected_y_start, selected_x_start + 5, selected_y_start + 5, true)
	draw_set_alpha(1)

}


#region moneybar
draw_set_color(#eebc1d)//#ffd700
draw_rectangle(60,60-player_money-1, 64,60, false)
draw_set_color(#ffffff)
#endregion moneybar