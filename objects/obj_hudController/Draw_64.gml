draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour($e4924f);
draw_set_font(fnt_debug);

#region direction conversion to string thing
var _dir = "no direction";
switch global.inputDirection
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

var _debugString = "";
_debugString += "FPS " + string(fps) + "\n";
_debugString += "State " + string(obj_player.state) + "\n";
_debugString += "X " + string(x) + "\n";
_debugString += "Y " + string(y) + "\n";
_debugString += "Xvel " + string(obj_player.velocity[XAXIS]) + "\n";
_debugString += "Yvel " + string(obj_player.velocity[YAXIS]) + "\n";
_debugString += _dir + "\n";

draw_text(5,5, _debugString);