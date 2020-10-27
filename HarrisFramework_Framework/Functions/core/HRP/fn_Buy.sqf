/*
	Author: Ben Harris
	Title: fn_Buy.sqf
	Description: Shop Purchase Function
*/

HRP_fnc_Buy = {
	_data = lbData [ 1500, ( lbCurSel 1500 ) ];	
	_FinalData = call compile _data;
	_ItemID = _FinalData select 0;
	_ItemType = _FinalData select 1;
	HRP_ItemPrice = _FinalData select 2;
	HRP_Whitelist = _FinalData select 3;
	HRP_typeRequired = _FinalData select 4;
	HRP_levelRequired = _FinalData select 5;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_viplevel > 0) then {
		_vipamount = 10 + (10*_viplevel);

		HRP_ItemPrice = HRP_ItemPrice - (HRP_ItemPrice/_vipamount); // Removes  cost if VIP
	};

	HRP_allowed = true;
	switch (HRP_typeRequired) do
	{
		case "Cop":
		{
			if ((player getVariable "cop") < HRP_levelRequired) exitWith {
				["Error", "Nie masz  wystarczająco wysokiej rangi.", true] spawn HRP_fnc_Notifications;
				HRP_allowed = false;
			};
		};
		case "Medic":
		{
			if ((player getVariable "ems") < HRP_levelRequired) exitWith {
				["Error", "Nie masz wystarczająco wysokiej rangi.", true] spawn HRP_fnc_Notifications;
				HRP_allowed = false;
			};
		};
		case "CG":
		{
			if (isNil {player getVariable "CG"}) exitWith { 
				["Error", "Nie masz  wystarczająco wysokiej rangi.", true] spawn HRP_fnc_Notifications;
				HRP_allowed = false;
			};
			if ((player getVariable "CG") < HRP_levelRequired) exitWith {
				["Error", "Nie masz  wystarczająco wysokiej rangi.", true] spawn HRP_fnc_Notifications;
				HRP_allowed = false;
			};
		};
		case "Civ":
		{

		};
	};

	HRP_Licenses = player getVariable "licenses";
	if (!(HRP_Whitelist in HRP_Licenses) && !(isNil HRP_Whitelist)) exitWith { HRP_allowed = false; ["Error", "Nie posiadasz odpowiedniej licencji."] spawn HRP_fnc_Notifications; };
	if (HRP_allowed) then {
		HRP_ItemPrice = call compile HRP_ItemPrice;
		HRP_Cash = player getVariable "cash";
		HRP_Check = [1, HRP_ItemPrice] call HRP_fnc_checkMoney;
		if (HRP_Check) then {
			switch (_ItemType) do
			{
				case "Weapon":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addWeapon _ItemID;
					["Sukces", "Kupiłeś broń", true] spawn HRP_fnc_Notifications;
				};
				case "Magazine":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addMagazine _ItemID;
					["Sukces", "Kupiłeś amunicje", true] spawn HRP_fnc_Notifications;
				};
				case "Uniform":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addUniform _ItemID;
					{
					player addItemToUniform _x;
					} foreach (uniformItems player);
					["Sukces", "Kupiłeś nowy uniform", true] spawn HRP_fnc_Notifications;
				};
				case "Backpack":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					clearAllItemsFromBackpack player;
					player addBackpack _ItemID;
					{
					player addItemToBackpack _x;
					} foreach (backpackItems player);
					["Sukces", "Kupiłeś nowy plecak", true] spawn HRP_fnc_Notifications;
				};
				case "Vest":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addVest _ItemID;
					{
						player addItemToVest _x;
					} foreach (vestItems player);
					["Sukces", "Kupiłeś nową kamizelkę", true] spawn HRP_fnc_Notifications;
				};
				case "Glasses":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addGoggles _ItemID;
					["Sukces", "Kupiłeś nowe okulary", true] spawn HRP_fnc_Notifications;
				};
				case "Assign":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addItem _ItemID;
					player assignItem _ItemID;
					["Sukces", "Congratulations on your purchase", true] spawn HRP_fnc_Notifications;
				};
				case "Item":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addItem _ItemID;
					["Sukces", "Kupiłeś nowe przedmioty", true] spawn HRP_fnc_Notifications;
				};
				case "Headgear":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					player addHeadgear _ItemID;
					["Sukces", "Kupiłeś nowe przedmioty", true] spawn HRP_fnc_Notifications;
				};
				case "Vehicle":
				{
					_pos = getMarkerPos HRP_vehicleSpawn; 
					_objects = nearestObjects [_pos, ["LandVehicle", "Air", "Sea"],5];
					if (count _objects > 0) then {
						if (HRP_distance < 5) exitWith { ["Error", "Miejsce spawnu jest zajęte", true] spawn HRP_fnc_Notifications; };
					};
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					veh = _ItemID createVehicle [0,0,0];
					veh allowDamage false;
					if(_itemID in ["Fox_ArrowXTLadder","Fox_Firetruck","M_Ambulance","Jonzie_Ambulance"]) then {
						veh attachto[player,[0,9.5,3]];
					} else {
						veh attachto[player,[0,6,3]];
					};
					VehHolding = true;
					//_Vehicle setVehiclePosition [(getMarkerPos HRP_vehicleSpawn), [], 0, "NONE"];
					//_Vehicle setposAtl [(getPosAtl _vehicle) select 0, (getPosAtl _vehicle) select 1, ((getPosAtl _vehicle) select 2) + 1];
					//_Vehicle setDir (markerDir HRP_vehicleSpawn);
					/*_arr1 = [1,2,3,4,5,6,7,8,9,"A","B","C","D","E","F"];
					_one = selectRandom _arr1;
					_two = selectRandom _arr1;
					_three = selectRandom _arr1;
					_code = format["#%1%2%3",_one,_two,_three];
					_colorTypes = ["chrome","matt"];
					_colorType = selectRandom _colorTypes;
					[_Vehicle, [code,"_colortype"], "Black", 1.0, 0.5] call ivory_fnc_initVehicle;*/
					["Sukces", "Kupiłeś nowy pojazd", true] spawn HRP_fnc_Notifications;
					_vehicle = veh;
					HRP_Cars pushBack _Vehicle;
					veh setVariable ["Owner", name player, true];
					_vehicle setVariable ["ownerUID", getPlayerUID player, true];
					[_Vehicle, (owner player)] remoteExec ["setOwner", 2];

					playSound "vehiclepurchased";

					_handle = [] call HRP_fnc_setNumberPlate;

					_vehicle setVariable ["PlateID", _handle, true];
					_hit = [_vehicle]call HRP_fnc_vehicleHitGet;


					[typeOf _vehicle, _hit, player, _handle, (player getVariable "playerName")] remoteExecCall ["Server_fnc_insertVehiclePoliceDB", 2];

					//_Vehicle allowDamage true;

					_vehicle lock 2;

					_toDo = ["clearWeaponCargoGlobal _vehicle", "clearBackpackCargoGlobal _vehicle", "clearItemCargoGlobal _vehicle", "clearMagazineCargoGlobal _vehicle"]; // Commands executed to the vehicle
					{
						call compile _x;
					} forEach _toDo;	
				};
				case "Furniture":
				{
					[HRP_ItemPrice] call HRP_fnc_removeCash;
					_count = count (player getVariable "furniture");
					if (_count > 10) exitWith {
				        ["Task Failed", "Nie możesz kupić wiecej niż 10 częsci mebli, spróbuj coś sprzedać!"] spawn HRP_fnc_Notifications;
				    };
				    [_itemID] spawn HRP_fnc_createfurniture;
				};
			};
		} else {
			["Error", "Zbyt mało funduszy.", true] spawn HRP_fnc_Notifications;
		};
	};
};