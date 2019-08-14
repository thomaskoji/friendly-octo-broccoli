onGround			= false;
onWall				= 0; //1 right, -1 left
face_direction		= 1; //1 right, -1 left

upixelH = shader_get_uniform(sh_outline,"pixelH");
upixelW = shader_get_uniform(sh_outline,"pixelW");
texelW	= texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH	= texture_get_texel_height(sprite_get_texture(sprite_index,0));