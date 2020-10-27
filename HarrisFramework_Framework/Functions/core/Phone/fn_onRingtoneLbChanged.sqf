/*
	Author: Ben Harris
	Description: Sets Player's Ringtone
*/

HRP_fnc_onRingtoneLbChanged = {
	_ringTone = lbData [2100, ( lbCurSel 2100 )];
	playSound _ringTone;

	if !(HRP_noSound) then {
		player setVariable ["ringTone", _ringTone, true];	
	};
};