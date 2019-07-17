if(state = "run" or state = "slide" or state = "brake") or //player states
(state = "chase") // monster states
{
	if (onGround 
	and !place_meeting(x, y + 1, _solid_parent)
	and place_meeting(x,y + 5, _solid_parent))
	{
		while (!place_meeting(x, y + 1, _solid_parent))
		{
			y += 1;
		}
	}
}