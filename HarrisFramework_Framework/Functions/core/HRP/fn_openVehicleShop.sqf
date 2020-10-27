/*
	Author: Ben Harris
	Description:initalises the Vehicle Store
*/

HRP_fnc_OpenVehicleShop = {
	params["_target"];
	disableSerialization;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_target getVariable ["vipShop", 0] > _viplevel) exitWith {
		["Error", "Nie posiadasz wymaganego poziomu VIP", true] spawn HRP_fnc_Notifications;
	};
	
	HRP_activeLocalCars = [];
	_shop = _target getVariable "HRP_Vehicle_Shop";

	_define = _target getVariable "previewLocation";

	if (isNil "_define") then {
		types = "main";
	} else {
		types = _define;
	};

	{
		if (types isEqualTo (_x select 0)) then {
			HRP_vehPos = _x select 1;
			HRP_toCamPos = _x select 2;
		};
	} forEach HRP_fnc_vehiclePreviewLocations;

	HRP_vehicleSpawn = _shop;
	_finalShop = call compile _shop;
	createDialog "Harris_vehicleShop_Dialog";
	waituntil {!isNull (findDisplay 5003);};
	_crtl = (findDisplay 5003) displayCtrl 1500;

	if (types isEqualTo "furniture") then {
		ctrlSetText [1200, "HarrisFramework_Client2\icons\furnitureShop.paa"];
	};

	_veh = call compile ((_finalShop select 0) select 1) select 0;
	VehShop = _veh createVehicleLocal [0,0,0];  
	VehShop allowDamage false;
	VehShop setdir 90;  
	VehShop setPosATL HRP_vehPos;

	veh_cam  = "CAMERA" camCreate (getPos player);  
	showCinemaBorder true;   
	veh_cam cameraEffect ["EXTERNAL", "BACK"];                             
	veh_cam camSetPos HRP_toCamPos;  
	veh_cam camSetFOV 0.85;  
	veh_cam camSettarget VehShop;

	veh_cam camCommit 0;

	if(isNil "VShop_Open") then { VShop_Open = true; };
	VShop_Open = true;

	[] spawn HRP_fnc_charMoveV;
	[] spawn HRP_fnc_exitLoopV;
	{
	if !(isNil (_x select 0)) then {
		_index = lbAdd [ 1500, ( _x select 0 ) ]; 
	} else{
		_name = getText(configFile >> "CfgVehicles" >> ((call compile (_x select 1)) select 0) >> "displayName");
		_index = lbAdd [ 1500, _name ]; 
	};
	lbSetData [ 1500, _index, ( _x select 1 )];
	} forEach _finalShop;

	lbSetCurSel [1500, 0];

	waituntil {isNull (findDisplay 5003)};

	{
		if !(isNull _x) then {
			deleteVehicle _x;
		};
	}  forEach HRP_activeLocalCars;

	HRP_activeLocalCars = nil;

};