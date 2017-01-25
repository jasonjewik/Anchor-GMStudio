///isMouseOver(object to check)
isOver = false;
target = argument0;

if (mouse_x > target.bbox_left && mouse_x < target.bbox_right) {
    if (mouse_y > target.bbox_top && mouse_y < target.bbox_bottom) {
        isOver = true;
    } else isOver = false;
} else isOver = false;

return isOver;
