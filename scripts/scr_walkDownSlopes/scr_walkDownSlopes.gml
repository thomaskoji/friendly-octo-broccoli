if(state = "run" or state = "slide" or state = "brake") or //player states
(state = "chase") // monster states
{
	if (onGround 
	and !place_meeting(x, y + 1, _solid_parent)
	and place_meeting(x,y + 5, _solid_parent))
	{
		var _reps = 0; 
		while (!place_meeting(x, y + 1, _solid_parent))
		{
			y += 1;
			++_reps; 
			if (_reps >= 999)
			{scr_showErrorMessage("While Loop Fail: Walk Down Slopes");}
		}
	}
}