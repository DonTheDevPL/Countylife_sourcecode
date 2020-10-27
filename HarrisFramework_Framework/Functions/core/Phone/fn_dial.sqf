/*
	Author: Ben Harris
	Description: Adds a Number to the Dial
*/

HRP_fnc_Dial = {
	params["_number"];

	HRP_callNumber pushBack _number;

	HRP_numberToCall = "";
	{
		HRP_numberToCall = HRP_numberToCall + str _x;
	} forEach HRP_callNumber;		

	ctrlSetText [1000, HRP_numberToCall];
};