if(state_new)
{
	if(state_previous != "backflip")
	{
		sprite_index = spr_playerFall;
		image_index = 0;
	}
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

if(g.inputHorizontalTotal != 0 && !g.slide[pressed] && velocity[YAXIS] == 0)
{
	stateSwitch("run");
}

#endregion