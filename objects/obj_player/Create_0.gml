#region State Machine

stateMachineCreate();
stateAdd("wait", player_state_wait);
stateAdd("jump", player_state_jump);
stateAdd("run", player_state_run);
stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

move_max_speed		= 3;
move_friction		= .1;
move_accel			= move_friction * 2;

jump_power			= 3.5;
gravity_inc			= .2;
gravity_max			= 10;
grace_frames		= 0;
max_grace_frames	=8;

face_direction		=1; //1 right, -1 left.

#endregion

#region Controls

up			= [0,0,0];
down		= [0,0,0];
left		= [0,0,0];
right		= [0,0,0];
dpad_dir	= no_direction;
attack		= [0,0,0];
jump		= [0,0,0];

#endregion

currentSprite = spr_playerWait;