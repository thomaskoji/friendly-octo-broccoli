#region State Machine

truestate_system_init();

truestate_create_state(States.wait,player_state_wait,"wait");
truestate_create_state(States.run,player_state_run,"run");
truestate_create_state(States.jump,player_state_jump,"run");

truestate_set_default(States.wait);

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

move_max_speed		= 3;
move_friction		= .1;
move_accel			= move_friction * 2;

jump_power = 3.3;
gravity_inc = .1;
gravity_max = 10;
grace_frames=0;
max_grace_frames=8;

#endregion

#region Controls

up = [0,0,0];
down = [0,0,0];
left = [0,0,0];
right = [0,0,0];
dpad_dir = no_direction;
attack = [0,0,0];
run= [0,0,0];
jump= [0,0,0];

#endregion