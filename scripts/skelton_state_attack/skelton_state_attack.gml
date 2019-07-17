if(state_new)
{
	sprite_index = spr_skeltonAttack;
	image_speed = 0.2;
	image_index = 0;
}

scr_applyXFriction(attackFriction);

if (image_index > image_number - 1)
{
	stateSwitch("wait");
}