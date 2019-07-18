if(state_new)
{
	sprite_index = spr_playerAttackB;
	image_speed = attackImageSpeed;
	image_index = 0;
}

#region state machine

if (image_index > image_number - 1)
{
	stateSwitch("wait");
}

#endregion