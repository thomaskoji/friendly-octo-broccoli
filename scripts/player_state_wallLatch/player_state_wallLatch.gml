if(state_new)
{
	image_speed = defaultImageSpeed;
	sprite_index = spr_playerWallLatch;
	image_index = 0;
}

scr_applyGravity(fallGravity,wallLatchMaxGravity);

#region state machine

if(onWall != g.inputHorizontalTotal)
{	stateSwitch("fall");}

if(g.jump[pressed])
{	stateSwitch("wallJump");}

if(onGround)
{	stateSwitch("wait");}


#endregion