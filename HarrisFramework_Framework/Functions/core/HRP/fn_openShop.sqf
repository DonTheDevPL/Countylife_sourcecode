/*
	Title: fn_openShop.sqf
	Author: Ben Harris
	Description: Opens the shop Dialog
*/

HRP_fnc_OpenShop = {
	params["_target"];

	disableSerialization;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_target getVariable ["vipShop", 0] > _viplevel) exitWith {
		["Error", "Nie posiadasz wymaganego poziomu VIP.", true] spawn HRP_fnc_Notifications;
	};

	_Shop = _target getVariable "HRP_Shop";
	_finalShop = call compile _shop;
	createDialog "Harris_Gearshop_Dialog";
	waituntil {!isNull (findDisplay 5421);};

	{
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
			};
		};


		_index = lbAdd [ 1500, displayName ]; 
		lbSetData [1500, _index, ( _x select 1 )];
	} forEach _finalShop;	

	lbSetCurSel [1500, 0];
};
