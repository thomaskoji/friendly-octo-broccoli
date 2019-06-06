if ( state_new )
{
	sprite_index = spr_playerWait;
}

scr_applyXFriction(runFriction);

if(global.inputHorizontalTotal != 0)
{
	stateSwitch("run");
}
if(keyboard_check_pressed(vk_space))
{
	stateSwitch("jump");
}