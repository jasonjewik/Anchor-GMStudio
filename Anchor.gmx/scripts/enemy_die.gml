position = ds_list_find_index(global.shadowedList, id);
ds_list_delete(global.shadowList, position);
ds_list_delete(global.shadowedList, position);

instance_destroy();
