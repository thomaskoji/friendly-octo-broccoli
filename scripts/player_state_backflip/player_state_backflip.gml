if(state_new && !jumped)
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