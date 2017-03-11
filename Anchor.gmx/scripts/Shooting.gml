///Shooting
if (/*global.isAiming &&*/isActive && trigger && fireDelay == 0) {
    instance_create(x + shotVariance, y + shotVariance, projectile);
    fireDelay = initFireDelay; 
}
