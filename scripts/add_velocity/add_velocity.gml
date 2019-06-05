// my version of move_player 

velocity[XAXIS] += (right[held]-left[held])*(move_accel);
velocity[XAXIS] = clamp(velocity[XAXIS],-move_max_speed,move_max_speed);
/*a
// Vertical
repeat(abs(velocity[YAXIS])) {
    if (!place_meeting(x, y + sign(velocity[YAXIS]), _solid_parent))
        x+=velocity[XAXIS];
    else {
        velocity[YAXIS] = 0;
        break;
    }
}
// Horizontal
repeat(abs(velocity[XAXIS])) {

    // Move up slope
    if (place_meeting(x + sign(velocity[XAXIS]), y, _solid_parent) && !place_meeting(x + sign(velocity[XAXIS]), y - 2, _solid_parent))
        --y;
    
    // Move down slope
    if (!place_meeting(x + sign(velocity[XAXIS]), y, _solid_parent) && !place_meeting(x + sign(velocity[XAXIS]), y + 2, _solid_parent) && place_meeting(x + sign(velocity[XAXIS]), y + 2, _solid_parent))
        ++y; 

    if (!place_meeting(x + sign(velocity[XAXIS]), y, _solid_parent))
        y+=velocity[YAXIS];
    else {
        velocity[XAXIS] = 0;
        break;
    }
}


/*
//Horizonal
if(place_meeting(round(x)+ceil_signed(velocity[XAXIS]),round(y),_solid_parent))
{
	round_position();
	if(!place_meeting(x+sign(velocity[XAXIS]),y,_solid_parent))
			x += sign(velocity[XAXIS]);
		else
			velocity[XAXIS]=0;
}
else
{x+=velocity[XAXIS];}
	
//Vertical
velocity[YAXIS]=min(velocity[YAXIS]+gravity_inc,gravity_max);
if(place_meeting(round(x),round(y)+ceil_signed(velocity[YAXIS]),_solid_parent))
{
	round_position();
	if(!place_meeting(x,y+sign(velocity[YAXIS]),_solid_parent))
			y+=sign(velocity[YAXIS]);
		else
			velocity[YAXIS]=0;
}
else
{y+=velocity[YAXIS];}