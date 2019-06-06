if (!place_meeting(x + sign(velocity[XAXIS]),y,_solid_parent))
{
	x += velocity[XAXIS]; 
}
else
{
	velocity[XAXIS] = 0;
}

if (!place_meeting(x,y + sign(velocity[YAXIS]),_solid_parent))
{
	y += velocity[YAXIS]; 
}
else
{
	velocity[YAXIS] = 0;
	touchingGround = true;
}
if (velocity[YAXIS] < gravity_max and not touchingGround)
{
	velocity[YAXIS] += gravity_inc;
}
else
{ velocity[YAXIS] = gravity_max; }