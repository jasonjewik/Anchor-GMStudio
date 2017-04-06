if (!activated) {
    with (weapon) instance_destroy();
    state_switch("Idle", true);
}
