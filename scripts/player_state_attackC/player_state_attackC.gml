if(state_new)
{
	sprite_index = spr_playerAttackC;
	image_speed = attackImageSpeed;
	image_index = 0;
	attackTimer = 0;
	willAttack	= false;
	staminaTimer = 0;
}

#region state machine

if (animation_end())
{
	stateSwitch("wait");
}

#endregion