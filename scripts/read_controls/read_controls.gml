var _key = ord("A");
left[pressed] = keyboard_check_pressed(_key);
left[released] = keyboard_check_released(_key);
left[held] = keyboard_check(_key);

_key = ord("D");
right[pressed] = keyboard_check_pressed(_key);
right[released] = keyboard_check_released(_key);
right[held] = keyboard_check(_key);

_key = ord("W");
up[pressed] = keyboard_check_pressed(_key);
up[released] = keyboard_check_released(_key);
up[held] = keyboard_check(_key);

_key = ord("S");
down[pressed] = keyboard_check_pressed(_key);
down[released] = keyboard_check_released(_key);
down[held] = keyboard_check(_key);

_key = vk_space;
jump[pressed] = keyboard_check_pressed(_key);
jump[released] = keyboard_check_released(_key);
if(keyboard_check(_key))
	jump[held]++;
else
	jump[held]=0;
	
_key = vk_shift;
dodge[pressed] = keyboard_check_pressed(_key);
dodge[released] = keyboard_check_released(_key);
if(keyboard_check(_key))
	dodge[held]++;
else
	dodge[held]=0;

var _h = right[held]-left[held];
var _v = down[held]-up[held];
if(point_distance(0,0,_h,_v) > 0)
	dpad_dir=point_direction(0,0,_h,_v);
else
	dpad_dir=no_direction;