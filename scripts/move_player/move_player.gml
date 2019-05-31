/// @description ap_move_player
/// @param {real} Control_Effectivness >=0
/// @param {real} Friction_Effectivness >=0
/// @param {real} Gravity_Effectivness >=0
/// returns array representing the vector of detected collisions
against_wall = [0,0];
//Horizontal
velocity[XAXIS] += (right[held]-left[held])*(move_accel*argument0);

velocity[XAXIS]=clamp(velocity[XAXIS],-move_max_speed,move_max_speed);
if(place_meeting(round(x)+ceil_signed(velocity[XAXIS]),round(y),_solid_parent))
{
	round_position();
	while(!place_meeting(x+sign(velocity[XAXIS]),y,_solid_parent))
		x+=sign(velocity[XAXIS]);
	against_wall[0]=sign(velocity[XAXIS]);
	velocity[XAXIS]=0;
}

x+=velocity[XAXIS];
velocity[XAXIS]=approach(velocity[XAXIS],0,move_friction*argument1);
	
//vertical
velocity[YAXIS]=min(velocity[YAXIS]+gravity_inc*argument2,gravity_max);
if(place_meeting(round(x),round(y)+ceil_signed(velocity[YAXIS]),_solid_parent))
{
	round_position();
	while(!place_meeting(x,y+sign(velocity[YAXIS]),_solid_parent))
		y+=sign(velocity[YAXIS]);	
	against_wall[1]=sign(velocity[YAXIS]);
	velocity[YAXIS]=0;
	grace_frames=max_grace_frames;
}
else
	grace_frames -= grace_frames > 0;
y+=velocity[YAXIS];

wall_escape(_solid_parent);