if(state_new and !jumped)
{
	image_speed = 0.5;
	sprite_index = spr_playerBackflip;
	image_index = 0;
	velocity[YAXIS] -= jump_power;
	jumped = true;
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}

if(global.inputUpHeld and global.inputMouseLeftPressed)
{
	stateSwitch("attackGroundUp");
	jumped = false;
}

if(global.inputDownHeld and global.inputMouseLeftPressed)
{
	stateSwitch("attackGroundDown");
	jumped = false;
}

if(global.inputLeftHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundLeft");
	jumped = false;
}

if(global.inputRightHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundRight");
	jumped = false;
}