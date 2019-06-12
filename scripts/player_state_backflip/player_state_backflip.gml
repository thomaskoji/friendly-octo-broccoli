if(state_new && !jumped)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerBackflip;
	jumped = true;
}

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}