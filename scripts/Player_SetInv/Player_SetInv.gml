///@desc Sets player time to wait between hurts.
function Player_SetInv(inv) {
	Storage_GetStaticGeneral().Set(FLAG_STATIC_INV,inv);
}
