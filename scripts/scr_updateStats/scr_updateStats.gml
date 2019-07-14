if(currentStamina != maxStamina)
{
	currentStamina ++;
}

if(state = "run")
{
	currentStamina -= runStaminaCost
}

currentStamina = clamp(currentStamina,0,maxStamina);