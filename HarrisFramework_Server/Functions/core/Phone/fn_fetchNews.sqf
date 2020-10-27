/*
	Author: Ben Harris
	Description: Fetches News

*/

	_fetchstr = format ["fetchNews"];
	_fetch = [0, _fetchstr] call ExternalS_fnc_ExtDBquery;
	HRP_News = [];
	{
		_x deleteAt 0;
		HRP_News pushBack _x;
	} forEach _fetch;
	missionNamespace setVariable ["news", HRP_News, true];