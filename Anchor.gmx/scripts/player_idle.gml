speed = 0;
maxSpeed = 3.5;

hSpeedFrac = 0;
hSpeedFinal = 0;

vSpeedFrac = 0;
vSpeedFinal = 0;

if (input_key_right() || input_key_left() || input_key_up() || input_key_down()) state_switch("Run", true);
if (stamina >= dashCost && input_key_dash() && !cooldown) {
    aiming_direction = point_direction(x, y, mouse_x, mouse_y);
    range_to_wall = range_finder(x, y, aiming_direction, 256, class_wall, false, true);
    if (!range_to_wall || range_to_wall > sprite_width) {
        alarm_set(0, room_speed);
        alarm_set(1, room_speed/4);  
        stamina -= dashCost;
        lastSprite = sprite_index;
        repeat(choose(5,10)) instance_create(x, bbox_bottom, fx_dust);
        state_switch("Dash", true);
    }
}
if (place_meeting(x, y, class_damage) && !invulnerable) {
    alarm_set(0, room_speed * 2);
    alarm_set(1, room_speed/4);
    invulnerable = true;
    state_switch("Damage", true);
}
if (global.chatOpen) state_switch("Talk", true);
if (input_key_time()) {
    alarm_set(1, slowDuration);
    state_switch("Time", true);
}
