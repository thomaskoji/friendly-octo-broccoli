#region pause menu
if(pause)
{
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0])
	draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	var _vw = camera_get_view_width(view);
	var _vh = camera_get_view_height(view);
	draw_text(_vw/2, _vh/2, "paused");
}

#endregion