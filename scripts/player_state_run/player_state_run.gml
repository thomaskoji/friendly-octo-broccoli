if(state_new)
{
	image_speed = runImageSpeed;
	sprite_index = spr_playerRun;
	image_index = 0;
}

if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine


var _spdForSlide = .01;
if((velocity[XAXIS] < -_spdForSlide && global.inputDirection == east) || 
	 (velocity[XAXIS] > _spdForSlide && global.inputDirection == west))
{ 
	stateSwitch("brake");
}

if(global.inputControlPressed)
{
	stateSwitch("slide");
}
if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(global.inputMouseLeftPressed and currentStamina > attackStaminaCost)
{
	stateSwitch("attackA")
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