if (state_new)
{
	velocity[YAXIS] -= jump_power;
	currentSprite = spr_playerJump;
}
add_velocity();