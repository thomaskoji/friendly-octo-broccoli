#region State Machine

truestate_system_init();

truestate_create_state(States.wait,player_state_wait,"wait");
truestate_create_state(States.run,player_state_run,"run");

truestate_set_default(States.wait);
#endregion

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;