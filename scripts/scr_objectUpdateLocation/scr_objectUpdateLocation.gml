//gravity
if(velocity[YAXIS] < gravity_max)
{
	velocity[YAXIS] += gravity_inc;
}

//horizontal
if(place_meeting(x + velocity[XAXIS], y, _solid_parent))
{
	while(!place_meeting(x + sign(velocity[XAXIS]), y, _solid_parent))
	{
		x += sign(velocity[XAXIS]);
	}
	velocity[XAXIS] = 0;
}
x += velocity[XAXIS];

//vertical
if(place_meeting(x, y + velocity[YAXIS], _solid_parent))
{
	while(!place_meeting(x, y + sign(velocity[YAXIS]), _solid_parent))
	{
		y += sign(velocity[YAXIS]);
	}
	velocity[YAXIS] = 0;
}
y += velocity[YAXIS];