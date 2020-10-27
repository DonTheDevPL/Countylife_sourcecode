/*
	Author: Ben Harris
	Description: Initialises Jail if you are Logging On.
*/

HRP_fnc_jailInit = {
	disableSerialization;
	cutText ["" , "BLACK IN"];
	HRP_cellNumber = selectRandom HRP_cellNumbers;

	HRP_cell = format ["HRP_Cell_%1", HRP_cellNumber];

	player setPos (getMarkerPos HRP_cell);

	player setVariable ["Arrested", true];
	_time = player getVariable "arrestTime";
	_notes = player getVariable "arrestNotes";
	_crimes = player getVariable "arrestCrimes";
	[_time, _notes, _crimes] call HRP_fnc_arrestedPlayer;

	player setVariable ["assignedCell", HRP_cellNumber, true];

};