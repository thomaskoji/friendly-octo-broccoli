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