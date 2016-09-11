//Clamp Movement Values
hSpeed = clamp(hSpeed, -maxSpeed, maxSpeed);
vSpeed = clamp(vSpeed, -maxSpeed, maxSpeed);

//Fractional Movement Handling
hSpeedFinal = hSpeed + hSpeedFrac;
hSpeedFrac = hSpeedFinal - floor(abs(hSpeedFinal)) * sign(hSpeedFinal);
hSpeedFinal -= hSpeedFrac;

vSpeedFinal = vSpeed + vSpeedFrac;
vSpeedFrac = vSpeedFinal - floor(abs(vSpeedFinal)) * sign(vSpeedFinal);
vSpeedFinal -= vSpeedFrac;

//Collision
if (place_meeting(x + hSpeedFinal, y, obj_wall)) {
    inc = sign(hSpeedFinal)
    while (!place_meeting(x + inc, y, obj_wall)) x += inc;
    hSpeed = 0;
    hSpeedFinal = 0;
}
x += hSpeedFinal;
    
if (place_meeting(x, y + vSpeedFinal, obj_wall)) {
    inc = sign(vSpeedFinal)
    while (!place_meeting(x, y + inc, obj_wall)) y += inc;
    vSpeed = 0;
    vSpeedFinal = 0;
}   
y += vSpeedFinal;
