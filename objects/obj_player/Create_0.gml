#region State Machine

stateMachineCreate();

stateAdd("wait", player_state_wait);
stateAdd("run", player_state_run);
stateAdd("brake", player_state_brake);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("fall", player_state_fall);
stateAdd("slide", player_state_slide);
stateAdd("attackA", player_state_attackA);
stateAdd("attackB", player_state_attackB);
stateAdd("attackC", player_state_attackC);
stateAdd("attackGroundUp", player_state_attackGroundUp);
stateAdd("attackGroundDown", player_state_attackGroundDown);
stateAdd("attackGroundLeft", player_state_attackGroundLeft);
stateAdd("attackGroundRight", player_state_attackGroundRight);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

waitFriction		= .5;

runMaxSpeed			= 3;
runFriction			= 0.2;
runAccel			= 0.15;

slideFriction		= 0.05;
slideBoost			= 1;

attackFriction		= 0.2;
attackGroundUpFriction = .1;

jump_power			= 5;
fallGravity			= 0.3;
fallMaxGravity		= 10;
jumped				= false;
onGround			= false;

face_direction		=1; //1 right, -1 left

#endregion

#region Image Properties

waitImageSpeed		= 0.2;
runImageSpeed		= 0.2;
jumpImageSpeed		= 0.2;
attackImageSpeed	= 0.2;

#endregion

#region Attack Properties


attackTimer		= 0;
willAttack		= false;

attackStaminaCost	= 20;
attackSideStaminaCost = 50;

attackGroundUpVelocity = 20;
attackGroundUpGravity = 3;
attackGroundUpMaxGravity = 1;

attackGroundSideVelocity = 8;

#endregion

#region Stats

maxHp = 200;
currentHp = maxHp;

maxStamina		= 100;
currentStamina	= 100;
staminaCooldown	= 50;
staminaTimer	= 0;

#endregion