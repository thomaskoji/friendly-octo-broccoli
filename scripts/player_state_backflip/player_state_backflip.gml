if(state_new and !jumped)
{
	image_speed = 0.5;
	sprite_index = spr_playerBackflip;
	image_index = 0;
	velocity[YAXIS] -= jump_power;
	jumped = true;
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