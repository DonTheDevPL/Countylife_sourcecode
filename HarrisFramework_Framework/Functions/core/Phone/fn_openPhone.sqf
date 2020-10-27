/*
	Author: Ben Harris
	Description: Opens the Phone with Correct Background
*/

HRP_fnc_openPhone = {
		createDialog "HRP_Phone_mainScreen";

		_backGroundID = player getVariable "backGround";

		_background = format ["\HarrisFramework_Client2\icons\phone\main\background%1.paa", _backGroundID];
		ctrlSetText [7565, _backGround];

};