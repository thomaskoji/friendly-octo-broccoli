var _objAbove = instance_place(x, y, _actor_parent);

if(place_meeting(x, y, _objAbove) and _objAbove.velocity[YAXIS] > 0)
{
	with(_objAbove)
	{
		stateSwitch("wait");
		velocity[YAXIS] = 0;
	}
}