if(state_new and !jumped)
{
	image_speed = defaultImageSpeed;
	sprite_index = spr_playerBackflip;
	image_index = 0;
	velocity[YAXIS] -= jumpPower;
	jumped = true;
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, jumpAccel, jumpMaxSpeed, jumpFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}