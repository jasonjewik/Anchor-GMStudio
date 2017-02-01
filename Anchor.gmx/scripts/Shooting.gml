///Shooting
if (global.isAiming && trigger && fireDelay == 0) {
    instance_create(x + shotVariance, y + shotVariance, projectile);
    fireDelay = initFireDelay; 
}
