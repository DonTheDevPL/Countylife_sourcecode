/*
	Author: Ben Harris
	Description: Opens the house Sale Dialog
*/

HRP_fnc_openSellHouse = {
	params ["_ct"];

	createDialog "HRP_sellHouse";
	waitUntil {!isNull (findDisplay 5010)};
	ctrlSetText [1600, "Sell House"];
	

	{
		_id = _x select 0;
		if (typeOf _ct isEqualTo _id) then {
			HRP_Price = _x select 1;
			HRP_Price = round (HRP_Price / 2);
		};
	} foreach HRP_housePriceArray;

	ctrlSetText [1023, "Sale Price: $" + str HRP_Price];
};