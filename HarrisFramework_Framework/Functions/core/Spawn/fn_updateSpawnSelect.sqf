/*
	Author: Ben Harris
	Description: Centres Map on Player Pos
*/
HRP_fnc_updateSpawnSelect = {

	_ctrl = (findDisplay 5008) displayCtrl 2132;
	HRP_data = lbData [ 2131, ( lbCurSel 2131 ) ];
	HRP_SpawnName = (call compile HRP_data) select 0;

	_ctrl ctrlMapAnimAdd [0, 0.05, getMarkerPos (call compile HRP_data select 1)];
	ctrlMapAnimCommit _ctrl;	
};