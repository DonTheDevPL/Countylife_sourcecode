/*
	Author: Ben Harris
	Description: Updates the Type of the Shop
*/

HRP_fnc_typeUpdate = {
	lbClear 1500;
	_type = lbData [2100, (lbCurSel 2100)];
	{
		_isType = (call compile (_x select 1)) select 1;
		if ( _type isEqualTo _isType) then {

		displayName = _x select 0;
		_data = _x select 0;
		if (_data == "") then {
			_displayNameConfig = (call compile (_x select 1)) select 1;

			_ID = (call compile (_x select 1)) select 0;
			switch (_displayNameConfig) do
			{
				case "Uniform":
				{
					displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
				};
				case "Vest":
				{
					displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
				};
				case "Backpack":
				{
					displayName = getText(configFile >> "CfgVehicles" >> _ID >> "displayName");
				};
				case "Magazine":
				{
					displayName = getText(configFile >> "CfgMagazines" >> _ID >> "displayName");
				};
				case "Item":
				{
					displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
				};
				case "Weapon":
				{
					displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
				};
				default
				{
					displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
				};
			};
		};


		_index = lbAdd [ 1500, displayName ]; 
		lbSetData [1500, _index, ( _x select 1 )];	
		};
	} forEach HRP_curShop;
};