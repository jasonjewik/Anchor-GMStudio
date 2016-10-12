for (var i = 0; i < global.maxInvSlots; i++) {
    if (ds_grid_get(global.inventory, i, 0) = "") {
        for (var j = 0; j < ds_grid_height(global.inventory); j++) {
            ds_grid_set(global.inventory, i, j, item.props[j]);
        }
        with (item) instance_destroy();
        i = global.maxInvSlots;
    }
}
