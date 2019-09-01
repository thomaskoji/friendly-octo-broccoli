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
stateAdd("ledgeGrab", player_state_ledgeGrab);
stateAdd("push", player_state_push);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

scr_playerDefinePhysicsValues(); 


#endregion

#region Image Properties

defaultImageSpeed	= .2;

#endregion

coyoteTime = 5;
onGroundTimer = coyoteTime;