/*
	Author: Ben Harris
	Description: Tree Chopping
*/

HRP_fnc_chopTree = {
	_weapon  = currentWeapon player;
	_ct = cursorObject;
	switch (_weapon) do
	{
		case "cg_hatchet":
		{
			player playAction "SledgeSwing";
		};
		case "RR_axe":
		{
			player playAction "Axe_Swing_Animation"
		};
	};
	if (player distance _ct > 10) exitWith {};
	if (_weapon in HRP_Axes) then {
		{
			_tree = _x select 0;
			test = _tree;
			if (str _ct find _tree != -1) then {
				HRP_treeChopped = HRP_treeChopped + round (random 5);
				HRP_treeCount = HRP_treeCount + 1;

				if (HRP_treeCount >= 40) then
				{
					_ct setDamage 1;
					HRP_treeCount = 0;
				} else {
					_ct setVariable ["mined", _value, true];
				};
				if (HRP_treeChopped >= 20) then {
					if (isNil 'HRP_Item') then {
						HRP_Item = "groundWeaponHolder" createVehicle position player;
						HRP_Item setPos (getpos Player);
					} else {
						if (!isNil 'HRP_Item' && player distance HRP_Item > 5) then {
							HRP_Item = "groundWeaponHolder" createVehicle position player;
							HRP_Item setPos (getpos Player);
						};
					};
					HRP_Item addItemCargoGlobal [_x select 1, 1];
					HRP_treeChopped = 0;
				};
			};
		} foreach HRP_Trees;
	};
};

