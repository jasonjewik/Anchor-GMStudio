//Clamp Movement Values
clamp(eSpeed, -maxSpeed, maxSpeed);

//Fractional Movement Handling
eSpeedFinal = eSpeed + eSpeedFrac;
eSpeedFrac = eSpeedFinal - floor(abs(eSpeedFinal)) * sign(eSpeedFinal);
eSpeedFinal -= eSpeedFrac;

//Collision
if (place_meeting(x + eSpeedFinal, y, obj_wall)) {
    inc = sign(eSpeedFinal)
    while (!place_meeting(x + inc, y, obj_wall)) x += inc;
    eSpeed = 0;
    eSpeedFinal = 0;
}
x += eSpeedFinal;
    
if (place_meeting(x, y + eSpeedFinal, obj_wall)) {
    inc = sign(eSpeedFinal)
    while (!place_meeting(x, y + inc, obj_wall)) y += inc;
    eSpeed = 0;
    eSpeedFinal = 0;
}   
y += eSpeedFinal;
