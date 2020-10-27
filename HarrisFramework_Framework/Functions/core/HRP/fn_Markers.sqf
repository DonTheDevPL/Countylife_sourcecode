HRP_fnc_Markers = {
	_markers = [];
	_cops = [];

	uiSleep 0.25;
	if(visibleMap AND "ItemGPS" in assignedItems player) then {
		{
			if(_x getVariable "cop" > 0 || _x getVariable "ems" > 0) then {_cops pushBack _x;};
		}forEach playableUnits;
		//Create markers
		{
			if ("ItemGPS" in assignedItems _x) then {
				_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
				if(_x getVariable "cop" > 0) then {
					_marker setMarkerColorLocal "ColorBlue";
				} else {
					_marker setMarkerColorLocal "ColorGreen";
				};
				_identity = _x getVariable "identity";
				_first = _identity select 0;
				_second = _identity select 1;
				_marker setMarkerTypeLocal "Mil_dot";
				_marker setMarkerTextLocal format["%1 %2", _first, _second];
				_markers pushBack [_marker,_x];
			};
		} foreach _cops;
			
		while {visibleMap || visibleGPS} do
		{
			{
				private["_marker","_unit"];
				_marker = _x select 0;
				_unit = _x select 1;
				
				if(!isNil "_unit") then
				{
					if(!isNull _unit) then
					{
						if ("ItemGPS" in assignedItems _unit) then
						{
							_marker setMarkerPosLocal (visiblePosition _unit);
						};
					};
				};
				
			} foreach _markers;
			if(!visibleMap) exitWith {};
			uiSleep 0.05;
		};

		{deleteMarkerLocal (_x select 0);} foreach _markers;
	};
};