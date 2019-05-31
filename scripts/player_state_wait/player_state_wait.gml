//STEP---------------------------------------
if(argument0==step)
{
	
	if(run[held])
	{
		truestate_switch(States.run)
	}
	
	if(dpad_dir == east || dpad_dir == west)
	{
		truestate_switch(States.run);	
	}
	if(jump[pressed])
	{
		truestate_switch(States.jump);	
	}
	if(attack[pressed])
	{
		truestate_switch(States.attack);
	}
	
	move_player(0,true,1);
}


//DRAW---------------------------------------
else if(argument0==draw)
{
	if(state_new)
	{
		sprite_index=spr_playerWait;
	}
	draw_self_facing();
}