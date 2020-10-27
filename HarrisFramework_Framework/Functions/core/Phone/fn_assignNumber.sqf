/*
	Author: Ben Harris
	Description: Assigns you a phone Number
*/

HRP_fnc_assignNumber = {
	
	_values = [1,2,3,4,5,6,7,8,9];

	HRP_Number = [1,7,0,9,4,8];

	for "_i" from 1 to 4 do {
		_valueToAdd = selectRandom _values;

		HRP_Number pushback _valueToAdd;
	};
	HRP_phoneNumber = "";
	{
		HRP_phoneNumber = HRP_phoneNumber + str _x;
	} forEach HRP_Number;

	HRP_phoneNumber;
};