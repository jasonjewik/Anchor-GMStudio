hit = instance_position(x, y, class_damage);
if (instance_exists(hit)) {
    dir2 = point_direction(hit.x, hit.y, x, y);
    
    range_to_wall = range_finder(x, y, dir2, 256, class_wall, false, true);
    
    if (!range_to_wall) range_to_wall = 9999999;
    if (range_to_wall <= sprite_width/2) speed = 0;
    else motion_add(dir2, 2);
}

if (hp <= 0) state_switch("Die", true);

if (state_timer > 10) state_switch_previous();
