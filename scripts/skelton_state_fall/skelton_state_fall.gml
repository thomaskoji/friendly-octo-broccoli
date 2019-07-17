if (state_new)
{
	sprite_index = spr_skeltonIdle;
	image_index = 0;
	image_speed = 0.2;
}

scr_applyXFriction(fallFriction);

scr_applyGravity(fallGravity,fallMaxGravity);

if (onGround)
{
	stateSwitch("wait");
}