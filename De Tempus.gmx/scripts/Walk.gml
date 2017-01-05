scr_physics();

maxSpeed = scr_approach(maxSpeed, mass*1.2, 1);

if (hSpeed == 0 && vSpeed == 0 && hMove == 0 && vMove == 0) {
    global.pState = st.idle;
    AnimReset(0);
}

if (global.stamina >= 25 && !dashCD && key_space) {
    global.pState = st.dash;
    AnimReset(0);
}

if (mouse_middle) {
    global.pState = st.melee;
    AnimReset(0);
}

if (mouse_right && ammo > 0 && obj_mouse.reload == false) {
    global.pState = st.range;
    AnimReset(0);
}
