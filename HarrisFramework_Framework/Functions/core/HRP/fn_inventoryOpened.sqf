/*
	Author: Ben Harris
	Description: Inventory Opened Eventhandler
*/

HRP_fnc_inventoryOpened = {
	params["_unit", "_crate"];

	if(count _this == 1) exitWith {false};

	handle = false;

	if(_crate isKindOf "Man" && !alive _crate) exitWith {
		["Error", "Nie możesz zbierać trupów.", false] spawn HRP_fnc_Notifications;
		handle = true;
		handle;
	};

	if (player getVariable "cuffed") exitWith {
			handle = true;
			handle;
	};
	
	if(_crate isKindOf "LandVehicle" || _crate isKindOf "Ship" || _crate isKindOf "Air") exitWith {
		if(!(_crate in HRP_Cars) && {(locked _crate) == 2}) exitWith {
			["Error","Pojazd jest zamknięty", false] spawn HRP_fnc_Notifications;
			handle = true;
			handle;
		};
	};

	_backpack = getNumber(configFile >> "CfgVehicles" >> (typeOf _crate) >> "isBackpack");
	if(_backpack == 1) exitWith {
		handle = true;
		handle;
	};

	[] spawn
	{
			waitUntil {!isNull (findDisplay 602)};

			((findDisplay 602) displayCtrl 638) ctrlSetEventHandler ["LBDblClick", "[638 ,_this select 1] call HRP_fnc_useItemPhysical;"];  
			((findDisplay 602) displayCtrl 633) ctrlSetEventHandler ["LBDblClick", "[633 ,_this select 1] call HRP_fnc_useItemPhysical;"];  
			((findDisplay 602) displayCtrl 640) ctrlSetEventHandler ["LBDblClick", "[640 ,_this select 1] call HRP_fnc_useItemPhysical;"];  
			((findDisplay 602) displayCtrl 619) ctrlSetEventHandler ["LBDblClick", "[619 ,_this select 1] call HRP_fnc_useItemPhysical;"];
	};

	[] spawn
	{
		waituntil {!(isnull (finddisplay 602)) || handle };
		if(!handle) then {
			while {true} do
			{
				if(!isNull (findDisplay 49)) exitwith {
					closedialog 0;
					sleep 0.25;
					closedialog 0;
				};
				if(!isNull (findDisplay 602)) exitwith {
				};
				sleep 0.05;
			};
		};
	};
};

