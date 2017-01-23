if (mouse_left && alarm[4] == -1 && ammo > 0 && !obj_mouse.reload) alarm_set(4, 5);

if (!mouse_right) global.pState = st.idle;
