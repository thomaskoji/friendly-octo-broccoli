if(state_new and !jumped)
{
	velocity[YAXIS] -= jumpPower;
	sprite_index = spr_playerJump;
	image_index = 0;
	image_speed = defaultImageSpeed;
	jumped = true;
	state_var[0] = false; // player has let go of jump
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, jumpAccel, jumpMaxSpeed, jumpFriction);

if(animation_end())
{	image_index = image_number - 1;}

// when player releases jump
if (state_var[0] = false and g.jump[held] == false)
{	velocity[YAXIS] *= 0.9;}


#region state machine

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}

if(g.jump[pressed] and onWall != 0)
{	stateSwitch("wallJump");}

#endregion