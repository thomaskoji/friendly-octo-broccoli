if(state_new and !jumped)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerJump;
	image_index = 0;
	jumped = true;
	state_var[0] = false; // player has let go of jump
}

if (state_var[0] = false and global.inputSpaceHeld == false)
{
	velocity[YAXIS] *= 0.9;
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