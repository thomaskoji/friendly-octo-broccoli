//STEP---------------------------------------ddd
var _spd_for_slide=1.75;
if((velocity[XAXIS] < -_spd_for_slide && dpad_dir==east) || 
	 (velocity[XAXIS] > _spd_for_slide && dpad_dir==west))
{
	stateSwitch("slide");
}

move_player(1,true,1);

if(jump[pressed])
{
	stateSwitch("jump");
}

if(velocity[XAXIS] == 0 && dpad_dir == no_direction)
{
	stateSwitch("wait");
	state_var[0] = true;
	exit;
}

//DRAW---------------------------------------
sprite_index = spr_playerRun

if(velocity[XAXIS] != 0)
	face_direction = sign(velocity[XAXIS]);
/*
if(against_wall[0] != 0 || state_var[0])
{
	image_speed = 1;
	sprite_index = spr_playerPush;	
}