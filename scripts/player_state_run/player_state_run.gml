if(state_new)
{
	sprite_index = spr_playerRun
}

if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}

var _spdForSlide = .1;
if((velocity[XAXIS] < -_spdForSlide && global.inputDirection == east) || 
	 (velocity[XAXIS] > _spdForSlide && global.inputDirection == west))
{ 
	stateSwitch("brake");
}

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
}