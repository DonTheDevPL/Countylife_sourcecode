/*
	Author: Ben Harris
	Description: Receives the Text, checks if it's sent to you, then displays.
*/

HRP_fnc_receiveText = {
	params["_message", "_callerID"];
		HRP_Messages pushBack _message;
		_callerID = [_callerID] call HRP_fnc_phoneNumberText;
		systemChat format ["You received a new SMS from %1", _callerID];
		playSound "message1_tone";
};

// Debug // playSound (player getVariable "ringTone"); -- To Add
