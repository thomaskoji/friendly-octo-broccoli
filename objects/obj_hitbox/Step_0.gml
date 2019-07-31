var _inst;
_inst = instance_place(x, y, par_enemy);
if (_inst != noone and ds_list_find_index(hit_objects,_inst) != -1)
{
	_inst.currentHp -= damage;
	ds_list_add(hit_objects,_inst);
} 