if(state_new)
{
	if(state_previous != "jump" and state_previous != "backflip")
	{
		sprite_index = spr_playerFall;
		image_index = 0;
	}
}

scr_applyGravity(fallGravity,fallMaxGravity);

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed && velocity[YAXIS] == 0)
{
	stateSwitch("run");
}

if(global.inputUpHeld and global.inputMouseLeftPressed)
{
	stateSwitch("attackGroundUp");
}

if(global.inputDownHeld and global.inputMouseLeftPressed)
{
	stateSwitch("attackGroundDown");
}

if(global.inputLeftHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundLeft");
}

if(global.inputRightHeld and global.inputMouseLeftPressed and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundRight");
}

#endregion