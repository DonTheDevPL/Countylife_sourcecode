/*
	Author: Ben Harris
	Description: Opens the Interaction Menu
*/
HRP_fnc_openInteraction = {
	params["_bool"];
	if (_bool) then {
		createDialog "HRP_radialMenu";
	};

	HRP_intPage = 1;

	_textDisplay = [1001,1002,1003,1004,1005,1006,1007,1008];
	_images = [1199,1201,1202,1203,1204,1205,1206,1207];
	{
		((findDisplay 5055) displayCtrl _x) ctrlSetTextColor [1,1,1,0.75];
	} forEach _images;

	[] spawn
	{
			waitUntil {!isNull (findDisplay 5055)};
			((findDisplay 5055) displayCtrl 69028) ctrlSetEventHandler ["MouseEnter", "[0, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1603) ctrlSetEventHandler ["MouseEnter", "[1, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1604) ctrlSetEventHandler ["MouseEnter", "[2, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1605) ctrlSetEventHandler ["MouseEnter", "[3, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1606) ctrlSetEventHandler ["MouseEnter", "[4, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1607) ctrlSetEventHandler ["MouseEnter", "[5, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1600) ctrlSetEventHandler ["MouseEnter", "[6, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1601) ctrlSetEventHandler ["MouseEnter", "[7, 1] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 69028) ctrlSetEventHandler ["MouseExit", "[0, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1603) ctrlSetEventHandler ["MouseExit", "[1, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1604) ctrlSetEventHandler ["MouseExit", "[2, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1605) ctrlSetEventHandler ["MouseExit", "[3, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1606) ctrlSetEventHandler ["MouseExit", "[4, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1607) ctrlSetEventHandler ["MouseExit", "[5, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1600) ctrlSetEventHandler ["MouseExit", "[6, 2] call HRP_fnc_colorRadial"];
			((findDisplay 5055) displayCtrl 1601) ctrlSetEventHandler ["MouseExit", "[7, 2] call HRP_fnc_colorRadial"];
	};

	/*
	{
		ctrlShow [_x, false];
	}forEach HRP_InteractionButtons;
	*/

	{
		ctrlShow [_x, false];
	}forEach _textDisplay;


	HRP_iCurActionArray = [];
	HRP_actionToPush = [];
	HRP_secondPage = [];
	HRP_pageCount = 0;
	bool2 = false;
	HRP_nextPageAlive = false;
	{

		_cArray = _x select 0;
		_countC = (count _cArray) - 1;
		_cTrue = true;
		
		for "_i" from 0 to _countC step 1 do 
		{
			_c = call compile (_cArray select _i);
			if (!_c) then 
			{
				_cTrue = false;
			};
			
		};
		
		if (_cTrue) then 
		{
			HRP_pageCount = HRP_pageCount + 1;
		};
	
	} forEach HRP_InteractionMenuConfig;

	{

		_cArray = _x select 0;
		_countC = (count _cArray) - 1;
		_cTrue = true;
		
		for "_i" from 0 to _countC step 1 do 
		{
			_c = call compile (_cArray select _i);
			if (!_c) then 
			{
				_cTrue = false;
			};
			
		};
		
		if (HRP_pageCount > 8 && (count HRP_actionToPush) == 7 && !(bool2)) then {

			bool2 = true;
			_toPush =
			 [
				["alive player"],
				["Next Page", "[] call HRP_fnc_openInteractionSecondPage"]
			];
			HRP_actionToPush pushBack _toPush;
			_toPush2 =
			 [
				["alive player"],
				["Last Page", "[false] call HRP_fnc_openInteraction"]
			];
			HRP_secondPage pushBack _toPush2;
			HRP_nextPageAlive = true;

		};

		if (_cTrue && !(HRP_nextPageAlive)) then 
		{
			HRP_actionToPush pushBack _x;
		};
	
		if (_ctrue && HRP_nextPageAlive) then {
			HRP_secondPage pushBack _x;
		};
	
	}forEach HRP_InteractionMenuConfig;

	_count = 0;
	{
		if (_count < (count HRP_InteractionButtons)) then {
			_idc = HRP_InteractionButtons select _count;
			_idc2 = _textDisplay select _count;
			_text = (_x select 1) select 0;
			_action = (_x select 1) select 1;
				
			ctrlShow [_idc, true];
			ctrlShow [_idc2, true];
			ctrlSetText [_idc2, _text];

			HRP_iCurActionArray pushBack _action;

		};
		_count = _count + 1;
	} forEach HRP_actionToPush;

};
