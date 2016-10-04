//MoveSpeed Cap
if (key_shift) {
    maxSpeed = 3;
} else {
    maxSpeed = 2;
}

//Face Values
if (key_right) global.face = 0;
if (key_up) global.face = 1;
if (key_left) global.face = 2;
if (key_down) global.face = 3;

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
if (mouse_left) {
    if (mouse_x > obj_player.x && abs(mouse_y - obj_player.y) < 16) instance_create(obj_player.x + 16, y, obj_mAttack);
    if (mouse_x < obj_player.x && abs(mouse_y - obj_player.y) < 16) instance_create(obj_player.x - 16, y, obj_mAttack);
    if (mouse_y > obj_player.y && abs(mouse_x - obj_player.x) < 16) instance_create(obj_player.x, y + 16, obj_mAttack);
    if (mouse_y < obj_player.y && abs(mouse_x - obj_player.x) < 16) instance_create(obj_player.x, y - 16, obj_mAttack);
}

//Ranged Attacks
if (key_alt) {
    projectile = instance_create(x,y,obj_projectile);
    projectile.direction = global.face * 90;
    projectile.image_angle = image_angle;
    projectile.speed = 8;
}

//Switch to Roll
if (key_space) state = pst.roll;

scr_moveCollide();
