//STEP---------------------------------------
if(argument0==step)
{
	var _spd_for_slide=1.75;
	if((velocity[XAXIS] < -_spd_for_slide && dpad_dir==east) || 
		 (velocity[YAXIS] > _spd_for_slide && dpad_dir==west))
	{
		truestate_switch(States.slide);
	}
	move_player(1,true,1);
	
	if(jump[pressed])
	{
		truestate_switch(States.jump);
	}
	if(velocity[XAXIS] == 0 && dpad_dir == no_direction)
	{
		truestate_switch(States.wait);
		state_var[0] = true;
		exit;
	}
}
//DRAW---------------------------------------
else if(argument0 == draw)
{
	sprite_index = spr_playerRun
	
	if(velocity[XAXIS] != 0)
		face_direction = sign(velocity[XAXIS]);
	
	if(against_wall[0] != 0 || state_var[0])
	{
		image_speed = 1;
		sprite_index = spr_playerPush;	
	}
	draw_self_facing();	
}