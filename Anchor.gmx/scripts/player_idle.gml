hSpeed = 0;
vSpeed = 0;
hSpeedFrac = 0;
vSpeedFrac = 0;
hSpeedFinal = 0;
vSpeedFinal = 0; 

if (global.canTalk && input_key_interact()) state_switch("Talk", true);
if (input_key_right() || input_key_up() || input_key_down() || input_key_left()) state_switch("Run", true);
if (input_key_dash()) state_switch("Dash", true);
