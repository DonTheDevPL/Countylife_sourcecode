/*
	Author: Ben Harris
	Description: Opens the Menu to sell items
*/

HRP_fnc_openSellItems = {
	params["_shop"];
	createDialog "HRP_sellShop";
	waitUntil {!isNull (findDisplay 5015)};

	if (_shop isEqualTo HRP_drugDealer) then {
		ctrlSetText [1200, "\HarrisFramework_Client2\icons\drugExport.paa"];
	};
	if (_shop isEqualTo HRP_mineralTrader) then {
		ctrlSetText [1200, "\HarrisFramework_Client2\icons\mineralTrader.paa"];
	};
	_PlayerItems = [];
	{
		_PlayerItems pushback _x;
	} foreach backpackItems player;
	{
		_PlayerItems pushback _x;
	} foreach vestItems player;
	{
		_PlayerItems pushback _x;
	} foreach uniformItems player;

	{
		if (_x in _shop) then {
			_item = getText(configFile >> "CfgWeapons" >> _x >> "displayName");

			_lb = lbAdd [1500, _item];
			lbSetData [1500, _lb , _x];

		};
	} foreach _PlayerItems;	
};