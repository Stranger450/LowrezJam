/// @description Insert description here
// You can write your code in this editor


p_deb = undefined

enum Cell {
	empty,
	obstructed,
}

function Coord(x, y) constructor {
	_x = x
	_y = y
}

successors = [new Coord(1, 0), new Coord(0, 1), new Coord(-1, 0), new Coord(0, -1)]


grid = ds_grid_create(10, 10)
ds_grid_clear(grid, Cell.empty)

pred = ds_grid_create(10, 10)


function to_index(val) {
	return floor(val/6)	
}

function set_collider(_x, _y) {
	x_ind = to_index(_x)
	y_ind = to_index(_y)
	
	grid[# x_ind, y_ind] = Cell.obstructed
}

function remove_collider(_x, _y) {
	x_ind = to_index(_x)
	y_ind = to_index(_y)
	
	grid[# x_ind, y_ind] = Cell.empty
}

function inside(coords) {
	if (coords._x < 10 and coords._x >= 0 and coords._y < 10 and coords._y >= 0) {
		if grid[# coords._x, coords._y] == Cell.empty{
			return true
		}
	} else {
		return false	
	}
}


function h(from, to) {
	//return abs(from._x - to._x) + abs(from._y - to._y)
	return point_distance(from._x, from._y, to._x, to._y)
}

function c(from, to) {
	return 1	
}


function calculate_path(from_x, from_y, to_x, to_y) {
	open = ds_priority_create()
	closed = ds_list_create()
	
	g = ds_grid_create(10, 10)
	ds_grid_clear(g, 500)
	g[# to_index(from_x), to_index(from_y)] = 0 
	
	ds_grid_clear(pred, -1)
	
	ds_priority_add(open, new Coord(to_index(from_x), to_index(from_y)), 0)
	
	while (not ds_priority_empty(open)) {
		current = ds_priority_delete_min(open)
		
		if (current._x == to_index(to_x) and current._y == to_index(to_y)) {
			p = extract_path(to_index(from_x), to_index(from_y), to_index(to_x), to_index(to_y))
			ds_grid_destroy(g)
			return p
		}
		
		ds_list_add(closed, current)
		
		for (var i = 0; i < array_length(successors); ++i) {
		    diff = successors[i]
			successor = new Coord(current._x + diff._x, current._y + diff._y)
			
			if (not inside(successor)) {
				continue	
			}
			
			if (ds_list_find_index(closed, successor) != -1) {
				continue
			}
			
			tentative_g = g[# current._x, current._y] + c(current, successor)
			
			ind = ds_priority_find_priority(open, successor)
			
			if (tentative_g >= g[# successor._x, successor._y]) {
				continue	
			}
			
			pred[# successor._x, successor._y] = i
			g[# successor._x, successor._y] = tentative_g
			
			f = tentative_g + h(successor, new Coord(to_x, to_y))
			
			if (ind != undefined) {
				ds_priority_change_priority(open, successor, f)
			} else {
				ds_priority_add(open, successor, f)	
			}
		}
	}
	
	ds_grid_destroy(g)
	return -1
}

function extract_path(f_x, f_y, t_x, t_y) {
	p = path_add()
	
	path_set_closed(p,false)
	
	
	c_x = t_x
	c_y = t_y
	
	
	while (!(c_x == f_x and c_y == f_y)) {
		path_add_point(p, c_x, c_y, 1)
		
		show_debug_message("x: " + string(c_x) + "    y: " + string(c_y))
		
		dir = pred[# c_x, c_y]
		
		c_x -= successors[dir]._x
		c_y -= successors[dir]._y
	}
	
	path_add_point(p, f_x, f_y, 1)
	
	path_reverse(p)
	path_rescale(p, 6, 6)
	wrong_x = path_get_point_x(p, 0)
	wrong_y = path_get_point_y(p, 0)
	path_shift(p, f_x*6-wrong_x,f_y*6-wrong_y)
	
	return p	
}