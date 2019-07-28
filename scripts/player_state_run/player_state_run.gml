if(state_new)
{
	image_speed = runImageSpeed;
	sprite_index = spr_playerRun;
	image_index = 0;
}

if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}

scr_applyXMovement(g.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine


var _spdForSlide = .01;
if((velocity[XAXIS] < -_spdForSlide && global.inputDirection == east) || 
	 (velocity[XAXIS] > _spdForSlide && global.inputDirection == west))
{ 
	stateSwitch("brake");
}

if(g.slide[pressed])
{
	stateSwitch("slide");
}

if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(g.jump[pressed])
{
	stateSwitch("jump");
}

if(g.attack[pressed] and currentStamina > attackStaminaCost)
{
	stateSwitch("attackA")
}

if(g.up[held] and g.attack[pressed])
{
	stateSwitch("attackGroundUp");
}

if(g.down[held] and g.attack[pressed])
{
	stateSwitch("attackGroundDown");
}

if(g.left[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundLeft");
}

if(g.right[held] and g.attack[pressed] and currentStamina > attackSideStaminaCost)
{
	stateSwitch("attackGroundRight");
}

#endregion