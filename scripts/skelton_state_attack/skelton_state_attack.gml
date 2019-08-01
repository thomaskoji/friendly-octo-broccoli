if(state_new)
{
	sprite_index = spr_skeltonAttack;
	image_speed = 0.2;
	image_index = 0;
}

if(animation_hit_frame(8))
{
	create_hitbox(x, y, self, spr_skeltonAttackHitbox, 0, 10, 50, face_direction);
}

scr_applyXFriction(attackFriction);

if (image_index > image_number - 1)
{
	stateSwitch("wait");
}