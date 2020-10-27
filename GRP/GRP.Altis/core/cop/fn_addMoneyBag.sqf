//addMoneyBag
//Author: TheWolek
_lvl = call life_coplevel;
if(_lvl < 5) exitWith {hint "Masz za niska range by wypłacić pieniądze";};
if(life_cash < 95000) exitWith {hint "nie masz wystarczajaco dużo pieniędzy (95000)";};
life_cash = life_cash - 95000;
hint "Wypłaciłeś 95 tyś w brudnych pieniądzach";
[true,"goldbar",1] call life_fnc_handleinv;
[] call life_fnc_hudUpdate;