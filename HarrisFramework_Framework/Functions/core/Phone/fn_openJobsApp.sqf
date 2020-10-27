

/*

	Author: Ben Harris
	Description: Opens the Job App


HRP_Jobs = 
[
	["Worker", 50, "Potato", "HRP_Worker_Approved"],
	["Worker2", 50, "Potato", "HRP_Worker_Approved"],
	["Worker3", 50, "Potato", "HRP_Worker_Approved"],
	["Worker4", 50, "Potato", "HRP_Worker_Approved"],
	["Worker5", 50, "Potato", "HRP_Worker_Approved"],
	["Worker6", 50, "Potato", "HRP_Worker_Approved"],
	["Worker7", 50, "Potato", "HRP_Worker_Approved"],
	["Worker8", 50, "Potato", "HRP_Worker_Approved"]
];

missionNamespace setVariable ["Jobs", HRP_Jobs];
*/
HRP_fnc_openJobsApp = {
	params["_type", "_page"];

	HRP_Jobs = missionNamespace getVariable "Jobs";

	if (_type) then {
		createDialog "HRP_Phone_jobList";
		ctrlShow [1609, false];
		ctrlShow [7325, false];
	};

	_titles = [9976, 9977, 9978, 9979, 9980, 9981];
	_price = [9982, 9983, 9984, 9985, 9986, 9987];
	_buttons = [9989, 9990, 9991, 9992, 9993, 9994];
	_img = [5640, 5639, 5638, 5637, 5636, 5635];



	{
		ctrlShow [_x, false];
	} foreach _titles;

	{
		ctrlShow [_x, false];
	} foreach _price;

	{
		ctrlShow [_x, false];
	} foreach _buttons;

	{
		ctrlShow [_x, false];
	} foreach _img;

	_jobsPage = str HRP_Jobs;
	_jobsPage = call compile _jobsPage;

	_vars = ["","","","","","","",""];

	HRP_onJobsPage = [];

	{
		if (count _jobsPage < 6) then {
			_jobsPage pushBack _x;
		};
		if (count _jobsPage > 6 && count _jobsPage < 12) then {
			_jobsPage pushBack _x;
		};
		if (count _jobsPage > 12 && count _jobsPage < 18) then {
			_jobsPage pushBack _x;
		};
	} forEach _vars;




	switch (_page) do
	{
		case 1:
		{
			HRP_jobsPage1 = [(_jobsPage select 0), (_jobsPage select 1), (_jobsPage select 2), (_jobsPage select 3), (_jobsPage select 4), _jobsPage select 5];
			page = HRP_jobsPage1;
			HRP_jobsPage = 1;

		};
		case 2:
		{
			HRP_jobsPage2 = [(_jobsPage select 6), (_jobsPage select 7), (_jobsPage select 8), (_jobsPage select 9), (_jobsPage select 10), (_jobsPage select 11)];
			page = HRP_jobsPage2;
			HRP_jobsPage = 2;
		};
		case 3:
		{
			HRP_jobsPage3 = [(_jobsPage select 12), (_jobsPage select 13), (_jobsPage select 14), (_jobsPage select 15), (_jobsPage select 16), (_jobsPage select 17)];
			page = HRP_jobsPage3;
			HRP_jobsPage = 3;
		};
	};

	{
		if (_x in page && count _x > 0) then {
			HRP_onJobsPage pushBack _x;
		};
	} foreach page;

	_count = 0;
	{
		if (count _x > 0) then {
			_ID = _titles select _count;
			_ID2 = _price select _count;
			_ID3 = _buttons select _count;
			_ID4 = _img select _count;


			_IDText = format ["$" + "%1", _x select 1];
			ctrlShow [_ID, true];
			ctrlShow [_ID2, true];
			ctrlShow [_ID3, true];
			ctrlShow [_ID4, true];


			ctrlSetText [_ID, (_x select 0)];
			ctrlSetText [_ID2, _IDText];
			_count = _count + 1;

		};
	} foreach HRP_onJobsPage;
};