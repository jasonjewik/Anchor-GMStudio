hSpeed = scr_approach(hSpeed, 0, frc);
vSpeed = scr_approach(vSpeed, 0, frc);

if (x > obj_player.x && abs(y - obj_player.y) < 16) instance_create(obj_player.x - 16, y, obj_eAttack);
if (x < obj_player.x && abs(y - obj_player.y) < 16) instance_create(obj_player.x + 16, y, obj_eAttack);
if (y > obj_player.y && abs(x - obj_player.x) < 16) instance_create(obj_player.x, y - 16, obj_eAttack);
if (y < obj_player.y && abs(x - obj_player.x) < 16) instance_create(obj_player.x, y + 16, obj_eAttack);

for (var i = 0; i < 10; i++) {
    if (i == 9) state = est.normal;
}

scr_moveCollide();
