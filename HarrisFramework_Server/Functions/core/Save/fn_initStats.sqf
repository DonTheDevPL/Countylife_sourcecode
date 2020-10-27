/*
	Author: Ben Harris
	Description: Loads Data from DB
*/

_player = _this select 0;
//_car = _this select 1;

_uid = getPlayerUID _player;

_checkstr = format ["existPlayerInfo:%1", _uid];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;

_player setVariable ["loadedIn", true, true];

if (_booli) then {
	_fetchstr = format ["playerInfo:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	_res = _fetch select 0;
	
	_items = _res select 0;
	_clothes = _res select 1;
	_weapons = _res select 2;
	_cash = _res select 3;
	_bank = _res select 4;
	_cop = _res select 5;
	_ems = _res select 6;
	_licenses = _res select 7;
	_bankAccount = _res select 8;
	_arrestTime = _res select 9;
	_arrestNotes = _res select 10;
	_arrestCrimes = _res select 11;
	_outStandingPay = _res select 12;
	_yourNumber = _res select 13;
	_contactList = _res select 14;
	_background = _res select 15;
	_identities = _res select 16;

	_lspo = _res select 17;

	_bluePrints = _res select 18;

	_furniture = _res select 19;

	_locker = _res select 20;

	_ringTone = _res select 21;
	//_vip = _res select 22;
	
	_player setVariable ["cash", _cash, true];
	_player setVariable ["bank", _bank, true];
	_player setVariable ["bankAccount", _bankAccount, true];
	
	_player setVariable ["cop", -1, true];
	_player setVariable ["copoffdutyToSelect", _cop, true];
	_player setVariable ["ems", -1, true];
	_player setVariable ["emsoffdutyToSelect", _ems, true];

	_player setVariable ["licenses", _licenses, true];

	_player setVariable ["arrestTimeToSelect", _arrestTime, true];
	_player setVariable ["arrestNotesToSelect", _arrestNotes, true];
	_player setVariable ["arrestCrimesToSelect", _arrestCrimes, true];

	_player setVariable ["outStandingPay", _outStandingPay, true];


	_player setVariable ["yourNumberToSelect", _yourNumber, true];
	_player setVariable ["contactListToSelect", _contactList, true];

	_player setVariable ["background", _background, true];

	_player setVariable ["identities", _identities, true];

	_player setVariable ["reporterToSelect", _lspo, true];

	_player setVariable ["bluePrints", _bluePrints, true];

	_player setVariable ["furnitureToSpawn", _furniture, true];

	_player setVariable ["lockerToSelect", _locker, true];

	_player setVariable ["ringTone", _ringTone, true];

	_player setVariable ["itemsToSelect", _items, true];

	_player setVariable ["clothesToSelect", _clothes, true];

	_player setVariable ["weaponsToSelect", _weapons, true];

	//if (_vip > 0) then {
	//	_player setVariable ["viplevel", _vip, true];
	//};

} else {
	_player setVariable ["firstTime", true, true];
	_name = name _player;
	_items = [[[(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)],1],[[(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)],2]];
	_clothes = [[[(uniform _player), (vest _player), (backpack _player), (headgear _player)],1],[[(uniform _player), (vest _player), (backpack _player), (headgear _player)],2]];
	_weapons = [[[],1],[[],2]];
	_cash = 0;
	_bank = 10000;
	_cop = [[-1,1],[-1,2]];
	_ems = [[-1,1],[-1,2]];
	_position = position _player;
	_licenses = ["Driver_License"];
	_arrestTime = [[0,1],[0,2]];
	_arrestNotes = [["",1],["",2]];
	_arrestCrimes = [["",1],["",2]];
	_outStandingPay = 0;

	_yourNumber = [] call HRP_fnc_assignNumber;
	_yourNumber2 = [] call HRP_fnc_assignNumber;
	yourNumber = [[_yourNumber,1],[_yourNumber2,2]];
	_contactList = [[[],1],[[],2]];
	_background = 2;
	_identities = [];
	_hit = [["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel","HitFuel","HitEngine","HitBody","HitGlass1","HitGlass2","HitRGlass","HitLGlass","HitGlass3","HitGlass4","HitGlass5","HitGlass6","HitLBWheel","HitLMWheel","HitRBWheel","HitRMWheel","","","","","",""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]];
	//[_car, _hit, _player] call Server_fnc_insertGarage;

	_lspo = [[0,1],[0,2]];

	_bluePrints = [];

	_furniture = [];

	_locker = [[[["Cop", []], ["EMS", []], ["Civ", []]],1],[[["Cop", []], ["EMS", []], ["Civ", []]],2]];

	_ringTone = "iphone_ringtone";

	_insertstr = format ["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20:%21:%22:%23:%24", _uid, _name, _items, _clothes, _weapons, _cash, _bank, _cop, _ems, _position, _licenses, _arrestTime, _arrestNotes, _arrestCrimes, _outStandingPay, yourNumber, _contactList, _background, _identities, _lspo, _bluePrints, _furniture, _locker, _ringTone];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

	
	[_player] spawn Server_fnc_initStats;
};