
//Return the actual mission date and time as an array [year, month, day, hour, minute]. Month is a full number between 1 and 12, day is between 1 and 31, hour is between 0 and 23 and minute is between 0 and 59.
/*
_witaj = format ["Witaj, %1",name player];
ctrlSetText [9969, _witaj];
*/

_dd = format ["Dzień dobry, %1",name player];
_dw = format ["Dobry wieczór, %1",name player];

if (date select 3 isEqualTo 0) then {ctrlSetText [9969, _dw];};
if (date select 3 isEqualTo 1) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 2) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 3) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 4) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 5) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 6) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 7) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 8) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 9) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 11) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 12) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 13) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 14) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 15) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 16) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 17) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 18) then {ctrlSetText [9969, _dd];};
if (date select 3 isEqualTo 19) then {ctrlSetText [9969, _dw];};
if (date select 3 isEqualTo 20) then {ctrlSetText [9969, _dw];};
if (date select 3 isEqualTo 21) then {ctrlSetText [9969, _dw];};
if (date select 3 isEqualTo 22) then {ctrlSetText [9969, _dw];};
if (date select 3 isEqualTo 23) then {ctrlSetText [9969, _dw];};




_hour = date select 3;
_min  = date select 4;
_godzina = format ["%1 : %2", _hour , _min];
ctrlSetText [9950, _godzina];

_rok = date select 0;
_month  = date select 1;
_day  = date select 2;
_date = format ["%1.%2.%3", _day , _month, _rok];
ctrlSetText [9949, _date];



