if(state_new)
{
	sprite_index = spr_playerSlide;
	image_index = 0;
}

scr_applyXFriction(slideFriction);

#region state machine

if(velocity[XAXIS] == 0)
{
	stateSwitch("wait");
}

if(velocity[XAXIS] == 0 && global.inputHorizontalTotal != 0)
{
	stateSwitch("run");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}


#endregion