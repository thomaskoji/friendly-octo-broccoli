// Inherit the parent event
event_inherited();

// Instantiate controll object
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
instance_create_depth(0,0,0, obj_hudController);
instance_create_depth(0,0,0, obj_cameraController);
room_goto(rm_gameRoom);

screenShot = -1;
pause = false;