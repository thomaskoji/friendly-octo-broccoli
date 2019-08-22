if(onWall == face_direction and onWall == g.inputHorizontalTotal)
{
	var _sideCheck = NULLVALUE;
	if(onWall == 1){_sideCheck = bbox_right + 1;}
	else if(onWall == -1){_sideCheck = bbox_left - 1;}
	
	if(!position_meeting(_sideCheck, bbox_top - 1, _solid_parent))
	{
		stateSwitch("ledgeGrab");
	}
}