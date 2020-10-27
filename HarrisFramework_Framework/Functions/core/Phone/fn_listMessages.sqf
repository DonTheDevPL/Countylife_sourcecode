/*
	Author: Ben Harris
	Description: Lists the Message in the Recent Messages Section
*/

HRP_fnc_listMessages = {
	params["_type","_page"];

	 if (_type) then {
		createDialog "HRP_Phone_SMSList";
		ctrlShow [1609, false];
		ctrlShow [7325, false];
	};

	_buttons = [1600,1601,1602,1603,1604];
	_img = [2938,2939,2940,2941,2942];
	_vars = ["", "", "", "", "", ""];
	HRP_messageList = [];
	HRP_messagesVar = [];
	{
		HRP_messagesVar pushBack _x
	} foreach HRP_Messages;
	reverse HRP_messagesVar;
	{
		if (count HRP_messagesVar < 6) then {
			HRP_messagesVar pushBack _x;
		};
		if (count HRP_messagesVar > 6 && count HRP_messagesVar < 12) then {
			HRP_messagesVar pushBack _x;
		};
		if (count HRP_messagesVar > 11 && count HRP_messagesVar < 16) then {
			HRP_messagesVar pushBack _x;
		};
	} forEach _vars;
	
	if (count HRP_Messages < 6) then {
		ctrlShow [1610, false];
		ctrlShow [7324, false];
	};

	{
		ctrlShow [_x, false];
	} foreach _buttons;

	{
		ctrlShow [_x, false];
	} foreach _img;

	if (isNil "_page") then {
		_page = HRP_messagesPage;
	};
	switch (_page) do
	{
		case 1:
		{
			HRP_messagesPage1 = [(HRP_messagesVar select 0), (HRP_messagesVar select 1), (HRP_messagesVar select 2), (HRP_messagesVar select 3), (HRP_messagesVar select 4)];
			page = HRP_messagesPage1;
			HRP_messagesPage = 1;

		};
		case 2:
		{
			HRP_messagesPage2 = [(HRP_messagesVar select 5), (HRP_messagesVar select 6), (HRP_messagesVar select 7), (HRP_messagesVar select 8), (HRP_messagesVar select 9)];
			page = HRP_messagesPage2;
			HRP_messagesPage = 2;
		};
		case 3:
		{
			HRP_messagesPage3 = [(HRP_messagesVar select 10), (HRP_messagesVar select 11), (HRP_messagesVar select 12), (HRP_messagesVar select 13), (HRP_messagesVar select 14)];
			page = HRP_messagesPage3;
			HRP_messagesPage = 3;
		};
	};

	{
		if (_x in page && count _x > 0) then {
			HRP_messageList pushBack _x;
		};
	} foreach HRP_messagesVar;

	HRP_count = 0;
	HRP_readMessages = [];

	{
	 if (count _x > 0) then {
			ID = _buttons select HRP_count;
			ID2 = _img select HRP_count;
			
			ctrlShow [ID, true];
			ctrlShow [ID2, true];

			_caller = _x select 1;
			_callerID = _x select 1;
			{
				if (_x select 0 isEqualTo _caller) then {
					_caller = _x select 1;
				};
			} foreach HRP_Messages;

			ctrlSetText [ID, _caller];
			_toRead = [_caller, _x select 0, _callerID];
			HRP_readMessages pushBack _toRead;


			HRP_count = HRP_count + 1;
		};
	} forEach HRP_messageList;
};