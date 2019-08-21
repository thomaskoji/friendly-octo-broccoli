if(state_new)
{
	image_speed = defaultImageSpeed;
	sprite_index = spr_playerJump;
	image_index = 0;
	velocity[XAXIS] += wallJumpXSpeed * -onWall;
	velocity[YAXIS] -= wallJumpYSpeed;
	wallJumpRestrictionTimer = 1 * room_speed;
}

wallJumpRestrictionTimer --;

if(velocity[XAXIS] != 0)
{	face_direction = sign(velocity[XAXIS]);}

scr_applyGravity(fallGravity,fallMaxGravity);

if(wallJumpRestrictionTimer < 0)
{
	scr_applyXMovement(g.inputHorizontalTotal, jumpAccel, jumpMaxSpeed, jumpFriction);
}

if(animation_end())
{	image_index = image_number - 1;}

#region state machine

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
}

if(onWall != 0 and onWall = g.inputHorizontalTotal)
{ stateSwitch("wallLatch");}

if(g.jump[pressed] and onWall != 0)
{
	stateSwitch("wallJump");
}

#endregion