/*
	Author: Ben Harris
	Description: Mines the Object
*/

HRP_fnc_mineObject = {
	_weapon = _this select 1;
	_ct = cursorObject;
	if (_weapon isEqualTo "CG_PICKAXE") then {
		player playAction "SledgeSwing";
	};
	if (_weapon isEqualTo "CG_PICKAXE" && typeOf _ct in HRP_mineObjects) then {
			/*
			if (typeOf _ct isEqualTo (_x select 0)) then {
				HRP_oreMined = HRP_oreMined + round (random 7);
				_value = _ct getVariable "mined";
				_value = _value + 1;
				if (_value >= 20) then
				{
					deleteVehicle _ct;
				} else {
					_ct setVariable ["mined", _value];
				};
				if (HRP_oreMined >= 20 || (player getVariable ["vipLevel", 0] > 0 && HRP_oreMined >= (20-(2*player getVariable ["vipLevel", 0])))) then {
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
					*/
		HRP_oreMined = HRP_oreMined + 1;
		HRP_oreMined = HRP_oreMined + round(random 2);
		if(HRP_oreMined >= 5) then {
			deleteVehicle cursorObject;
			for "_i" from 0 to HRP_oreMined-1 do {
				switch (typeOf cursorObject) do {
					case "A3L_Bits_Rock_L_Coal": { player additem "W_coalOre"; };
					case "A3L_Bits_Rock_L_Diamond": { player additem "W_diamondOre"; };
					case "A3L_Bits_Rock_L_Gold": { player additem "W_GoldOre"; };
					case "A3L_Bits_Rock_L_Iron": { player additem "W_IronOre"; };
				};
			};
			switch (typeOf cursorObject) do {
				case "A3L_Bits_Rock_L_Coal": { msg = format["Wydobyles %1 Wegla",HRP_oreMined]; };
				case "A3L_Bits_Rock_L_Diamond": { msg = format["Wydobyles %1 Diamentow",HRP_oreMined]; };
				case "A3L_Bits_Rock_L_Gold": { msg = format["Wydobyles %1 Zlota",HRP_oreMined]; };
				case "A3L_Bits_Rock_L_Iron": { msg = format["Wydobyles %1 Zelaza",HRP_oreMined]; };
			};
			["Sukces",msg,true] spawn HRP_fnc_Notifications;
			HRP_oreMined = 0; 
			
		};
			
		
	};
};