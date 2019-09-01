/// @description prints out a grid 
/// @param grid,titleMessage

var _grid = argument[0]; 
var _title = argument[1]; 

var _str = ""; 
for (var i = 0; i < ds_grid_height(_grid); ++i;)
{
	for (var k = 0; k < ds_grid_width(_grid); ++k;)
	{
		_str += string(_grid[# k,i]) + ","; 
	}
	_str += "\n"; 
}
show_message(_title + "\n" + _str); 