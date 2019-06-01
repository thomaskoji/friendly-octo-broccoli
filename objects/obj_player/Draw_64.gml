draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour($e4924f);
draw_set_font(fnt_consolas);
draw_text(x, y-15, string(dpad_dir));
draw_text(x, y-25, string(state));
draw_text(x, y-35, "j" + string(jump[0]) + string(jump[1]) + string(jump[2]));
draw_text(x, y-45, "d" + string(dodge[0]) + string(dodge[1]) + string(dodge[2]));