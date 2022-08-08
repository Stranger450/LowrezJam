/// @description Insert description here
// You can write your code in this editor
draw_self()

for (var i = 0; i < array_length(gamecontroller.shopList); ++i) {
    draw_sprite(object_get_sprite(gamecontroller.shopList[i]),0,x+1+6*i,y+1)
}

draw_set_alpha(selected_alpha)
draw_rectangle(selected_x_start, selected_y_start, selected_x_start + 5, selected_y_start + 5, true)
draw_set_alpha(1)


