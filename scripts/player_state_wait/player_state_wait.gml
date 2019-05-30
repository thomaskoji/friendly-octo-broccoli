if (state_new)
{
	sprite_index = spr_player;
}

if (velocity[XAXIS] > 0 || velocity[YAXIS] > 0)
{
	truestate_switch(States.run)
}