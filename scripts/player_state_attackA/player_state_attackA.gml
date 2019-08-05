if(state_new)
{
	sprite_index = spr_playerAttackA;
	image_speed = attackImageSpeed;
	image_index = 0;
	attackTimer = 0;
	willAttack	= false;
	staminaTimer = 0;
}

if(animation_hit_frame(3))
{
	create_hitbox(x, y, self, spr_playerAttackAHitbox, 0, 10, 5, face_direction);
}

scr_applyXFriction(attackFriction);

#region state machine

if(animation_end())
{
	image_index = image_number - 1;
}

var _attack_max_time = 25;
if(attackTimer >= _attack_max_time)
{
	stateSwitch("wait");
}
attackTimer++;

if(g.attack[pressed] and attackTimer < _attack_max_time)
{
	willAttack = true;
}

if(attackTimer >= _attack_max_time and willAttack)
{
	stateSwitch("attackB");
}

#endregion
