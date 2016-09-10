if (mouse_right) {
   targetX = mouse_x;
   targetY = mouse_y;
}

if (targetX > x) hMove = 1
else if (targetX < x) hMove = -1

if (targetY > y) vMove = 1
else if (targetY < y) vMove = -1 

hSpeed += hMove * accl;
vSpeed += vMove * accl;
move_towards_point(round(targetX), round(targetY), hSpeed)

scr_moveCollide();

if (abs(x - targetX) < 15 && abs(y - targetY) < 15) {
    hMove = 0;
    vMove = 0;
    state = pst.idle;
}


