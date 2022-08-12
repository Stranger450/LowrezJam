/// @description Insert description here
// You can write your code in this editor

path_delete(p_deb)

p_deb = pathfindingcontroller.calculate_path(x, y, o_castle.x, o_castle.y)

if p_deb != -1 {
	var node_0_x = path_get_point_x(p_deb, 0)
	var node_0_y = path_get_point_y(p_deb, 0)
	var node_1_x = path_get_point_x(p_deb, 1)
	var node_1_y = path_get_point_y(p_deb, 1)

	if distance_to_point(node_0_x, node_0_y) > distance_to_point(node_1_x, node_1_y)
		path_delete_point(p_deb, 0)

	path_insert_point(p_deb, 0, x, y, 1)

	path_start(p_deb,spd,path_action_stop,1)
}
	
