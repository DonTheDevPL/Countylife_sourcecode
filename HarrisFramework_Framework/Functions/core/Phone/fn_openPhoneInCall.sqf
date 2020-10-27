/*
	Author: Ben Harris
	Description: Opens the phone if you are in a call
*/

HRP_fnc_openPhoneInCall = {
if (!isNull (findDisplay 5040)) exitWith {};
	createDialog "HRP_Phone_inCall";

	_contacts = player getVariable "contactList";
	{
		if ((_x select 0) isEqualTo HRP_CallerID) then {
			ctrlSetText [2131, (_x select 1)];
			_bool = true;
		};
	} forEach _contacts;

	if (HRP_callerID isEqualTo "Anonymous Caller ID") then {
		ctrlSetText [2134, HRP_callerID];
	} else {
		_number = [HRP_callerID] call HRP_fnc_phoneNumberText;
		ctrlSetText [2134, _number];
	};
};