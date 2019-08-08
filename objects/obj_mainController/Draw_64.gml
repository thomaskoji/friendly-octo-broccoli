#region pause menu
if(pause)
{
	draw_sprite_stretched(screenShot,0,0,0,obj_displayController.ideal_width,obj_displayController.ideal_height);
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