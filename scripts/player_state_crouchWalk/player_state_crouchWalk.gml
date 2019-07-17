if(state_new)
{
	sprite_index = spr_playerCrouchWalk;
	image_index = 0;
}

scr_applyXMovement(global.inputHorizontalTotal, crouchAccel, crouchMaxSpeed, crouchFriction);

#region state machine

if(global.inputHorizontalTotal = 0 && global.inputControlReleased)
{
	stateSwitch("wait");
}

if(global.inputHorizontalTotal != 0 && !global.inputControlHeld)
{
	stateSwitch("run");
}

if(global.inputControlHeld && global.inputHorizontalTotal = 0)
{
	stateSwitch("crouch");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

#endregion