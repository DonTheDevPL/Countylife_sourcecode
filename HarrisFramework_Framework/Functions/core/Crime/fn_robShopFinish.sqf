/*
	Author: Ben Harris
	Description: Finishes the Robbery of the Shop
*/
HRP_fnc_robShopFinish = {
	params["_target"];

	_shop = call compile (_target getVariable "HRP_Shop");

	_box = "plp_ct_PlasticBoxGrey" createVehicle position player;
	_box setPos position player;
	for "_i" from 0 to 5 do {
		_value = selectRandom _shop;
		_item = (call compile (_value select 1)) select 0;
		test = _item;
		type2 = (call compile (_value select 1)) select 1;

		switch (type2) do 
		{
			case "Weapon":
			{
				_box addWeaponCargoGlobal [_item, 1];
			};
			case "Item":
			{
				_box addItemCargoGlobal [_item, 1];
			};
			case "Assign":
			{
				_box addItemCargoGlobal [_item, 1];
			};
			case "Magazine":
			{
				_box addMagazineCargoGlobal [_item, 1];
			};
			case "Uniform":
			{
				_box addItemCargoGlobal _item;
			};
			case "Vest":
			{
				_box addItemCargoGlobal _item;
			};
			case "Backpack":
			{
				_box addBackpackGlobal _item;
			};
		};
	};

	_cash = round (random HRP_robCash);

	[_cash] call HRP_fnc_addCash;


};