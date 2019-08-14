event_inherited();

#region State Machine

stateMachineCreate();

stateAdd("wait", player_state_wait);
stateAdd("run", player_state_run);
stateAdd("brake", player_state_brake);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("fall", player_state_fall);
stateAdd("slide", player_state_slide);
stateAdd("wallLatch", player_state_wallLatch);
stateAdd("wallJump", player_state_wallJump);
stateAdd("push", player_state_push);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

waitFriction		= .5;

runMaxSpeed			= 5;
runFriction			= .25;
runAccel			= .2;

slideFriction		= .05;
slideBoost			= 2;

attackFriction		= .2;

jumpPower			= 5;
jumpMaxSpeed		= 7;
jumpFriction		= .1;
jumpAccel			= .1;
jumped				= false;

wallJumpXSpeed		= 4;
wallJumpYSpeed		= 6;

fallGravity			= .3;
fallMaxGravity		= 5;

wallLatchMaxGravity	= 1;

#endregion

#region Image Properties

defaultImageSpeed	= .2;

#endregion

#region Stats

maxHp = 200;
currentHp = maxHp;

maxStamina		= 100;
currentStamina	= 100;
staminaCooldown	= 50;
staminaTimer	= 0;

#endregion

wallJumpRestrictionTimer = 1 * room_speed;