if(state_new)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerJump;
}

//about to touch ground
var _startY = y;
if(y + velocity[YAXIS]/2 >= _startY)
{
	y = _startY;
	velocity[YAXIS] = 0;
	stateSwitch("wait");
}