if(state_new)
{
	sprite_index = spr_skeltonIdle;
	image_speed = 0.2;
	image_index = 0;
}

var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_distance_to_player < chaseDistance)
{
	stateSwitch("chase");
}