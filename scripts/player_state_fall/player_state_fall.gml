if(state_new)
{
	if(state_previous != "backflip")
	{
		sprite_index = spr_playerFall;
		image_index = 0;
		image_speed = defaultImageSpeed;
	}
}

if(velocity[XAXIS] != 0)
{	face_direction = sign(velocity[XAXIS]);}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, jumpAccel, jumpMaxSpeed, jumpFriction);

#region state machine

if(velocity[YAXIS] == 0)
{	stateSwitch("wait");}

if(g.inputHorizontalTotal != 0 && !g.slide[pressed] && velocity[YAXIS] == 0)
{	stateSwitch("run");}

if(onWall != 0 and onWall = g.inputHorizontalTotal)
{ stateSwitch("wallLatch");}

#endregion