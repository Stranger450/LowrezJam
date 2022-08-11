/// @description Insert description here
// You can write your code in this editor

hovered_price = noone
radius = noone
min_radius = noone

gamecontroller.draw_selected_field = false
selected_alpha = gamecontroller.selected_alpha
selected_x_start = gamecontroller.selected_x_start
selected_y_start = gamecontroller.selected_y_start

x -= (sprite_width / 2) - 3

x = clamp(x, 0, 60-sprite_width)

if (y < 30) {
	// draw below
	y += 7
} else {
	y -= 15
}
