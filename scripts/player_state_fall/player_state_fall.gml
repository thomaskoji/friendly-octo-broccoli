if(state_new)
{
	sprite_index=spr_playerFall;
}

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

#endregion