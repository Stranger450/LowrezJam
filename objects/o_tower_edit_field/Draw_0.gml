/// @description Insert description here
// You can write your code in this editor



draw_self()

draw_set_alpha(selected_alpha)
draw_rectangle(selected_x_start, selected_y_start, selected_x_start + 5, selected_y_start + 5, true)
draw_set_alpha(1)

if object_get_parent(tower.object_index) == parent_tower{
	draw_circle(selected_x_start+3, selected_y_start+3, tower.range, true)
	if tower.object_index == o_catapult{
		draw_circle(selected_x_start+3, selected_y_start+3, tower.min_range, true)	
	}
}