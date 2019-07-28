/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 7;

sleep 30; //Wait in seconds before the credits start after player is in-game

_role1 = "Witamy na Serwerze:";
_role1names = ["County Life"];
_role2 = "Administracja:";
_role2names = ["sebalinho, AMGHere, Beryk, czeski, Frosty, KRZQ, papkfoa"];
_role3 = "Forum:";
_role3names = ["countylife.pl"];
_role4 = "TeamSpeak3:";
_role4names = ["ts.countylife.pl"];
_role5 = "Znalazłeś błąd na serwerze?";
_role5names = ["Skontaktuj się z nami!"];
_role6 = "Restarty serwera";
_role6names = ["00:00, 06:00, 12:00, 16:00, 20:00"];
_role7 = "Życzymy miłej gry!";
_role7names = ["Ekipa County Life"];


{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.70' color='#ffee00' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]

];