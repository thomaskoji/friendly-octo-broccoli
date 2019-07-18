#region State Machine

stateMachineCreate();

stateAdd("wait", player_state_wait);
stateAdd("run", player_state_run);
stateAdd("brake", player_state_brake);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("fall", player_state_fall);
stateAdd("slide", player_state_slide);
stateAdd("slideAttack", player_state_slideAttack);
stateAdd("crouch", player_state_crouch);
stateAdd("crouchWalk", player_state_crouchWalk);
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

runMaxSpeed			= 3;
runFriction			= 0.2;
runAccel			= 0.15;

crouchMaxSpeed		= 0.5;
crouchFriction		= 0.02;
crouchAccel			= 0.02;

slideFriction		= 0.1;

jump_power			= 5;
fallGravity			= 0.3;
fallMaxGravity		= 10;
jumped				= false;
onGround			= false;

face_direction		=1; //1 right, -1 left.p

#endregion

#region Image Properties

waitImageSpeed		= 0.2;
runImageSpeed		= 0.2;
attackImageSpeed	= 0.2;

#endregion

#region Other Properties

maxHp			= 100;
currentHp		= 100;
maxStamina		= 100;
currentStamina	= 100;

runStaminaCost	= 2;

#endregion

attackTimer = 0;