if(state_new)
{
	sprite_index = spr_playerAttackA; //Place holder
	image_speed = attackImageSpeed;
	image_index = 0;
	currentStamina -= attackStaminaCost;
	staminaTimer = 0;
}

scr_applyGravity(attackGroundUpGravity,attackGroundUpMaxGravity);
scr_applyXFriction(attackGroundUpFriction);

if(animation_end())
{
	stateSwitch("wait");
}