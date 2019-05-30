//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	if(face_direction == no_direction)
	{truestate_switch(States.wait);}
	
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	switch(round(face_direction/45)*45)
	{
		case north_east:
		case south_east:
		case east: image_xscale=-1; 
				   sprite_index=spr_playerRunWest; break;
		case north_west:
		case south_west:
		case west: sprite_index=spr_playerRunWest; break;
		
		case north: sprite_index=spr_playerRunNorth; break;
		case south: sprite_index=spr_playerRunSouth; break;
	}
}