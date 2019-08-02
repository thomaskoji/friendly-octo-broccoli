if(instance_exists(_actor_parent))
{
	if(round(_actor_parent.y > y) or g.down[pressed])
	{
		mask_index = -1;
	}
	else
	{
		mask_index = spr_oneWayPlatform;
	}
}