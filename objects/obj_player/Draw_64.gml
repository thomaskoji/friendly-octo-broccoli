draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour($e4924f);
draw_set_font(fnt_debug);

#region direction conversion to string thing
var _dir = "no direction";
switch dpad_dir
{
	case -1:
		_dir = "no direction";
	break;
	
	case 0:
		_dir = "east";
	break;
	
	case 45:
		_dir = "north east";
	break;
	
	case 90:
		_dir = "north";
	break;
	
	case 135:
		_dir = "north west";
	break;
	
	case 180:
		_dir = "west";
	break;
	
	case 225:
		_dir = "south west";
	break;
		
	case 270:
		_dir = "south";
	break;
	
	case 315:
		_dir = "south east";
	break;
}
#endregion
draw_text(x - 15, y-15, _dir);
draw_text(x - 15, y-25, "state " + string(state));
draw_text(x - 15, y-35, "jump " + string(jump[0]) + string(jump[1]) + string(jump[2]));
draw_text(x - 15, y-45, "dodge " + string(dodge[0]) + string(dodge[1]) + string(dodge[2]));
draw_text(x - 15, y-55, "x " + string(velocity[XAXIS]));
draw_text(x - 15, y-65, "y " + string(velocity[YAXIS]));