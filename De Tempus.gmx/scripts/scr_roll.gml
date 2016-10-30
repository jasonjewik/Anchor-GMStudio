//Direction of Roll
if (!rollVal) {
    y1 = mouse_y;
    x1 = mouse_x;
    rollVal = true;
} else rollVal = false 

vSpeed = scr_approach(vSpeed, 10*sign(y1 - y), accl * 8)
hSpeed = scr_approach(hSpeed, 10*sign(x1 - x), accl * 8)

//MoveSpeed Increase
maxSpeed = 10;

scr_moveCollide();
