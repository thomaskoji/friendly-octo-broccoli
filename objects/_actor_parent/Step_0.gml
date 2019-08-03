if (place_meeting(x, y + 1, _solid_parent) or place_meeting(x, y + velocity[YAXIS], obj_oneWayPlatform))
{onGround = true;}
else
{onGround = false;}

stateExecute();
scr_objectUpdateLocation();
scr_walkDownSlopes();