HRP_fnc_onFired = {
	_wep = currentWeapon player;
	if (_wep in ["CG_CROSS","CG_BATON","CG_TELBAT","CG_BAT","CG_SHOVEL","cg_scythe","CG_PICKAXE","cg_hatchet","cg_machete"]) then {
		player playAction "SledgeSwing";
	};
};
