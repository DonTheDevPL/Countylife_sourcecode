/*
	Author: Ben Harris
	Description: Notification System
*/

HRP_fnc_Notifications = {
disableSerialization;
_title = _this select 0;
_text = _this select 1;
_sound = _this select 2;
_color = _this select 3;

	if(!message1_active) exitwith {
		if(_sound) then { player say "hint"; };
		5 cutRsc ["HarrisNotification","PLAIN"];
		_display = uiNameSpace getVariable ["HarrisNotification",displayNull];
		message1_active = true;
		_Notification = _display displayCtrl 38501;
		_Bar2 = _display displayCtrl 38502;
		_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
		_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0, (ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
		_Notification ctrlCommit 1;
		_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
		_Bar2 ctrlCommit 1;

		sleep 5;
		_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
		_Notification ctrlCommit 1;
		_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2 select 1) + 0.03, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
		_Bar2 ctrlCommit 1;
		sleep 0.5;
		_messsage1 = 20;
		while {_messsage1 > 0} do {
			_pos = ctrlPosition _Notification;
			_Notification ctrlSetPosition [(_pos select 0) + 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;

			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2 select 0) + 0.5, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;
			_messsage1 = _messsage1 - 1;
		};
		message1_active = false;
		};



		if(!message2_active) exitwith {
			if(_sound) then { player say "hint"; };
			6 cutRsc ["HarrisNotification2","PLAIN"];
			_display2 = uiNameSpace getVariable ["HarrisNotification2",displayNull];
			message2_active = true;
			_Notification = _display2 displayCtrl 38503;
			_Bar2 = _display2 displayCtrl 38504;
			_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0, (ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;

			sleep 5;
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2 select 1) + 0.03, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;
			sleep 0.5;
			_messsage2 = 20;
			while {_messsage2 > 0} do {
				_pos = ctrlPosition _Notification;
				_Notification ctrlSetPosition [(_pos select 0) + 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
				_Notification ctrlCommit 1;

				_Bar2 ctrlSetPosition [(ctrlPosition _Bar2 select 0) + 0.5, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
				_Bar2 ctrlCommit 1;
				_messsage2 = _messsage2 - 1;
			};
			message2_active = false;
		};

		if(!message3_active) exitwith {
			if(_sound) then { player say "hint"; };
			8 cutRsc ["HarrisNotification3","PLAIN"];
			_display2 = uiNameSpace getVariable ["HarrisNotification3",displayNull];
			message3_active = true;
			_Notification = _display2 displayCtrl 38505;
			_Bar2 = _display2 displayCtrl 38506;
			_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0, (ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;

			sleep 5;
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2 select 1) + 0.03, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;
			sleep 0.5;
			_messsage3 = 20;
			while {_messsage3 > 0} do {
				_pos = ctrlPosition _Notification;
				_Notification ctrlSetPosition [(_pos select 0) + 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
				_Notification ctrlCommit 1;

				_Bar2 ctrlSetPosition [(ctrlPosition _Bar2 select 0) + 0.5, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
				_Bar2 ctrlCommit 1;
				_messsage3 = _messsage3 - 1;
			};
			message3_active = false;
		};

		if(!message4_active) exitwith {
			if(_sound) then { player say "hint"; };
			8 cutRsc ["HarrisNotification4","PLAIN"];
			_display2 = uiNameSpace getVariable ["HarrisNotification4",displayNull];
			message4_active = true;
			_Notification = _display2 displayCtrl 38507;
			_Bar2 = _display2 displayCtrl 38508;
			_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0, (ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;

			sleep 5;
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2 select 1) + 0.03, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;
			sleep 0.5;
			_messsage4 = 20;
			while {_messsage4 > 0} do {
				_pos = ctrlPosition _Notification;
				_Notification ctrlSetPosition [(_pos select 0) + 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
				_Notification ctrlCommit 1;

				_Bar2 ctrlSetPosition [(ctrlPosition _Bar2 select 0) + 0.5, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
				_Bar2 ctrlCommit 1;
				_messsage4 = _messsage4 - 1;
			};
			message4_active = false;
		};

		if(!message5_active) exitwith {
			if(_sound) then { player say "hint"; };
			9 cutRsc ["HarrisNotification5","PLAIN"];
			_display2 = uiNameSpace getVariable ["HarrisNotification5",displayNull];
			message5_active = true;
			_Notification = _display2 displayCtrl 38509;
			_Bar2 = _display2 displayCtrl 38510;
			_Notification ctrlSetStructuredText parseText format ["<t size='0.8' font='PuristaBold'>%1</t><br/><t size='0.8' font='PuristaLight' color='#c4c4c4'>%2</t>", _title, _text];
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0, (ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;

			sleep 5;
			_Notification ctrlSetPosition [(ctrlPosition _Notification) select 0,(ctrlPosition _Notification select 1) + 0.03, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
			_Notification ctrlCommit 1;
			_Bar2 ctrlSetPosition [(ctrlPosition _Bar2) select 0, (ctrlPosition _Bar2 select 1) + 0.03, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
			_Bar2 ctrlCommit 1;
			sleep 0.5;
			_messsage5 = 20;
			while {_messsage5 > 0} do {
				_pos = ctrlPosition _Notification;
				_Notification ctrlSetPosition [(_pos select 0) + 0.5,(ctrlPosition _Notification) select 1, (ctrlPosition _Notification) select 2, ctrlTextHeight _Notification];
				_Notification ctrlCommit 1;

				_Bar2 ctrlSetPosition [(ctrlPosition _Bar2 select 0) + 0.5, (ctrlPosition _Bar2) select 1, (ctrlPosition _Bar2) select 2, ctrlTextHeight _Notification];
				_Bar2 ctrlCommit 1;
				_messsage5 = _messsage5 - 1;
			};
			message5_active = false;
		};
};