scr_physics();

alarm_set(5, 600);

with (all) {
    if (obj_playerTest.alarm[5] > -1 && global.slowActive) {
        image_speed = image_speed/5;
    }
}
with (obj_enemy) {
    if (obj_playerTest.alarm[5] > -1 && global.slowActive) {
        maxSpeed = 0.25;
    }
}
with (self) {
    if (alarm[5] > -1 && global.slowActive) {
        image_speed = image_speed*5;
    }
}

global.slowActive = false;


