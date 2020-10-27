/*
	Author: Ben Harris
	Description: Presses Panic button and broadcasts
*/

HRP_fnc_pressPanicButton = {
	_pos = getPos player; 
	[_pos] remoteExecCall ["HRP_fnc_panicPressed", 0];
};