cooldown = true;
move_towards_point(mouse_x, mouse_y, dashSpeed);

if (collision_point(mouse_x, mouse_y, class_wall, false, true)) {
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
    if (speed == 0) {
        sprite_index = lastSprite;
        alarm_set(1, -1);
        state_switch_previous();
    }        
}
