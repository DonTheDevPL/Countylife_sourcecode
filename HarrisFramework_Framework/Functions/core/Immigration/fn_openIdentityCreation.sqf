/*
	Author: Ben Harris
	Description: Opens the 'Identity Creation' page 
*/

HRP_fnc_openIdentityCreation = {

	createDialog "HRP_immigrationPapersCreate";
	{
		_index = lbAdd [2101, _x];
		lbSetData [2101, _index, _x];
	} forEach HRP_Eyes;

	ctrlSetText [1407, getPlayerUID player];

	if (HRP_firstTime) then {
		ctrlSetText [1408, "$2000"];
	} else {
		ctrlSetText [1408, "$" + str (player getVariable "bank")];
	};

	if (HRP_firstTime) then {
		HRP_vehicle = getText(configFile >> "CfgVehicles" >> HRP_startCar >> "displayName");
	} else {
		_vehicles = player getVariable "garageVehicles";

		if (_vehicles isEqualTo []) then {
			HRP_vehicle = "None";
		} else {
			HRP_vehicle = "";
			{
				_id = getText(configFile >> "CfgVehicles" >> _x select 1 >> "displayName");
				if (count HRP_vehicle < 1) then {
					HRP_vehicle = HRP_vehicle + _id; 
				} else
				{
					HRP_vehicle = HRP_vehicle + ", " + _id;
				};	
			} forEach _vehicles;
		};


		
	};
	ctrlSetText [1409, HRP_vehicle]; 

	(findDisplay 5042) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];
};	
