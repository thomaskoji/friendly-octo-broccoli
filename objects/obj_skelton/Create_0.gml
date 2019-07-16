#region State Machine

stateMachineCreate();

stateAdd("wait", skelton_state_wait);
stateAdd("chase", skelton_state_chase);
stateAdd("attack", skelton_state_attack);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

runMaxSpeed			= 1;
runFriction			= 0.2;
runAccel			= 0.1;

#endregion