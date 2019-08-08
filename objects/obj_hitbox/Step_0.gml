var _instancesTouchingList = ds_list_create();
var _numberOfHits = instance_place_list(x,y,_actor_parent,_instancesTouchingList,false);

if(_numberOfHits > 0)
{
	for(var i = 0; i < _numberOfHits; i++)
	{
		var _hitInstance = _instancesTouchingList[| i];
		
		ds_list_find_value(_instancesTouchingList,i);
		
		if(_hitInstance != creator and ds_list_find_index(collisionList, _hitInstance) == -1) //any other testing that we want to do to determine whether this object is a valid hit goes here.
		{
			ds_list_add(collisionList, _hitInstance);
			_hitInstance.currentHp -= damage;
		}
	}
}

ds_list_destroy(_instancesTouchingList);