/*
	Author: Ben Harris
	Description: Processes an Item
*/

HRP_fnc_doProcessing = {
	params["_id","_time", "_unit", "_name"];

	_toSleep = _time / 100;

	19 cutRsc ["HRP_Progress","PLAIN"];
	_progressUI = uiNamespace getVariable ["HRP_Progress",displayNull];
	_progressBar = _progressUI displayCtrl 1400;
	_itemText = _progressUI displayCtrl 1000;
	_progressBar progressSetPosition 0.01;
	_progressPosition = 0.01;

	_itemText ctrlSetText _name;

	for "_i" from 0 to _time step _toSleep do {	
		_progressPosition = _progressPosition + 0.01;
		_progressBar progressSetPosition _progressPosition;
		sleep _toSleep;
	};

	19 cutText ["", "PLAIN"];

	_unit setVariable ["processedItems", _id, true];
};
