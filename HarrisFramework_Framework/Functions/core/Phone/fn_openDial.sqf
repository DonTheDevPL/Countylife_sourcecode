/*
	Author: Ben Harris
	Description: Opens Dial Menu
*/
HRP_fnc_openDial = {
	params["_maybeAddToCall"];


	switch (_maybeAddToCall) do {
		case 0: {
			createDialog "HRP_Phone_callMenu";
			HRP_numberToCall = [];
		};
		case 1: {
			createDialog "HRP_Phone_addToCallMenu";
			HRP_numberToCall = [];

		};

	};
/*
		createDialog "HRP_Phone_callMenu";

		HRP_numberToCall = [];*/
};