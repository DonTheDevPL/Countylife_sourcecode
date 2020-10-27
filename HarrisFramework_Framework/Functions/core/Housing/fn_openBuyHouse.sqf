/*
	Author: Ben Harris
	Description: Buy House Menu.
*/

HRP_fnc_openBuyHouse = {
	params["_ct"];
	HRP_ct = _ct;
	{
		_id = _x select 0;
		if (typeOf _ct isEqualTo _id) then {
			HRP_Price = _x select 1;
			HRP_description = _x select 3;
		};
	} foreach HRP_housePriceArray;

	createDialog "HRP_buyHouse";
	waitUntil {!isNull (findDisplay 5009)};
	ctrlSetText [1023, str HRP_Price];
	ctrlSetText [1001, (player getVariable "playerName")];
	ctrlSetText [1002, HRP_description];
};