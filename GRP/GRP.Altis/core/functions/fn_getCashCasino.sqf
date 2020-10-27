//getCashCasino
//Author: TheWolek
_owner = kasyno; 
if(_owner == "none") exitWith {hint "kasyno do nikogo nie nalezy, mozesz je przejać"}; 
if((license_civ_mafia && _owner == "mafia") || (license_civ_kartel && _owner == "kartel")) then { 
	topushMoney = str outStanding; 
	if(topushMoney == "0") exitWith {hint"nie ma nic do wypłacenia"}; 
	hint "wypłaciłes dochody z kasyna"; 
	outStanding = 0; 
	missionNamespace setVariable ["outStanding",0,true]; 
	[player,topushmoney,cursorObject] spawn life_fnc_receiveMoney; 
} else { 
 	hint "Kasyno nie nalezy do twojej frakcji."; 
};
