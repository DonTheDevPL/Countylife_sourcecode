//showBadge
//Author: TheWolek
_target = cursorTarget;  

if( isNull _target) then {_target = player;};  

if( !(_target isKindOf "Man") ) then {_target = player;};  

if( !(alive _target) ) then {_target = player;}; 

_message = format["<img size='12' color='#FFFFFF' image='\GRP\data\badge.paa'/><br/><br/><t size='2.5'>%1</t><br/>", name player];  
[player, _message] remoteExec ["life_fnc_reciveId",_target];