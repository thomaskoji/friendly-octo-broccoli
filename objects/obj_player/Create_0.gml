#region State Machine

stateMachineCreate();

stateAdd("wait", player_state_wait);
stateAdd("run", player_state_run);
stateAdd("brake", player_state_brake);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("fall", player_state_fall);
stateAdd("slide", player_state_slide);
stateAdd("crouch", player_state_crouch);
stateAdd("attackA", player_state_attackA);
stateAdd("attackB", player_state_attackB);
stateAdd("attackC", player_state_attackC);
stateAdd("attackD", player_state_attackD);
stateAdd("attackHeavyA", player_state_attackA);
stateAdd("attackHeavyB", player_state_attackB);
stateAdd("attackHeavyC", player_state_attackC);
stateAdd("attackHeavyD", player_state_attackD);
stateAdd("attackGroundUp", player_state_attackGroundUp);
stateAdd("attackGroundDown", player_state_attackGroundDown);
stateAdd("attackAirUp", player_state_attackAirUp);
stateAdd("attackAirDown", player_state_attackAirDown);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

runMaxSpeed			= 2;
runFriction			= .15;
runAccel			= .1;

jump_power			= 4;
gravity_inc			= .2;
gravity_max			= 5;

face_direction		=1; //1 right, -1 left.

touchingGround		= false;

#endregion