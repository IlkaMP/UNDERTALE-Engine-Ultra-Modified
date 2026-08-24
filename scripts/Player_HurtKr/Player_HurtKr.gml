///@desc Hurts player with kr if kr enabled.
function Player_HurtKr() {
    if (global.kr) battle.damage = 1;
    return;
}