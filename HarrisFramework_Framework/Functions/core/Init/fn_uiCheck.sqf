/*
	Author: Ben Harris
	Description: Checks if HUD Ui Exists
*/

HRP_fnc_uiCheck =
{
	disableSerialization;
	_ui = uiNameSpace getVariable ["playerHUD",displayNull];
	if(isNull _ui) exitWith
	{
		[] call HRP_fnc_initHUDLoop;
		_ui = uiNameSpace getVariable ["playerHUD",displayNull];
		_ui;
	};
	_ui;
};