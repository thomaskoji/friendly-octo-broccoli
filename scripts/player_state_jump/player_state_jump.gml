if(state_new and !jumped)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerJump;
	image_index = 0;
	image_speed = jumpImageSpeed;
	jumped = true;
	state_var[0] = false; // player has let go of jump
}

if (state_var[0] = false and g.jump[held] == false)
{
	velocity[YAXIS] *= 0.8;
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}

if(g.up[held] and g.attack[pressed])
{
	stateSwitch("attackGroundUp");
	jumped = false;
}

if(g.down[held] and g.attack[pressed])
{
	stateSwitch("attackGroundDown");
	jumped = false;
}

if(g.left[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundLeft");
	jumped = false;
}

if(g.right[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundRight");
	jumped = false;
}