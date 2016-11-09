//Knockback
if (instance_exists(enemyCon)) {
    hSpeed = scr_approach(hSpeed, -sign(enemyCon.x - x) * 8, accl * 8);
    vSpeed = scr_approach(vSpeed, -sign(enemyCon.y - y) * 8, accl * 8);
}

//Increase MaxSpeed
maxSpeed = 10;

scr_moveCollide();
