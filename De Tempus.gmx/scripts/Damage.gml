scr_physics();

//Knockback
if (instance_exists(enemyCon)) {
    hSpeed = scr_approach(hSpeed, -sign(enemyCon.x - x) * 8, accl * 8);
    vSpeed = scr_approach(vSpeed, -sign(enemyCon.y - y) * 8, accl * 8);
}

//Stamina Regen Cooldown
stamCD = true;
alarm_set(1, 30);

//Increase MaxSpeed
maxSpeed = mass * 10;
