if(state_new)
{
	image_index = spr_skeltonIdle;
	image_speed = 0.2;
}

var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_distance_to_player < 100)
{
	stateSwitch("chase");
}