if(state_new)
{
	state_var[0] = sign(velocity[XAXIS]); //Starting direction when entering the slide
	sprite_index = spr_playerSlide;
	face_direction = state_var[0];
}

var _changed_direction = (velocity[XAXIS] >= 0 && state_var[0] == -1) || (velocity[XAXIS] <= 0 && state_var[0] == 1);
var _slide_cancelled = (global.inputHorizontalTotal == 1 && state_var[0] == 1) || (global.inputHorizontalTotal == -1 && state_var[0]==-1);
if(_changed_direction || _slide_cancelled)
{
	stateSwitch("run");
}

if(global.inputSpacePressed)
{
	stateSwitch("backflip");
}