//STEP---------------------------------------
if(argument0==step)
{
	if(dpad_dir == east or dpad_dir == west)
	{
		stateSwitch(States.run);
	}
	if(jump[pressed])
	{
		stateSwitch(States.jump);
	}
	if(attack[pressed])
	{
		stateSwitch(States.attack);
	}
}