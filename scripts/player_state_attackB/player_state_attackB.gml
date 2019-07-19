if(state_new)
{
	sprite_index = spr_playerAttackB;
	image_speed = attackImageSpeed;
	image_index = 0;
	attackTimer = 0;
	willAttack	= false;
}

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

if(global.inputMouseLeftPressed and attackTimer < _attack_max_time)
{
	willAttack = true;
}

if(attackTimer >= _attack_max_time and willAttack)
{
	stateSwitch("attackC");
}

#endregion