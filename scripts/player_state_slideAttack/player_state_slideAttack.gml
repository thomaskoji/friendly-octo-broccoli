if(state_new)
{
	sprite_index = spr_playerSlideAttack;
}

scr_applyXFriction(slideFriction);

#region state machine

if(!global.inputControlHeld || velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
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