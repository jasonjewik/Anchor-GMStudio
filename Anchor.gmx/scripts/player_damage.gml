hit = instance_position(x, y, class_damage);
invulnerable = true;
if (instance_exists(hit)) {
    dir2 = point_direction(hit.x, hit.y, x, y);

    motion_add(dir2, 2);
    if (place_meeting(x + speed, y, class_solid)) {
        inc2 = sign(speed);
        while (!place_meeting(x + inc2, y, class_solid)) speed = inc2;
        speed = 0;
    }
    if (place_meeting(x, y + speed, class_solid)) {
        inc2 = sign(speed);
        while (!place_meeting(x, y + inc2, class_solid)) speed = inc2;
        speed = 0;
    }
}

if (hp <= 0) state_switch("Die", true);
