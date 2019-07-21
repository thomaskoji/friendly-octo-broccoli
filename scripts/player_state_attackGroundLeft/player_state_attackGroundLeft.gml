if(state_new)
{
	sprite_index = spr_playerAttackA; //Place holder
	image_speed = attackImageSpeed;
	image_index = 0;
	currentStamina -= attackSideStaminaCost;
	staminaTimer = 0;
}

velocity[YAXIS] = 0;
face_direction = -1;
scr_applyXFriction(attackGroundUpFriction);

if(image_index = 2)
{
	velocity[XAXIS] -= attackGroundSideVelocity;
}

#region state machine

if(image_index > image_number - 1)
{
	stateSwitch("wait");
}

#endregion