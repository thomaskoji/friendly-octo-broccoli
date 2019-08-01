#region State Machine

stateMachineCreate();

stateAdd("wait", skelton_state_wait);
stateAdd("chase", skelton_state_chase);
stateAdd("attack", skelton_state_attack);
stateAdd("fall", skelton_state_fall);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

runMaxSpeed			= 1;
runFriction			= 0.2;
runAccel			= 0.1;

fallFriction		= 0.1;
fallGravity			= 0.1;
fallMaxGravity		= 3;

attackFriction		= 0.1;

#endregion

#region Behaviorial Properties

chaseDistance		= 150;
attackDistance		= 30;

#endregion

maxHp = 200;
currentHp = maxHp;
damage = 0;

face_direction		=1; //1 right, -1 left