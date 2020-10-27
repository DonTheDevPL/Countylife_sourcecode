/*
	Author: Ben Harris
	Description: Opens the News App
*/

HRP_fnc_openNewsApp = {
	params["_type", "_page"];

	HRP_News = missionNamespace getVariable "News";

	if (_type) then {
		createDialog "HRP_Phone_newsList";
		ctrlShow [1609, false];
		ctrlShow [7325, false];
	};

	_titles = [9976, 9977, 9978, 9979, 9980, 9981];
	_reporter = [9982, 9983, 9984, 9985, 9986, 9987];
	_buttons = [9989, 9990, 9991, 9992, 9993, 9994];
	_img = [5640, 5639, 5638, 5637, 5636, 5635];

	if !(player getVariable "reporter" > 0) then {
		ctrlShow [6124, false];
	};

	
	{
		ctrlShow [_x, false];
	} foreach _titles;

	{
		ctrlShow [_x, false];
	} foreach _reporter;

	{
		ctrlShow [_x, false];
	} foreach _buttons;

	{
		ctrlShow [_x, false];
	} foreach _img;

	_newsPage = str HRP_News;
	_newsPage = call compile _newsPage;

	_vars = ["","","","","","","",""];

	HRP_onPageNews = [];

	{
		if (count _newsPage < 6) then {
			_newsPage pushBack _x;
		};
		if (count _newsPage > 6 && count _newsPage < 12) then {
			_newsPage pushBack _x;
		};
		if (count _newsPage > 12 && count _newsPage < 18) then {
			_newsPage pushBack _x;
		};
	} forEach _vars;




	switch (_page) do
	{
		case 1:
		{
			HRP_Page1 = [(_newsPage select 0), (_newsPage select 1), (_newsPage select 2), (_newsPage select 3), (_newsPage select 4), _newsPage select 5];
			page = HRP_Page1;
			HRP_Page = 1;
			if (count HRP_News < 6) then {

				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
		};
		case 2:
		{
			HRP_Page2 = [(_newsPage select 6), (_newsPage select 7), (_newsPage select 8), (_newsPage select 9), (_newsPage select 10), (_newsPage select 11)];
			page = HRP_Page2;
			HRP_Page = 2;
		};
		case 3:
		{
			HRP_Page3 = [(_newsPage select 12), (_newsPage select 13), (_newsPage select 14), (_newsPage select 15), (_newsPage select 16), (_newsPage select 17)];
			page = HRP_Page3;
			HRP_Page = 3;
		};
	};

	{
		if (_x in page && count _x > 0) then {
			HRP_onPageNews pushBack _x;
		};
	} foreach page;

	reverse HRP_onPageNews;

	_count = 0;
	{
		if (count _x > 0) then {
			_ID = _titles select _count;
			_ID2 = _reporter select _count;
			_ID3 = _buttons select _count;
			_ID4 = _img select _count;

			ctrlShow [_ID, true];
			ctrlShow [_ID2, true];
			ctrlShow [_ID3, true];
			ctrlShow [_ID4, true];


			ctrlSetText [_ID, (_x select 0)];
			ctrlSetText [_ID2, (_x select 1)];
			_count = _count + 1;

		};
	} foreach HRP_onPageNews;
};
