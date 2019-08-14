draw_sprite_ext(mask_index, 0, round(x), round(y), face_direction, image_yscale, 0, c_white, 0.5);draw_self_facing();
shader_set(sh_outline);
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
draw_self_facing();
shader_reset();