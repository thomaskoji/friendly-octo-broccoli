if(state_new and !jumped)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerJump;
	image_index = 0;
	image_speed = jumpImageSpeed;
	jumped = true;
	state_var[0] = false; // player has let go of jump
}

if(animation_end())
{
	image_index = image_number - 1;
}

// when player releases jump
if (state_var[0] = false and g.jump[held] == false)
{
	velocity[YAXIS] *= 0.9;
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}