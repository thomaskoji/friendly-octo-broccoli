//STEP---------------------------------------
if(argument0==step)
{
	
	if(run[held])
	{
		truestate_switch(States.run)
	}
}


//DRAW---------------------------------------
else if(argument0==draw)
{
	if(state_new)
	{
		sprite_index = spr_player;
	}
}