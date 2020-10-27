/*
	Author: Ben Harris
	Description: Updates Price and Displays Clothing on Dummy
*/

HRP_fnc_clothingUpdate = {
	_index = lbCurSel 1500;
	_data = lbData [1500, _index];
	_dataArray = call compile _data;
	Life_curPrice = _dataArray select 2;
	Life_curPrice = call compile Life_curPrice;
	
	_viplevel = player getVariable ["vipLevel", 0];

	if (_viplevel > 0) then {
		_vipamount = 10 + (10*_viplevel);

		Life_curPrice = Life_curPrice - (Life_curPrice/_vipamount); // Removes  cost if VIP
	};

	ctrlSetText [1783, "Price: $" + str Life_curPrice];

	Life_ItemID = _dataArray select 0;
	Life_ItemType = _dataArray select 1;


	switch (Life_ItemType) do
	{
		case "Uniform":
		{
			removeUniform ShopCharacter;
			Life_Update = ShopCharacter addUniform Life_ItemID;
		};
		case "Backpack":
		{
			removeBackpack ShopCharacter;
			Life_Update = ShopCharacter addBackpack Life_ItemID;
		};
		case "Vest":
		{
			removeVest ShopCharacter;
			Life_Update = ShopCharacter addVest Life_ItemID;
		};
		case "Glasses":
		{
			removeGoggles ShopCharacter;
			Life_Update = ShopCharacter addGoggles Life_ItemID;
		};
		case "Headgear":
		{
			removeHeadgear ShopCharacter;
			Life_Update = ShopCharacter addHeadgear Life_ItemID;
		};
	};
};