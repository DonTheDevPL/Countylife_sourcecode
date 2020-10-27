//startFaktory
//Author: TheWolek
//if((lbCurSel 5002) isEqualTo -1) exitWith {hint localize "STR_Global_NoSelection"};
_product = lbData[5002,(lbCurSel 5002)];
_reqlvl = lbValue[5002,(lbCurSel 5002)];
if(_reqlvl > life_currentExpLevel) exitWith {hint"Nie masz wystarczająco dużo respektu";};
cursorObject setVariable ["product",_product,true];
cursorObject setVariable ["production",false,true];
Factory = cursorObject;
sleep 60;
[_product] spawn life_fnc_brakZasobow;