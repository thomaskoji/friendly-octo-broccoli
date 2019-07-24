#macro view view_camera[0]
camera_set_view_size(view,viewWidth,viewHeight);

if(instance_exists(obj_player))
{
	var _x = clamp(obj_player.x-viewWidth/2,0,room_width-viewWidth);
	var _y = clamp(obj_player.y-viewHeight/2,0,room_height-viewHeight);
	
	var _curX = camera_get_view_x(view);
	var _curY = camera_get_view_y(view);
	
	var _speed = .1;
	camera_set_view_pos(view,lerp(_curX,_x,_speed),lerp(_curY,_y,_speed));
}