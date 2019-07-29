if(state_new)
{
	image_speed = waitImageSpeed;
	sprite_index = spr_playerWait;
	image_index = 0;
}

scr_applyXFriction(waitFriction);

#region state machine

if(g.inputHorizontalTotal != 0)
{
	stateSwitch("run");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(g.jump[pressed])
{
	stateSwitch("jump");
}

if(g.attack[pressed] and currentStamina > attackStaminaCost)
{
	stateSwitch("attackA")
}

if(g.up[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundUp");
}

if(g.down[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundDown");
}

#endregion