/*
	Author: Ben Harris
	Description: Opens the Crafting Timer
*/

HRP_fnc_openCraftTimer = {
	params["_time", "_item", "_itemType","_displayName", "_bool"];
	player forceWalk true;
	19 cutRsc ["HRP_Progress","PLAIN"];
	_progressUI = uiNamespace getVariable ["HRP_Progress",displayNull];
	_progressBar = _progressUI displayCtrl 1400;
	_itemText = _progressUI displayCtrl 1000;
	_progressBar progressSetPosition 0.01;

	HRP_sleepTime = (_time * 60) / 100;
	_progressPosition = 0;

	_itemText ctrlSetText _displayName;
	while {true} do
	{
		_progressPosition = _progressPosition + 0.01;
		_progressBar progressSetPosition _progressPosition;
		sleep HRP_sleepTime;
		HRP_Time = _progressPosition;

		if (_progressPosition >= 1 && count HRP_craftSchedule > 1) exitWith {

			HRP_craftSchedule deleteAt 0;
			switch (_itemType) do
			{
				case "Weapons":
				{
					player addWeapon _item;
				};
				case "Items":
				{
					player addItem _item;
					HRP_test = _item;
				};
			};
			_item = (HRP_craftSchedule select 0) select 1;
			_time = (HRP_craftSchedule select 0) select 5;
			_itemType = (HRP_craftSchedule select 0) select 4;
			_displayName = (HRP_craftSchedule select 0) select 0;

			[_time, _item, _itemType, _displayName] spawn HRP_fnc_openCraftTimer;

			19 cutText ["","PLAIN"];
		};
		if (_progressPosition >= 1) exitWith {
			HRP_craftSchedule deleteAt 0;
			["Sukces", "Wytworzyłeś Przedmioty.", true] spawn HRP_fnc_Notifications;
			switch (_itemType) do
			{
				case "Rifles":
				{
					if !(_bool) then {
						player addWeapon _item;
					} else {
						player addMagazine _item;
					};
				};
				case "Pistols":
				{
					if !(_bool) then {
						player addWeapon _item;
					} else {
						player addMagazine _item;
					};
				};
				case "Items":
				{
					player addItem _item;
					HRP_test = _item;
				};
			};
			19 cutText ["","PLAIN"];
			player forceWalk false;
		};
	};
};