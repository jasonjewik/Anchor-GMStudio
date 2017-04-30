dir = point_direction(x, y, mouse_x, mouse_y);

aiming_direction = point_direction(x, y, mouse_x, mouse_y);
range_to_wall = range_finder(x, y, aiming_direction, 256, class_wall, false, true);

if (!range_to_wall) range_to_wall = 9999999;
if (range_to_wall <= sprite_width) speed = 0;
else motion_add(dir, 5);
