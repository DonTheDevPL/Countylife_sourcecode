/*
	Author: Ben Harris
	Description: Reopens the phone if you're calling someone
*/

HRP_fnc_openPhoneInCalling = {
	if (!isNull (findDisplay 5038)) exitWith {};
	createDialog "HRP_Phone_Dialing";
	_callerID = HRP_Caller getVariable "yourNumber";
	_contacts = player getVariable "contactList";
	{
		if ((_x select 0) isEqualTo _callerID) then {
			ctrlSetText [2131, (_x select 1)];
			_bool = true;
		};
	} forEach _contacts;
	if (_callerID isEqualTo "Anonymous Caller ID") then {
		ctrlSetText [2134, HRP_callerID];
	} else {
		_number = [_callerID] call HRP_fnc_phoneNumberText;
		ctrlSetText [2134, _number];
	};
};