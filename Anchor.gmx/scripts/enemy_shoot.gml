if (!activated) {
    with (weapon) instance_destroy();
    show_debug_message("Switch");
    state_switch("Idle", true);
}
