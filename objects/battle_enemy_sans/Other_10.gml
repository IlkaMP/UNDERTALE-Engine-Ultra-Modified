///@desc Init
//enemy name\/
Battle_SetEnemyName(_enemy_slot, "* Sans")
//enemy defense\/
Battle_SetEnemyDEF(_enemy_slot,-15);
//spareable of enemy\/
Battle_SetEnemySpareable(_enemy_slot,false);
//just hp of your enemy\/
_hp_max = 2
_hp = _hp_max
//if you want that your enemy will dodge set true\/
miss = true
//gold and exp of your enemy???\/
_exp = 0;
_gold = 0;
//acts\/
Battle_AddAct(1, "* Check", "* Test - ATK 1 DF 1")
Battle_AddAct(2, "* Test Act", "* Lol it's just for test.")
//write true to enable Flee, or just delete the script\/
Battle_SetMenuMercyFleeEnabled(false)
