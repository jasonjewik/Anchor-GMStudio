//MoveSpeed Cap
if (key_shift) {
    maxSpeed = 3;
} else {
    maxSpeed = 2;
}

//Reset Variables
rollVal = false;
dash = false;

//Player Movements
var hMove;
hMove = -key_left + key_right;
var vMove;
vMove = -key_up + key_down;

if (hSpeed == 0) hSpeed = hMove * accl;
else hSpeed = hMove * accl + hSpeed;
if (vSpeed == 0) vSpeed = vMove * accl;
else vSpeed = vMove * accl + vSpeed;

//Inertia & Friction Handling
if (hMove == 0) {
    hSpeed = scr_approach(hSpeed, 0, frc);
}
if (vMove == 0) {
    vSpeed = scr_approach(vSpeed, 0, frc);
}

//Melee Attacks
if (!ranged && mouse_middle) {
    instance_create(x + 16 * sign(mouse_x - x), y + 16 * sign(mouse_y - y), obj_mAttack);
}

//Ranged Attacks
if (mouse_right && ammo > 0) {
    ranged = true;
    if (mouse_left && alarm[0] = -1) alarm_set(0, 5);
} else ranged = false;   
if (ammo = 0){
    projectile = false
} 
//Switch to Roll
if (key_space && dashCD) {
    state = pst.roll;
    image_index = 0;
}

scr_moveCollide();
