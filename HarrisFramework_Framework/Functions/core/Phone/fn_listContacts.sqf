/*
	Author: Ben Harris
	Description: Lists Contacts
*/
HRP_fnc_listContacts = {
	params["_type", "_page"];

	if (_type == 1) then {
		createDialog "HRP_Phone_contactList";
		ctrlShow [1609, false];
		ctrlShow [7325, false];
	};
	_buttons = [2322,2323,2324,2325,2326,2327];
	_img = [2939,2940,2941,2942,2943,2944];
	_buttons2 = [1624,1625,1626,1627,1628,1629];
	_textBoxes = [7778,7779,7780,7781,7782,7783];

	_vars = ["","","","","",""];

	_yourNumber = player getVariable "yourNumber";
	HRP_Contacts = player getVariable "contactList";

	_yourNumber = [_yourNumber] call HRP_fnc_phoneNumberText;

	ctrlSetText [7777, "\n" + _yourNumber];

	HRP_contactsList = [];
	HRP_contactsVar = str (HRP_Contacts);
	HRP_contactsVar = call compile HRP_contactsVar;

	{
		if (count HRP_contactsVar < 6) then {
			HRP_contactsVar pushBack _x;
		};
		if (count HRP_contactsVar > 6 && count HRP_contactsVar < 12) then {
			HRP_contactsVar pushBack _x;
		};
		if (count HRP_contactsVar > 12 && count HRP_contactsVar < 18) then {
			HRP_contactsVar pushBack _x;
		};
	} forEach _vars;

	if (count HRP_Contacts < 7) then {
		ctrlShow [1610, false];
		ctrlShow [7324, false];
	};

	{
		ctrlShow [_x, false];
	} foreach _buttons;

	{
		ctrlShow [_x, false];
	} foreach _img;

	{
		ctrlShow [_x, false];
	} foreach _buttons2;

	{
		ctrlShow [_x, false];
	} foreach _textBoxes;

	if (isNil "_page") then {
		_page = HRP_contactsPage;
	};
	switch (_page) do
	{
		case 1:
		{
			HRP_contactsPage1 = [(HRP_contactsVar select 0), (HRP_contactsVar select 1), (HRP_contactsVar select 2), (HRP_contactsVar select 3), (HRP_contactsVar select 4), HRP_contactsVar select 5];
			page = HRP_contactsPage1;
			HRP_contactsPage = 1;

		};
		case 2:
		{
			HRP_contactsPage2 = [(HRP_contactsVar select 6), (HRP_contactsVar select 7), (HRP_contactsVar select 8), (HRP_contactsVar select 9), (HRP_contactsVar select 10), (HRP_contactsVar select 11)];
			page = HRP_contactsPage2;
			HRP_contactsPage = 2;
		};
		case 3:
		{
			HRP_contactsPage3 = [(HRP_contactsVar select 12), (HRP_contactsVar select 13), (HRP_contactsVar select 14), (HRP_contactsVar select 15), (HRP_contactsVar select 16), (HRP_contactsVar select 17)];
			page = HRP_contactsPage3;
			HRP_contactsPage = 3;
		};
	};

	{
		if (_x in page && count _x > 0) then {
			HRP_contactsList pushBack _x;
		};
	} foreach HRP_contactsVar;

	_count = 0;
	HRP_contactDetails = [];
	{
		if (count _x > 0) then {
			_ID = _buttons select _count;
			_ID2 = _img select _count;
			_ID3 = _buttons2 select _count;
			_ID4 = _textBoxes select _count;

			ctrlShow [_ID, true];
			ctrlShow [_ID2, true];
			ctrlShow [_ID3, true];
			ctrlShow [_ID4, true];


			_name = _x select 1;
			_number1 = (_x select 0) select [0,1];
			_number2 = (_x select 0) select [1,3];
			_number3 = (_x select 0) select [4,3];
			_number4 = (_x select 0) select [7,3];

			_number = _number1 + " " + _number2 + " " + _number3 + " " + _number4;
			ctrlSetText [_ID4, _name + "\n" + _number];
			_count = _count + 1;

		};
	} foreach HRP_contactsList;
};