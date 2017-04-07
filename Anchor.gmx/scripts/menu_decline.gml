with (owner) {
    if (!toggle) {
        alarm_set(1, room_speed * seconds);
        toggle = true;
    }
}
