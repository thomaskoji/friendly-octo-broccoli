if(state_new)
{
	image_speed = defaultImageSpeed;
	sprite_index = spr_playerJump;
	image_index = 0;
	velocity[XAXIS] += wallJumpXSpeed * -face_direction;
	velocity[YAXIS] -= wallJumpYSpeed;
}

if(velocity[XAXIS] != 0)
{	face_direction = sign(velocity[XAXIS]);}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, jumpAccel, jumpMaxSpeed, jumpFriction);

if(animation_end())
{	image_index = image_number - 1;}

#region state machine

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
}

#endregion