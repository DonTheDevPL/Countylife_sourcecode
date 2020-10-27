/*

	Author: Ben Harris
	Description: Sells the House
*/

HRP_fnc_sellHouse = {
	params ["_ct"];
	
	[round (HRP_Price)] call HRP_fnc_addBank;
	[_ct] call HRP_fnc_deleteHouse;
};