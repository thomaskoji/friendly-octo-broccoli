
//var _number = instance_number(all);
var _debugList = ds_list_create(); 
with all
{
    var _name = object_get_name(object_index); 
    var _position = ds_list_find_index(_debugList, _name); 

    if (_position == -1)
    {
        ds_list_add(_debugList, _name, 1);
    }
    else
    {
        var _currentValue = ds_list_find_value(_debugList, _position + 1); 
        ds_list_replace(_debugList, _position + 1, _currentValue + 1); 
    }
}

var _debugString = ""; 
for (var i = 0; i < ds_list_size(_debugList); i += 2)
{
    _debugString += ds_list_find_value(_debugList,i) + ",";
    _debugString += string(ds_list_find_value(_debugList,i +1)) + "\n";
}

show_message(_debugString); 
ds_list_destroy(_debugList); 