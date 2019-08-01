if(state_new)
{
	sprite_index = spr_skeltonWalk;
	image_speed = 0.2;
	image_index = 0;
}

face_direction = sign(obj_player.x - x);

var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_distance_to_player < attackDistance)
{
	stateSwitch("attack");
}

scr_applyXMovement(face_direction, runAccel, runMaxSpeed, runFriction);

if (!onGround)
{
	stateSwitch("fall");
}