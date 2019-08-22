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
stateAdd("wallRun", player_state_wallRun);
stateAdd("push", player_state_push);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

waitFriction		= .5;

runMaxSpeed			= 4;
runFriction			= .3;
runAccel			= .5;

slideFriction		= .05;
slideBoost			= 2;

attackFriction		= .2;

jumpPower			= 5;
jumpMaxSpeed		= 7;
jumpFriction		= .1;
jumpAccel			= .1;
jumped				= false;

fallGravity			= .3;
fallMaxGravity		= 5;

wallJumpXSpeed		= 4;
wallJumpYSpeed		= 5;

wallRunGravity		= .25;
wallRunBoost		= 1;

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

wallJumpRestrictionTimer = .5 * room_speed;
coyoteTime = 5;
onGroundTimer = coyoteTime;