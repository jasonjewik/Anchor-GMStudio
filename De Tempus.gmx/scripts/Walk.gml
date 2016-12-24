scr_physics();

if (hSpeed == 0 && vSpeed == 0) {
    global.pState = st.idle;
    AnimReset(0);
}
