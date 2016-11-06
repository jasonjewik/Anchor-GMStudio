///Draws shadows

//Only change is to decrease the height then invert
draw_sprite_ext(sprite_index, image_index, x, y + sprite_height/2, image_xscale, -image_yscale/2, 0, c_black, 0.5);
