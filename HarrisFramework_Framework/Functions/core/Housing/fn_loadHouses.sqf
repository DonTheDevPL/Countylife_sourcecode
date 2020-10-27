/*
	Author: Ben Harris
	Description: Initialises and Loads the Houses after data retrieval from the DB
*/

HRP_fnc_LoadHouses = {
	params["_houses"];
	{
		_array = _x;
		HRP_Array = _array;
		_positionstr = _array select 2; 
		_uid = _array select 1;
		_name = _array select 3;

		HRP_house = nearestObjects [_positionstr,["building"], 10];

		{
			if ((typeOf _x) in HRP_houseArray) then {
				HRP_house2 = _x;
				HRP_house = nil;
			};
		} forEach HRP_House;

		HRP_house2 setVariable ["Purchased", true, true];
		HRP_house2 setVariable ["OwnerUID", _uid, true];
		HRP_house2 setVariable ["Owner", _name, true];

		_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf HRP_house2) >> "numberOfDoors");
		
		if (isNil 'HRP_house2 getVariable "locked"') then {
			for "_i" from 1 to _doors do {
				HRP_house2 animate[format["door_%1_rot",_i],0];
				HRP_house2 setVariable[format["bis_disabled_Door_%1",_i],1,true];
			};

			HRP_house2 setVariable["locked",true,true];

			{
				if (typeOf HRP_House == _x select 0) then {
					HRP_House setVariable ["houseRadius", _x select 2, true];
				}
			} forEach HRP_housePriceArray;
		};



		[HRP_Array] remoteExecCall ["HRP_fnc_MP", 0];
	} foreach _houses;
};
