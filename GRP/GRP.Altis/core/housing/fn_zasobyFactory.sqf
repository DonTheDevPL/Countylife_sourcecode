//zasobyFactory
//Author: TheWolek
_product = Factory getVariable "product";
if!(isNull objectParent player) then {
	_vehicle = vehicle player;
} else {
	_nearVehicle = nearestObject[getPos player,["car"],30];
	if(count _nearVehicle > 0) then {
		_trunk = _nearVehicle getVariable ["Trunk",[]];
	};
};

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_NoNPC";};
if(_trunk == [[],0]) exitWith {hint "Najbliższy pojazd jest pusty";};
if((_nearVehicle getVariable ["trunk_in_use_by",player]) != player) exitWith {closeDialog 0; hint localize "STR_MISC_VehInvUse";};
_data = _trunk select 0; //[["item1",value],["item2",value]]
_old = _trunk select 1;  //final trunk weight
{
	if(_x find _product >= 0) then {

		_value = _x select 1;
		_weight = [_product] call life_fnc_itemWeight;
		{
			_nearVehicle setVariable ["Trunk",[_x,_old - _weight],true];
			[_nearVehicle] call life_fnc_vehInventory;
		} forEach _value;
	} else {
		hint "Brak produktów";
	};
	
} forEach _data;




