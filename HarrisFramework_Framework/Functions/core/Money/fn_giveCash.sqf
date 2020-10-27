/*
	Author: Ben Harris
	Description: Opens the Give Cash Interface
*/

HRP_fnc_giveCash = {
	params["_target"];


	HRP_giveCashTarget = _target;

	createDialog "giveCash";

	ctrlSetText [1000, "$" + str (player getVariable "cash")];

	ctrlSetText [1001, HRP_giveCashTarget getVariable "playerName"];
};