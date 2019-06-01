draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_set_font(fnt_consolas);
draw_text(obj_player.x, obj_player.y-15, string(obj_player.dpad_dir));
draw_text(obj_player.x, obj_player.y-25, string(obj_player.state));
