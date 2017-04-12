cooldown = true;
move_towards_point(mouse_x, mouse_y, dashSpeed);

if (collision_point(mouse_x, mouse_y, class_solid, false, true)) {
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
    if (speed == 0) {
        sprite_index = lastSprite;
        alarm_set(1, -1);
        state_switch_previous();
    }        
}
