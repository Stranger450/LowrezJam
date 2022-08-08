/// @description Insert description here
// You can write your code in this editor


// draw selected field

selected_x_start = floor(mouse_x / 6) * 6
selected_y_start = floor(mouse_y / 6) * 6 


if (draw_selected_field) and mouse_x>=0 and mouse_x <= 60 and mouse_y >=0 and mouse_y <= 60{
	draw_set_alpha(selected_alpha)
	draw_rectangle(selected_x_start, selected_y_start, selected_x_start + 5, selected_y_start + 5, true)
	draw_set_alpha(1)
}