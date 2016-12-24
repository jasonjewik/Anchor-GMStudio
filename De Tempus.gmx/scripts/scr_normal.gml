//MoveSpeed Cap
if (key_shift) {
    maxSpeed = 3;
} else {
    maxSpeed = 2;
}

//Reset Variables
rollVal = false;
dash = false;

//Movement Inputs
hMove = -key_left + key_right;
vMove = -key_up + key_down;

//Walking
hSpeed += hMove * accl;
vSpeed += vMove * accl;

scr_inertia();
scr_moveCollide();

//Melee Attacks
if (!ranged && mouse_middle) {
    instance_create(x + 16 * sign(mouse_x - x), y + 16 * sign(mouse_y - y), obj_mAttack);
}

//Ranged Attacks
if (mouse_right && ammo > 0 && obj_mouse.reload == false) {
    ranged = true;
    if (mouse_left && alarm[0] == -1) alarm_set(0, 5);
} else ranged = false;   
if (ammo = 0){
    projectile = false
} 

//Switch to Roll
if (key_space && !dashCD && global.stamina > 33) {
    state = pst.roll;
    image_index = 0;
}
