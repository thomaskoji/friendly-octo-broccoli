if(keyboard_check_pressed(ord("Q"))) 
{game_end();}
	
if(keyboard_check_pressed(vk_escape))
{
	pause = !pause
}

if(pause)
{
	if(!sprite_exists(screenShot))
	{
        //screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);
		screen_save("screenShot.png");
		screenShot = sprite_add("screenShot.png",0,false,false,0,0);
	}
    instance_deactivate_layer(layer_get_id("Actors"));
}
else
{
    if(sprite_exists(screenShot))
	{
        sprite_delete(screenShot);
    }
    instance_activate_all();
}