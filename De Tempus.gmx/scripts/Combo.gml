if (!obj_mouse.initTrigger && instance_exists(global.target)) {
    instance_create(x, y, obj_mAttack);
    x = global.target.x;
    y = global.target.y;
    alarm_set(6, 5);
    obj_mouse.initTrigger = true;
} 
