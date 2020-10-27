/*
	Title: fn_openShop.sqf
	Author: Ben Harris
	Description: Opens the shop Dialog
*/

HRP_fnc_openAdminShop = {
	disableSerialization;
	_Shop = _this select 0;
	createDialog "Harris_Gearshop_Dialog";
	waituntil {!isNull (findDisplay 5001);};
	_crtl = (findDisplay 5001) displayCtrl 1500;

	{
	_index = lbAdd [ 1500, ( _x select 0 ) ]; 
	lbSetData [ 1500, _index, ( _x select 1 )];
	} forEach _Shop;	
};