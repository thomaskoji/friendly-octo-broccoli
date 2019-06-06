if(state_new)
{
	sprite_index = spr_playerRun

	if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}
}

//STEP---------------------------------------ddd
var _spd_for_slide=1.75;
if((velocity[XAXIS] < -_spd_for_slide && global.inputHorizontalTotal == 1) || 
	 (velocity[XAXIS] > _spd_for_slide && global.inputHorizontalTotal == -1))
{
	stateSwitch("slide");
}
/*
if(jump[pressed])
{
	stateSwitch("jump");
}
*/
if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
	state_var[0] = true;
	exit;
}