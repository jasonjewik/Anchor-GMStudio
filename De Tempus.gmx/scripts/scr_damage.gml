//Knockback
if (instance_exists(enemyCon)) {
    hSpeed = scr_approach(hSpeed, -sign(enemyCon.x - x) * 6, accl * 4);
    vSpeed = scr_approach(vSpeed, -sign(enemyCon.y - y) * 6, accl * 4);
}

//Increase MaxSpeed
maxSpeed = 6;

scr_moveCollide();

//Stop the damage state...still buggy, would prefer to use animation end if we had sprite
if (abs(hSpeed) == abs(maxSpeed) || abs(vSpeed) == abs(maxSpeed)) {
    maxSpeed = 2;
    state = pst.normal;
}
