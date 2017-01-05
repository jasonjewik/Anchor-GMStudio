scr_physics();
stamCD = true;

//Direction of Roll
if (!melee) {
    //Gets mouse position at time of activation so it doesn't change in real-time
    x1 = mouse_x;
    y1 = mouse_y;
    //Determine the direcion of the dash
    if (abs(y1 - y) < 25) {
        dir2 = "h";
    } else if (abs(x1 - x) < 25) {
        dir2 = "v";
    } else if (abs(x1 - x) - abs(y1 - y) < 25) {
        dir2 = "hv";
    }
    //Ensures that this code only runs once
    melee = true;
}

maxSpeed = mass * 4.0;
if (!instance_exists(obj_mAttack)) {
    //Switch block to allow margin of error
    switch (dir2) {
        case "h": {
            instance_create(x + 32*sign(mouse_x - x), y, obj_mAttack);
            hSpeed = scr_approach(hSpeed, 6*sign(mouse_x - x), accl*8);
            break;
        }
        case "v": {
            instance_create(x, y + 32*sign(mouse_y - y), obj_mAttack);   
            vSpeed = scr_approach(vSpeed, 6*sign(mouse_y - y), accl*8);
            break;
        }
        case "hv": {
            instance_create(x + 32*sign(mouse_x - x), y + 32*sign(mouse_y - y), obj_mAttack); 
            hSpeed = scr_approach(hSpeed, 6*sign(mouse_x - x), accl*8);
            vSpeed = scr_approach(vSpeed, 6*sign(mouse_y - y), accl*8);
            break;
        }
        default: break;
    }
}

if (alarm[3] == -1) alarm_set(3, 5);
