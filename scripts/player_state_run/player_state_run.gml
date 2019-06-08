if(state_new)
{
	sprite_index = spr_playerRun

	if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}
}

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

var _spd_for_slide = 1.75;
if((velocity[XAXIS] < -_spd_for_slide && global.inputDirection == east) || 
	 (velocity[XAXIS] > _spd_for_slide && global.inputDirection == west))
{ 
	stateSwitch("slide");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
}