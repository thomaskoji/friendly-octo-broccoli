if(state_new and !jumped)
{
	image_speed = jumpImageSpeed;
	sprite_index = spr_playerBackflip;
	image_index = 0;
	velocity[YAXIS] -= jump_power;
	jumped = true;
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}