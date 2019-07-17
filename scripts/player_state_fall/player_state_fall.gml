if(state_new)
{
	if (state_previous != "jump")
	{
		sprite_index = spr_playerFall;
		image_index = 0;
	}
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed && velocity[YAXIS] == 0)
{
	stateSwitch("run");
}

if(global.inputControlHeld && velocity[YAXIS] == 0)
{
	stateSwitch("crouch");
}

if(global.inputControlPressed && global.inputHorizontalTotal != 0 && velocity[YAXIS] == 0)
{
	stateSwitch("crouchWalk");
}

#endregion