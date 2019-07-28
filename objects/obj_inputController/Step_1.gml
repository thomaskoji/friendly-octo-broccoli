/// @description UPDATE CONTROLS

g.up[pressed] = keyboard_check_pressed(upKey);
g.up[released] = keyboard_check_released(upKey);
g.up[held] = keyboard_check(upKey);

g.down[pressed] = keyboard_check_pressed(downKey);
g.down[released] = keyboard_check_released(downKey);
g.down[held] = keyboard_check(downKey);

g.left[pressed] = keyboard_check_pressed(leftKey);
g.left[released] = keyboard_check_released(leftKey);
g.left[held] = keyboard_check(leftKey);

g.right[pressed] = keyboard_check_pressed(rightKey);
g.right[released] = keyboard_check_released(rightKey);
g.right[held] = keyboard_check(rightKey);

jump[pressed] = keyboard_check_pressed(jumpKey);
jump[released] = keyboard_check_released(jumpKey);
if(keyboard_check(jumpKey))
	jump[held]++;
else
	jump[held]=0;
	
interact[pressed] = keyboard_check_pressed(interactKey);
interact[released] = keyboard_check_released(interactKey);
if(keyboard_check(interactKey))
	interact[held]++;
else
	interact[held]=0;
	
attack[pressed] = keyboard_check_pressed(attackKey);
attack[released] = keyboard_check_released(attackKey);
if(keyboard_check(attackKey))
	attack[held]++;
else
	attack[held]=0;
	
altAttack[pressed] = keyboard_check_pressed(altAttackKey);
altAttack[released] = keyboard_check_released(altAttackKey);
if(keyboard_check(altAttackKey))
	altAttack[held]++;
else
	altAttack[held]=0;
	
slide[pressed] = keyboard_check_pressed(slideKey);
slide[released] = keyboard_check_released(slideKey);
if(keyboard_check(slideKey))
	slide[held]++;
else
	slide[held]=0;


//--------------------- input direction code ------------------------//
g.inputHorizontalTotal = g.right[held] - g.left[held];
g.inputVerticalTotal	= g.up[held] - g.down[held];

if(point_distance(0,0,g.inputHorizontalTotal,g.inputVerticalTotal) > 0)
	g.inputDirection = point_direction(0,0,g.inputHorizontalTotal,g.inputVerticalTotal);
else
	g.inputDirection = no_direction;