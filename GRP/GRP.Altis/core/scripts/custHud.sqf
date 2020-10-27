#include "..\..\script_macros.hpp"
/*
	Author: David
	Edited: Dark (Custom colours & precise stats) 
	Community: ArmaCentral RP & Altisliferpg.com & InfiniteNetwork.xyz
	Don't edit or redistribute without asking, 1st not cool, 2nd I will DMCA you, ask slyfoxgaming :)
*/
disableSerialization;

1 cutRsc ["custHUD","PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable "custHUD")};
		//Displays
		_display = uiNameSpace getVariable "custHUD";
		_bankidc = _display displayCtrl 1103;
		_cashidc = _display displayCtrl 1104;
		_playeridc = _display displayCtrl 1105;
		
		//titles
		_banktitle = _display displayCtrl 1001;
		_cashtitle = _display displayCtrl 1002;
		_playertitle = _display displayCtrl 1006;
		
		//Stats
		_damage = round((1 - (damage player)) * 100);
		//
		//PLEASE COMMENT OUT >>ONE<< OF THE TWO SETS OF VARIABLES BELOW
		//
		//THIS ONE OS FOR TEXT E.G. | IM HEALTHY | NEED SOME FOOD | NOT THIRSTY |
		_hunger = life_hunger;
		_thirst = life_thirst;
		
		//THIS ONE OS FOR EXACT VALUES E.G.| 100% HEALTH | 100% FOOD | 100% THIRST |
		_hunger = round(life_hunger);
		_thirst = round(life_thirst);


		_cash = [CASH] call life_fnc_numberText;
		_bank = [BANK] call life_fnc_numberText;
		_players = count playableUnits;

		//DONT COMMENT THE BELLOW OUT
		_cashidc ctrlSetStructuredText (parseText format ["$%1",_cash]);
		_bankidc ctrlSetStructuredText (parseText format ["$%1",_bank]);
		_playeridc ctrlSetStructuredText (parseText format ["%1",_players]);

		_cashtitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Cash</t>"]);
		_banktitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Bank</t>"]);
		_playertitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Players</t>"]);