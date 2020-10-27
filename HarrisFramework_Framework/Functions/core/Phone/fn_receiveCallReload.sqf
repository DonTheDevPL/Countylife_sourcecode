/*
	Opens phone if you are receiving a call
*/

HRP_fnc_receiveCallReload = {
	if (!isNull (findDisplay 5031)) exitWith {};
	createDialog "HRP_Phone_receiveCall";
	HRP_receivingCall = true;

	_contacts = player getVariable "contactList";
	{
		if ((_x select 0) isEqualTo HRP_callerID) then {
			ctrlSetText [2131, (_x select 1)];
		};
	} forEach _contacts;

	if (HRP_callerID isEqualTo "Anonymous Caller ID") then {
		ctrlSetText [2134, HRP_callerID];
	} else {
		_number = [HRP_callerID] call HRP_fnc_phoneNumberText;
		ctrlSetText [2134, _number];
	};
};