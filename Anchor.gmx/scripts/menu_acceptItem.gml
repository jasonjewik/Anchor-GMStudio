with (owner) {
    if (!toggle) {
        pickUp = instance_create(x, y, item);
        pickUp.visible = false;
        owner.item = noone;
        
        ds_list_add(global.inventory, pickUp);
        
        pickUp.owner = class_player; 
        
        if (global.itemEquip1 == noone) global.itemEquip1 = pickUp;
        else global.itemEquip2 = pickUp;
        
        if (global.currentSelect == noone) {
            if (global.itemEquip1 != noone) global.currentSelect = global.itemEquip1;
            else if (global.itemEquip2 != noone) global.currentSelect = global.itemEquip2;
        }
        alarm_set(1, room_speed * seconds);
        toggle = true;
    }
}
