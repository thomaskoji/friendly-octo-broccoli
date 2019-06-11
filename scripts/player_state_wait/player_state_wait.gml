if ( state_new )
{
	sprite_index = spr_playerWait;
}

scr_applyXFriction(runFriction);

#region state machine

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed)
{
	stateSwitch("run");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(global.inputControlHeld)
{
	stateSwitch("crouch");
}

if(global.inputControlPressed && global.inputHorizontalTotal != 0)
{
	stateSwitch("crouchWalk");
}

#endregion