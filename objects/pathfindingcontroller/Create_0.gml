/// @description Insert description here
// You can write your code in this editor

enum Cell {
	empty,
	obstructed,
}

function Coord(x, y) constructor {
	_x = x
	_y = y
	
	static add = function(o) {
		_x += o._x
		_y += o._y
	}
}

successors = [new Coord(1, 0), new Coord(0, 1), new Coord(-1, 0), new Coord(0, -1)]


grid = ds_grid_create(10, 10)
ds_grid_clear(grid, Cell.empty)



function to_index(val) {
	return floor(val/6)	
}

function set_collider(_x, _y) {
	x_ind = to_index(_x)
	y_ind = to_index(_y)
	
	grid[# x_ind, y_ind] = Cell.obstructed
}

function inside(coords) {
	if (coords._x < 10 and coords._x >= 0 and coords._y < 10 and coords._y >= 0) {
		return grid[# coords._x, coords._y] == Cell.empty
	} else {
		return false	
	}
}


function h(from, to) {
	return abs(from._x - to._x) + abs(from._y - to._y)
}

function c(from, to) {
	return 1	
}


function calculate_path(from_x, from_y, to_x, to_y) {
	open = ds_priority_create()
	closed = ds_list_create()
	
	g = ds_grid_create(10, 10)
	ds_grid_clear(g, 0)
	
	pred = ds_grid_create(10, 10)
	ds_grid_clear(pred, -1)
	
	ds_priority_add(open, new Coord(to_index(from_x), to_index(from_y)), 0)
	
	while (not ds_priority_empty(open)) {
		current = ds_priority_delete_min(open)
		
		if (current._x == to_x and current._y == to_y) {
			
			return 0
		}
		
		ds_list_add(closed, current)
		
		for (var i = 0; i < array_length(successors); ++i) {
		    diff = successors[i]
			successor = current.add(diff)
			
			if (not inside(successor)) {
				continue	
			}
			
			if (ds_list_find_index(closed, successor) != -1) {
				continue
			}
			
			tentative_g = g[# current._x, current._y] + c(current, successor)
			
			ind = ds_priority_find_priority(open, successor)
			
			if (ind != undefined and tentative_g >= g[# successor._x, successor._y]) {
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
	return -1
}