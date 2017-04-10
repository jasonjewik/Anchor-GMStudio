///Movement
hMove = input_key_right() + -input_key_left();
vMove = input_key_down() + -input_key_up();

hSpeed+=hMove*accl;
vSpeed+=vMove*accl;

hSpeed = clamp(hSpeed, -maxSpeed, maxSpeed);
vSpeed = clamp(vSpeed, -maxSpeed, maxSpeed);

hSpeed = Friction(hSpeed, frc);
vSpeed = Friction(vSpeed, frc);

hSpeedFinal = hSpeed + hSpeedFrac;
hSpeedFrac = hSpeedFinal - floor(abs(hSpeedFinal)) * sign(hSpeedFinal);
hSpeedFinal -= hSpeedFrac;

vSpeedFinal = vSpeed + vSpeedFrac;
vSpeedFrac = vSpeedFinal - floor(abs(vSpeedFinal)) * sign(vSpeedFinal);
vSpeedFinal -= vSpeedFrac;

if (place_meeting(x + hSpeedFinal, y, class_solid)) {
    inc = sign(hSpeedFinal);
    while (!place_meeting(x + inc, y, class_solid)) x+=inc;
    hSpeed = 0;
    hSpeedFinal = 0;
}
x+=hSpeedFinal;

if (place_meeting(x, y + vSpeedFinal, class_solid)) {
    inc = sign(vSpeedFinal);
    while (!place_meeting(x, y + inc, class_solid)) y+=inc;
    vSpeed = 0;
    vSpeedFinal = 0;
}
y+=vSpeedFinal;

if (hSpeed == 0 && vSpeed == 0) state_switch("Idle", true);

