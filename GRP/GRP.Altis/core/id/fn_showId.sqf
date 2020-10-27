//showId
//Author: TheWolek, Kappa
private["_target","_message"];  

_target = cursorTarget;  

if( isNull _target) then {_target = player;};  

if( !(_target isKindOf "Man") ) then {_target = player;};  

if( !(alive _target) ) then {_target = player;};  
_zawod = occupation;

_message = format["<img size='12' color='#FFFFFF' image='\GRP\data\passeport.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>%2</t>", name player,_zawod];  

[player, _message] remoteExec ["life_fnc_reciveId",_target];
/*
_name = name player;
_zawod = occupation;
[_name,_zawod] remoteExec ["life_fnc_reciveId",cursorObject];
*/
