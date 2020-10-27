/*
	Author: Ben Harris
	Description: Cancels Dialing a Number
*/

HRP_fnc_cancelDial = {
	HRP_callNumber pushBack _number;

	HRP_numberToCall = "";
	{
		HRP_numberToCall = HRP_numberToCall + str _x;
	} forEach HRP_callNumber;		

	ctrlSetText [1000, HRP_numberToCall];

};