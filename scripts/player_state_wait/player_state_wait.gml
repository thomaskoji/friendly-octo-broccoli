if(state_new)
{
	image_speed = waitImageSpeed;
	sprite_index = spr_playerWait;
	image_index = 0;
}

scr_applyXFriction(runFriction);

#region state machine

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed)
{
	stateSwitch("run");
}

if(global.inputControlHeld)
{
	stateSwitch("crouch");
}

if(global.inputControlPressed && global.inputHorizontalTotal != 0)
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

if(global.inputMouseLeftPressed and currentStamina > attackStaminaCost)
{
	stateSwitch("attackA")
}

if(global.inputUpHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundUp");
}

if(global.inputDownHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundDown");
}

#endregion