//Inertia & Friction Handling
if (hMove == 0) {
    hSpeed = scr_approach(hSpeed, 0, frc);
}
if (vMove == 0) {
    vSpeed = scr_approach(vSpeed, 0, frc);
}
