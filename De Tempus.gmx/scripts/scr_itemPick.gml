for (var i = 0; i < global.maxInvSlots; i++) {
    if (global.inventory[i, 0] == "") {
        for (var j = 0; j < array_length_2d(global.inventory, i); j++) {
            global.inventory[i, j] = item.props[j];
        }
        with (item) instance_destroy();
        i = global.maxInvSlots;
    }
}
