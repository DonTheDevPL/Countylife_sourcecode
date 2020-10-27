/*
	Author: Ben Harris
	Descrioption: Interaction Action
*/
HRP_fnc_interactionAction = {
	params ["_index"];

	if ((HRP_intPage == 1 && !(_index == 8)) || (HRP_intPage == 2 && !(_index == 1))) then {
		closeDialog 0;
	};
	_index = _index - 1;
	_a = HRP_iCurActionArray select _index;
	call compile _a;
};