hSpeed = clamp(hSpeed, -maxSpeed, maxSpeed);
vSpeed = clamp(vSpeed, -maxSpeed, maxSpeed);

hSpeed+=hMove*accl;
vSpeed+=vMove*accl;

if (hMove == 0) hSpeed = scr_approach(hSpeed, 0, frc);
if (vMove == 0) vSpeed = scr_approach(vSpeed, 0, frc);


hSpeedFinal = hSpeed + hSpeedFrac;
hSpeedFrac = hSpeedFinal - floor(abs(hSpeedFinal)) * sign(hSpeedFinal);
hSpeedFinal -= hSpeedFrac;

vSpeedFinal = vSpeed + vSpeedFrac;
vSpeedFrac = vSpeedFinal - floor(abs(vSpeedFinal)) * sign(vSpeedFinal);
vSpeedFinal -= vSpeedFrac;

if (place_meeting(x + hSpeedFinal, y, obj_wall)) {
    inc = sign(hSpeedFinal);
    while (!place_meeting(x + inc, y, obj_wall)) x+=inc;
    hSpeed = 0;
    hSpeedFinal = 0;
}
x+=hSpeedFinal;

if (place_meeting(x, y + vSpeedFinal, obj_wall)) {
    inc = sign(vSpeedFinal);
    while (!place_meeting(x, y + inc, obj_wall)) y+=inc;
    vSpeed = 0;
    vSpeedFinal = 0;
}
y+=vSpeedFinal;
