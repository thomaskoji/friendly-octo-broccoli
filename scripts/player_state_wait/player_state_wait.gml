if(state_new)
{
	image_speed = defaultImageSpeed;
	sprite_index = spr_playerWait;
	image_index = 0;
}

scr_applyXFriction(waitFriction);

#region state machine

if(g.inputHorizontalTotal != 0)
{	stateSwitch("run");}

if(!onGround)
{	stateSwitch("fall");}

if(g.jump[pressed])
{	stateSwitch("jump");}

if(g.attack[pressed])
{	stateSwitch("attackA")}

if(g.up[held] and g.attack[pressed])
{	stateSwitch("attackGroundUp");}

if(g.down[held] and g.attack[pressed])
{	stateSwitch("attackGroundDown");}

#endregion