if(state_new)
{
	sprite_index = spr_skeltonWalk;
	image_speed = 0.2;
	image_index = 0;
}

image_xscale = sign(obj_player.x - x);
if (image_xscale == 0)
{
	image_xscale = 1;
}

var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_distance_to_player < attackDistance)
{
	stateSwitch("attack");
}

scr_applyXMovement(image_xscale, runAccel, runMaxSpeed, runFriction);

if (!onGround)
{
	stateSwitch("fall");
}