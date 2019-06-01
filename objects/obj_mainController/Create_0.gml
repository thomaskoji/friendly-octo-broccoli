// Inherit the parent event
event_inherited();

// Instantiate controll object
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
instance_create_depth(0,0,0, obj_gameController);
instance_create_depth(0,0,0, obj_hudController);


room_goto(rm_gameRoom);