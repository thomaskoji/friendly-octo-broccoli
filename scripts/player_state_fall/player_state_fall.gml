
move_player(.25,false,1);

if(against_wall[1])
{
	if(velocity[XAXIS] == 0)
		{stateSwitch("wait");}
	else
		{stateSwitch("slide");}
}

sprite_index=spr_playerFall;