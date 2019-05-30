#region State Machine

truestate_system_init();

truestate_create_state(States.wait,player_state_wait,"wait");
truestate_create_state(States.run,player_state_run,"run");

truestate_set_default(States.wait);
#endregion

face_direction = no_direction;

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;

run= [0,0,0];
dodge = [0,0,0];