/*
	Author: Ben Harris
	Description: Police DB - Lists Prison Inmates
*/

HRP_fnc_listInmates = {
	params["_type","_page"];

	 if (_type) then {
		createDialog "HRP_PoliceDB_correctionsDB";
		ctrlShow [1600, false];
		ctrlShow [1601, false];
	};

	_buttons = [1602,1603,1604,1605,1606,1607,1608,1609];
	_img = [1201,1202,1203,1204,1205,1206,1207,1208];
	_prisonerNumber = [1400,1401,1402,1403,1404,1405,1406,1407];
	_names = [1408,1409,1410,1411,1412,1413,1414,1415];
	_cellNumbers = [1416,1417,1418,1419,1420,1421,1422,1423];
	_vars = ["", "", "", "", "", "", "", ""];


	HRP_prisonerList = [];
	HRP_prisonersVar = [];

	HRP_Prisoners = [];
	{
		if (_x getVariable "arrestTime" > 0) then {
			HRP_Prisoners pushBack _x;
		};
	} forEach allPlayers;

	_prisonerCount = count HRP_Prisoners;
	ctrlSetText [1000, (str _prisonerCount)];
	ctrlSetText [1001, str (count HRP_cellNumbers - _prisonerCount)];
	{
		HRP_prisonersVar pushBack _x
	} foreach HRP_Prisoners;
	{
		if (count HRP_prisonersVar < 8) then {
			HRP_prisonersVar pushBack _x;
		};
		if (count HRP_prisonersVar > 8 && count HRP_prisonersVar < 16) then {
			HRP_prisonersVar pushBack _x;
		};
		if (count HRP_prisonersVar > 16 && count HRP_prisonersVar < 24) then {
			HRP_prisonersVar pushBack _x;
		};
	} forEach _vars;
	
	if (count HRP_Prisoners < 6) then {
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
	} foreach _prisonerNumber;

	{
		ctrlShow [_x, false];
	} foreach _names;

	{
		ctrlShow [_x, false];
	} foreach _cellNumbers;

	if (isNil "_page") then {
		_page = HRP_prisonersPage;
	};
	switch (_page) do
	{
		case 1:
		{
			HRP_prisonersPage1 = [(HRP_prisonersVar select 0), (HRP_prisonersVar select 1), (HRP_prisonersVar select 2), (HRP_prisonersVar select 3), (HRP_prisonersVar select 4), (HRP_prisonersVar select 5), (HRP_prisonersVar select 6), (HRP_prisonersVar select 7)];
			page = HRP_prisonersPage1;
			HRP_prisonersPage = 1;

		};
		case 2:
		{
			HRP_prisonersPage2 = [(HRP_prisonersVar select 8), (HRP_prisonersVar select 9), (HRP_prisonersVar select 10), (HRP_prisonersVar select 11), (HRP_prisonersVar select 12), (HRP_prisonersVar select 13), (HRP_prisonersVar select 14),(HRP_prisonersVar select 15)];
			page = HRP_prisonersPage2;
			HRP_prisonersPage = 2;
		};
		case 3:
		{
			HRP_prisonersPage3 = [(HRP_prisonersVar select 16), (HRP_prisonersVar select 17), (HRP_prisonersVar select 18), (HRP_prisonersVar select 19), (HRP_prisonersVar select 20), (HRP_prisonersVar select 21), (HRP_prisonersVar select 22),(HRP_prisonersVar select 23)];
			page = HRP_prisonersPage3;
			HRP_prisonersPage = 3;
		};
	};

	{
		if (_x in page && !(str _x == "")) then {
			HRP_prisonerList pushBack _x;
		};
	} foreach HRP_prisonersVar;

	HRP_count = 0;
	HRP_prisonerDetails = [];

	{
	 if !(str _x == """""") then {
			ID = _buttons select HRP_count;
			ID2 = _img select HRP_count;
			ID3 = _prisonerNumber select HRP_count;
			ID4 = _names select HRP_count;
			ID5 = _cellNumbers select HRP_count;
			
			ctrlShow [ID, true];
			ctrlShow [ID2, true];
			ctrlShow [ID3, true];
			ctrlShow [ID4, true];
			ctrlShow [ID5, true];

			if (HRP_prisonersPage == 1) then {
				HRP_prisonerCount = str (HRP_Count + 1);
			} else {
				HRP_prisonerCount = str (HRP_Count + ((HRP_prisonersPage - 1) * 8) + 1)
			};
			ctrlSetText [ID3, HRP_prisonerCount];
			ctrlSetText [ID4, (_x getVariable "playerName")];
			ctrlSetText [ID5, str (_x getVariable "assignedCell")];
			HRP_prisonerDetails pushBack _x;


			HRP_count = HRP_count + 1;
		};
	} forEach HRP_prisonerList;

	if (count HRP_Prisoners > 8 && HRP_prisonersPage == 1) then {
		ctrlShow [1600, true];
	};
};