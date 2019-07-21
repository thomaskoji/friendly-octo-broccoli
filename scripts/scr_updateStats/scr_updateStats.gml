if(currentStamina != maxStamina and staminaTimer > staminaCooldown)
{
	currentStamina ++;
}

staminaTimer ++;
currentStamina = clamp(currentStamina,0,maxStamina);