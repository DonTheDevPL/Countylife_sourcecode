/*
	Author: Ben Harris
	Description: Uses Physical Items:
*/

HRP_fnc_useItemPhysical = {

		_value = lbText [_this select 0, _this select 1];

		switch (_value) do
		{
			case "Wheat Seeds":
			{
				if ((surfaceType position player) isEqualTo "#CRGrit1" || !(player inArea "Wheat_1" || player inArea "Wheat_3")) exitWith { ["Error", "Zboże nie może tutaj rosnąć", true] spawn HRP_fnc_Notifications; };
				[] spawn HRP_fnc_startWheatFarm;
			};
			case "Bandage":
			{
				[20, "W_Bandage"] spawn HRP_fnc_healPlayer;
			};
			case "Plant Pot":
			{
				[] spawn HRP_fnc_plantPot;
			};
			case "Crafting Notes":
			{
				[] spawn HRP_fnc_addBluePrint;
			};
			case "Stół chemiczny":
			{
				[] spawn HRP_fnc_useDrugTable;
			};
		};

		{
			if (_value isEqualTo (_x select 0)) then {
				[_x select 1, _x select 2, _x select 4] spawn HRP_fnc_consumeFood;
				playSound (_x select 3);
			};
		} forEach HRP_Food;

		{
			if (_value isEqualTo (_x select 0)) then {
				[_x select 2, 1, _x select 1] spawn HRP_fnc_consumeAlcohol;
				playSound (_x select 3);
			};
		} forEach HRP_Alcohol;
};