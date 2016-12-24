if (argument0 == 0) animReset = false;
else if (argument0 == 1) {
    if (!animReset) {
        image_index = 0;
        animReset = true;
    }
}
