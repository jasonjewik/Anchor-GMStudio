///Collision(axis, velocity)
if (argument0 == x) {
    if (place_meeting(x + argument1, y, class_solid)) {
        inc = sign(argument1);
        while (!place_meeting(x + inc, y, class_solid)) x+=inc;
        argument1 = 0;
    }
}

if (argument0 == y) {
    if (place_meeting(x, y  + argument1, class_solid)) {
        inc = sign(argument1);
        while (!place_meeting(x, y  + inc, class_solid)) y+=inc;
        argument1 = 0;
    }
}
