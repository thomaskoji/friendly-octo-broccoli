if(state_new)
{
	if(state_previous != "backflip")
	{
		sprite_index = spr_playerFall;
		image_index = 0;
	}
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

if(g.inputHorizontalTotal != 0 && !g.slide[pressed] && velocity[YAXIS] == 0)
{
	stateSwitch("run");
}

if(g.up[held] and g.attack[pressed])
{
	stateSwitch("attackGroundUp");
}

if(g.down[held] and g.attack[pressed])
{
	stateSwitch("attackGroundDown");
}

if(g.left[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundLeft");
}

if(g.right[held] and g.attack[pressed]and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundRight");
}

#endregion