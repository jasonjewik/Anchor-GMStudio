speed = 0;
maxSpeed = 3.5;

hSpeedFrac = 0;
hSpeedFinal = 0;

vSpeedFrac = 0;
vSpeedFinal = 0;

if (input_key_right() || input_key_left() || input_key_up() || input_key_down()) state_switch("Run", true);
if (stamina >= dashCost && input_key_dash() && !cooldown) {
    alarm_set(0, room_speed);
    alarm_set(1, room_speed/4);  
    stamina -= dashCost;
    lastSprite = sprite_index;
    state_switch("Dash", true);
}
if (place_meeting(x, y, class_damage) && !invulnerable) {
    alarm_set(0, room_speed);
    alarm_set(1, room_speed/4);
    state_switch("Damage", true);
}
if (global.chatOpen) state_switch("Talk", true);
