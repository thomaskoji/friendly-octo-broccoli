if(state_new)
{
	sprite_index = spr_playerAttackA;
	image_speed = attackImageSpeed;
	image_index = 0;
	attackTimer = 0;
}

#region state machine

if (image_index > image_number - 1)
{
	stateSwitch("wait");
}


var _time_limit		= 18;
var _will_attack	= false;
attackTimer++;

if(global.inputMouseLeftPressed and attackTimer < _time_limit)
{
	_will_attack = true;
}

if(attackTimer >= _time_limit and _will_attack)
{
	stateSwitch("attackB");
}

#endregion
