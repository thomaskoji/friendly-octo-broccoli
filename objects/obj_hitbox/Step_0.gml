var _hitNow = ds_list_create();
var _hits = instance_place_list(x,y,_actor_parent,_hitNow,false);

if(_hits > 0)
{
	for(var i = 0; i < _hits; i++)
	{
		var _hitID = _hitNow[| i];
		if(ds_list_find_index(hitObjects,_hitID) == -1)
		{
			ds_list_add(hitObjects,_hitID);
			with(_hitID)
			{
				currentHp -= other.damage;
			}
		}
	}
}

ds_list_destroy(_hitNow);