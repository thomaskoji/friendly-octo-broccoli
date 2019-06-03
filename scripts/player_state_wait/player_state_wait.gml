sprite_index = spr_playerWait;

if(dpad_dir == east or dpad_dir == west)
{
	stateSwitch("run");
}
if(keyboard_check_pressed(vk_space))
{
	stateSwitch("jump");
}

move_player(0,true,1);