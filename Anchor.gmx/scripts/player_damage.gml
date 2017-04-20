hit = instance_position(x, y, class_damage);
if (instance_exists(hit)) {
    dir2 = point_direction(hit.x, hit.y, x, y);

    motion_add(dir2, 2);
    if (place_meeting(x + speed, y, class_wall)) {
        inc2 = sign(speed);
        while (!place_meeting(x + inc2, y, class_wall)) speed = inc2;
        speed = 0;
    }
    if (place_meeting(x, y + speed, class_wall)) {
        inc2 = sign(speed);
        while (!place_meeting(x, y + inc2, class_wall)) speed = inc2;
        speed = 0;
    }
}

if (hp <= 0) state_switch("Die", true);

if (state_timer > 100) state_switch_previous();
