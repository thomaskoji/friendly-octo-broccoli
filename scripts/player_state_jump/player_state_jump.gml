var _startY = y;
if (state_new)
{
	velocity[YAXIS] -= jump_power;
	currentSprite = spr_playerJump;
}

//about to touch ground
if (y + velocity[YAXIS]/2 >= _startY)
{
	y = _startY;
	velocity[YAXIS] = 0;
	stateSwitch("wait");
}
add_velocity();