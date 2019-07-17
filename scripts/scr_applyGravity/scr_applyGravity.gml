/// @discription apply gravity
/// @param gravity,maxGravity

var _gravity		= argument[0];
var _maxGravity		= argument[1];

if (!onGround)
{
	velocity[YAXIS] += _gravity;
	
	if (velocity[YAXIS] >= _maxGravity)
	{velocity[YAXIS] = _maxGravity}
}