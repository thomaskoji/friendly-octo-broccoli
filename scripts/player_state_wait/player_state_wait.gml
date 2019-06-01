if(dpad_dir == east or dpad_dir == west)
{
	stateSwitch("run");
}
if(keyboard_check_pressed(vk_space))
{
	stateSwitch("jump");
}
if(attack[pressed])
{
	stateSwitch("attack");
}