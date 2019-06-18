if(state_new)
{
	sprite_index = spr_playerCrouch;
}

scr_applyXFriction(crouchFriction);

#region state machine

if(global.inputHorizontalTotal = 0 && global.inputControlReleased)
{
	stateSwitch("wait");
}

if(global.inputHorizontalTotal != 0 && !global.inputControlHeld)
{
	stateSwitch("run");
}

if(global.inputControlHeld && global.inputHorizontalTotal != 0)
{
	stateSwitch("crouchWalk");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

#endregion