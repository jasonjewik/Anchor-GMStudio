dir = point_direction(x, y, mouse_x, mouse_y);
if (!place_meeting(x + 5, y + 5, class_solid)) motion_add(dir, 5);
