/*
	Author: Ben Harris
	Description: Adds the News
*/
HRP_fnc_addNews = {
	_title = ctrlText 1400;
	_desc = ctrlText 1401;
	_name = ctrlText 1402;

	_news = [_title, _name, _desc, false];
	_newsToDisplay = [_title, _desc, _name, false];

	_newsCurrent = missionNamespace getVariable "news";

	_newsCurrent pushBack _newsToDisplay;

	missionNamespace setVariable ["news", _newsCurrent, true];

	[_news] remoteExecCall ["Server_fnc_insertNews", 2];
};

