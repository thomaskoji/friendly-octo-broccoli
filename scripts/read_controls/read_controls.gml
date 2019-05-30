_key = vk_space;
dodge[pressed] = keyboard_check_pressed(_key);
dodge[released] = keyboard_check_released(_key);
if(keyboard_check(_key))
	dodge[held]++;
else
	dodge[held]=0;
	
_key = vk_left;
left[pressed] = keyboard_check_pressed(_key);
left[released] = keyboard_check_released(_key);
left[held] = keyboard_check(_key);

_key = vk_right;
right[pressed] = keyboard_check_pressed(_key);
right[released] = keyboard_check_released(_key);
right[held] = keyboard_check(_key);

_key = vk_up;
up[pressed] = keyboard_check_pressed(_key);
up[released] = keyboard_check_released(_key);
up[held] = keyboard_check(_key);

_key = vk_down;
down[pressed] = keyboard_check_pressed(_key);
down[released] = keyboard_check_released(_key);
down[held] = keyboard_check(_key);

var _h = right[held]-left[held];
var _v = down[held]-up[held];
if(point_distance(0,0,_h,_v) > 0)
	face_direction=point_direction(0,0,_h,_v);
else