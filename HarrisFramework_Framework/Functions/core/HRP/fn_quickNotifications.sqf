/*
	Author: Ben Harris
	Description: Notification System for Quick Messages
*/


HRP_fnc_quickNotifications = {
	disableSerialization;
	_title = _this select 0;
	_text = _this select 1;
	_sound = _this select 2;
	_color = _this select 3;
	Life_1 = 11 cutRsc ["SmallNotification","PLAIN"];

	Life_display = uiNameSpace getVariable ["SmallNotification",displayNull];
	smessage1_active = true;
	_Notification = Life_display displayCtrl 38501;
	_Bar = Life_display displayCtrl 38502;
	_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
			
	_pos = ctrlPosition _Notification;
	_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
	_Notification ctrlCommit 1;

	_Bar ctrlSetPosition [(ctrlPosition _Bar) select 0, (ctrlPosition _Bar) select 1, (ctrlPosition _Bar) select 2, ctrlTextHeight _Notification];
	_Bar ctrlCommit 1;
	smessage1_active = false;

	sleep 4.5;
	test = 20;
		_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
		_Notification ctrlCommit 1;
		_Bar ctrlSetPosition [(ctrlPosition _Bar) select 0, (ctrlPosition _Bar select 1) + 0.03, (ctrlPosition _Bar) select 2, ctrlTextHeight _Notification];
		_Bar ctrlCommit 1;
	sleep 0.5;

	while {test > 0} do {
		_pos = ctrlPosition _Notification;
		_Notification ctrlSetPosition [(_pos select 0) - 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
		_Notification ctrlCommit 1;

		_Bar ctrlSetPosition [(ctrlPosition _Bar select 0) - 0.5, (ctrlPosition _Bar) select 1, (ctrlPosition _Bar) select 2, ctrlTextHeight _Notification];
		_Bar ctrlCommit 1;
		test = test - 1;
	};
};