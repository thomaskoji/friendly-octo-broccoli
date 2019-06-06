#region State Machine

stateMachineCreate();
stateAdd("wait", player_state_wait);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("run", player_state_run);
stateAdd("slide", player_state_slide);
stateAdd("fall", player_state_fall);
stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

runMaxSpeed			= 2;
runFriction			= .1;
runAccel			= .2;

jump_power			= 5;
gravity_inc			= .1;
gravity_max			= 5;

face_direction		=1; //1 right, -1 left.

touchingGround		= false;

#endregion