/*
	Author: Ben Harris
	Description: Avoids Scientific Notation + BIS_fnc_numberCrap crap with 10 Digit Strings (Cellphone Numbers)
*/

HRP_fnc_phoneNumberText  = {
	params["_number"];

	_number1 = _number select [0,1];
	_number2 = _number select [1,3];
	_number3 = _number select [4,3];
	_number4 = _number select [7,3];

	_yourNumber = _number1 + " " + _number2 + " " + _number3 + " " + _number4;

	_yourNumber;
}