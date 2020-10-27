/*
	Author: Ben Harris
	Description: Opens Crafting Menu
*/

HRP_fnc_openCraftingMenu = {

	createDialog "HRP_craftingMenu";
	_bluePrints = player getVariable "bluePrints";

	{
		_index = lbAdd [2100, _x];
		lbSetData [2100, _index, _x];
	} forEach HRP_craftTypes;

	lbSetCurSel [2100, 0];
};