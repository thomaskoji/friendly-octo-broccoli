if(state_new)
{
	state_var[0] = sign(velocity[XAXIS]); //Starting direction when entering the slide
}
if(dpad_dir==no_direction)
	move_player(0,true,1);	
else
	move_player(.45,false,1);

var _changed_direction = (velocity[XAXIS] >= 0 && state_var[0] == -1) || (velocity[XAXIS] <= 0 && state_var[0] == 1);
var _slide_cancelled = (dpad_dir == east && state_var[0] == 1) || (dpad_dir == west && state_var[0]==-1);
if(_changed_direction || _slide_cancelled)
{
	stateSwitch("run");
}

if(jump[pressed])
{
	stateSwitch("backflip");
}

if(against_wall[1]==0)
{	//slid off a ledge
	stateSwitch("fall");
}
//DRAW---------------------------------------
	
face_direction = state_var[0];
		
//Changing Directions
sprite_index=spr_playerSlide;
image_index=2;
image_speed=0;