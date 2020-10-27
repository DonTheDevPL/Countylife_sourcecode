//methcooking
//Author: TheWolek
PseudoArr = ["Substancja robi się czysta jak szkło","Substancja robi się jaśniejsza","Substancja zmienia kolor","Kolby są prawie białe"];
AmfetaminaArr = ["Substacja robi się ciemniejsza","Substancja jest prawie czarna","Dlaczego to jest czarne...","Kolby są prawie czarne"];
HeatArr = ["Substancja robi się gęsta","To wygląda jak klej","Substancja zapchała wszystkie rurki","Nic się nie dzieje..."];
CoolArr = ["Substancja płynie za szybko","Substancja jest bardzo rzadka","To się gotuje!","Chyba coś się przypala..."];
ReleaseArr = ["Kolby są zamglone","Nic nie widze, za dużo pary","Kolby są prawie puste","Zaczyna śmierdzieć..."];

_count = 0;
while {_count < 10 && cooking} do {
	sleep 20;
	_random = round(random 5);

	if(_random == 1 || _random == 0) then { requiredInput = "Pseudo"; _msg = PseudoArr call BIS_fnc_selectRandom; hint _msg;};
	if(_random == 2) then { requiredInput = "Amfetamina"; _msg = AmfetaminaArr call BIS_fnc_selectRandom; hint _msg;};
	if(_random == 3) then { requiredInput = "Heat"; _msg = HeatArr call BIS_fnc_selectRandom; hint _msg;};
	if(_random == 4) then { requiredInput = "Cool"; _msg = CoolArr call BIS_fnc_selectRandom; hint _msg;};
	if(_random == 5) then { requiredInput = "Release"; _msg = ReleaseArr call BIS_fnc_selectRandom; hint _msg;};

	checkFinish = false;
	_count = _count + 1;
};

player removeAction Action1;
player removeAction Action2;
player removeAction Action3;
player removeAction Action4;
player removeAction Action5;

if (isNull Table) exitWith {};

if(DrugValue <= 10) then {DrugValue = 10;};
_randomV = DrugValue / 10;
[true,"Meth",_randomV] call life_fnc_handleInv;
hint format["Ugotowales %1 workow mety",_randomV];
cooking = false;
deleteVehicle table;
deleteVehicle tank;
deleteVehicle bucket;