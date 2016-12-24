scr_physics();

maxSpeed = scr_approach(maxSpeed, mass*1.2, 1);

if (abs(hMove) > 0 || abs(vMove) > 0) {
    global.pState = st.walk;
    AnimReset(0);
}

if (global.stamina >= 25 && !dashCD && key_space) {
    global.pState = st.dash;
    AnimReset(0);
}
