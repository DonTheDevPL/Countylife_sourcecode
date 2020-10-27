/*
	Author: Ben Harris
	Description: Adds a blueprint to the player
*/

HRP_fnc_addBluePrint = {
	params["_bp"];

	if (isNil "_bp") then {
		_bp = selectRandom HRP_bluePrints;
	};

	player playMove "AinvPknlMstpSnonWnonDnon_medic_1";

	_bluePrints = player getVariable "bluePrints";

	

	closeDialog 0;
	player removeItem "RR_blueprintnotes";

	sleep 3;
	test = _bp select 0;
	test2 = player getVariable "bluePrints";
	if ((_bp select 0) in (player getVariable "bluePrints")) exitWith {
		["Error", "Znasz już ten BluePrint", true] spawn HRP_fnc_Notifications;
	};
	_msg = format ["You just researched a %1 blueprint", (_bp select 1)];
	["Sukces", _msg, true] spawn HRP_fnc_Notifications;

	_bluePrints pushBack (_bp select 0);
	player setVariable ["bluePrints", _bluePrints, true];
};