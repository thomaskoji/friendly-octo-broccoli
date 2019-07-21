if(state_new)
{
	sprite_index = spr_playerAttackA;
	image_speed = attackImageSpeed;
	image_index = 0;
	attackTimer = 0;
	willAttack	= false;
	currentStamina -= attackStaminaCost;
	staminaTimer = 0;
}

if(image_index = 2)
{
	velocity[YAXIS] -= attackGroundUpVelocity;
}

scr_applyGravity(attackGroundUpGravity,attackGroundUpMaxGravity);
scr_applyXFriction(attackGroundUpFriction);

#region state machine

if(image_index > image_number - 1)
{
	image_index = image_number - 1;
}

var _attack_max_time = 25;
if(attackTimer >= _attack_max_time)
{
	stateSwitch("wait");
}
attackTimer++;

#endregion