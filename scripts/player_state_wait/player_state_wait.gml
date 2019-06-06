sprite_index = spr_playerWait;

if(global.inputHorizontalTotal != 0)
{
	stateSwitch("run");
}
if(keyboard_check_pressed(vk_space))
{
	stateSwitch("jump");
}