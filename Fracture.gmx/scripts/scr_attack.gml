

hSpeed = scr_approach(hSpeed, 0, frc);
vSpeed = scr_approach(vSpeed, 0, frc);

scr_moveCollide();

if (keyboard_check_pressed(vk_anykey)) state = pst.normal;
