if(state_new)
{
	sprite_index = spr_playerSlide;
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

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(global.inputMouseLeftPressed || global.inputMouseRightPressed)
{
	stateSwitch("slideAttack");
}

#endregion