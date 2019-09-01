if (live_call()) return live_result;
// PHYSICS VALUES 
waitFriction		= .5;

runMaxSpeed			= 4;
runFriction			= .3;
runAccel			= .3;

slideFriction		= .05;
slideBoost			= 2;

jumpPower			= 3.5;
jumpMaxSpeed		= runMaxSpeed;
jumpFriction		= .1;
jumpAccel			= .2;
jumped				= false;

backflipJumpPower	= 4;
backflipMaxSpeed	= 3;
backflipAccel		= .1;
backflipGravity		= .1;

wallJumpXForce		= 2.5;
wallJumpYForce		= 3;
wallJumpMaxSpeed	= 4;
wallJumpAccel		= .05;
wallJumpFriction	= .03;
wallJumpGravity		= .125;

fallGravity			= .15;
fallMaxGravity		= 5;

wallRunGravity		= .25;
wallRunBoost		= 1;

wallLatchGravity	= .1;
wallLatchMaxGravity	= 3.5;
wallLatchStickTime	= 15; // How long you still to wall