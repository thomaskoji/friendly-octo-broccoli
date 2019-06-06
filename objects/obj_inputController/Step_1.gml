/// @description UPDATE CONTROLS

global.inputUpPressed		= keyboard_check_pressed(upKey);
global.inputUpHeld			= keyboard_check(upKey);
global.inputUpReleased		= keyboard_check_released(upKey);

global.inputDownPressed		= keyboard_check_pressed(downKey);
global.inputDownHeld		= keyboard_check(downKey);
global.inputDownReleased	= keyboard_check_released(downKey);

global.inputLeftPressed		= keyboard_check_pressed(leftKey);
global.inputLeftHeld		= keyboard_check(leftKey);
global.inputLeftReleased	= keyboard_check_released(leftKey);

global.inputRightPressed	= keyboard_check_pressed(rightKey);
global.inputRightHeld		= keyboard_check(rightKey);
global.inputRightReleased	= keyboard_check_released(rightKey);

global.inputHorizontalTotal = global.inputRightHeld - global.inputLeftHeld;