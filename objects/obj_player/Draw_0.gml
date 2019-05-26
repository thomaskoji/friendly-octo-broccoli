draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var _stateName = "";

switch state
{
	case playerStates.wait:
		_stateName = "Wait";
		break;
	
	case playerStates.jump:
		_stateName = "Jump";
		break;
	
}

draw_text(x - 20,y + 15, _stateName);

var _debugText = "";
_debugText = "XVel: " + string(velocity[XAXIS]);
_debugText = "YVel: " + string(velocity[YAXIS]);
draw_text(x - 20,y + 30, _debugText);