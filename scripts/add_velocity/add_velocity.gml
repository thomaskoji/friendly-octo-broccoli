velocity[XAXIS] += (right[held]-left[held])*(move_accel);
velocity[XAXIS] = clamp(velocity[XAXIS],-move_max_speed,move_max_speed);

//Horizontal Collisions
if (place_meeting(x+velocity[XAXIS],y,_solid_parent)){
    //Up slope
    var yplus=0;
    while(place_meeting(x+velocity[XAXIS],y-yplus,_solid_parent)&&yplus<=abs(velocity[XAXIS])) yplus+=1; //change the abs(velocity[XAXIS]) to 3*abs(velocity[XAXIS]) if you want to be able to go up a 3-1 slope, etc..
    if(place_meeting(x+velocity[XAXIS],y-yplus,_solid_parent)){
        while(!place_meeting(x+sign(velocity[XAXIS]),y,_solid_parent)) x += sign(velocity[XAXIS]);
        velocity[XAXIS]=0;
    }else{
        y-=yplus;
    }
}
x += velocity[XAXIS];

//Down slope
if !place_meeting(x,y,_solid_parent) && velocity[YAXIS] >= 0 && place_meeting(x,y+2+abs(velocity[XAXIS]),_solid_parent){
    while(!place_meeting(x,y+1,_solid_parent)) y += 1;
}

//Vertical Collisions
if (place_meeting(x,y+velocity[YAXIS],_solid_parent)){
    while(!place_meeting(x,y+sign(velocity[YAXIS]),_solid_parent)) y += sign(velocity[YAXIS]);
    velocity[YAXIS]=0;
}
y+=velocity[YAXIS];


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