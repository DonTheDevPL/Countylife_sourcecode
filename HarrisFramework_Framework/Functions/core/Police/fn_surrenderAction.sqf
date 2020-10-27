/*
	Author: Ben Harris - Revised by Nicholas Jo'Foski - Further Revised by Ben Harris
	Description: Surrender Action
*/

HRP_fnc_surrenderAction = {

	//if (HRP_action) exitWith {};
	//HRP_action = true;
    if(player getVariable ["cuffed",true]) exitWith {};
    if ( vehicle player != player ) exitWith {};
    if (player getVariable "surrendered") then {
        player setVariable ["surrendered", false, true];
    } else {
        player setVariable ["surrendered", true, true];
    };

    while {player getVariable ["surrendered",false]} do {
        player playMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
        if (!alive player || !(isNull objectParent player)) then { player setVariable ["surrendered",false,true]; };
    };
    //player setVariable ["surrendered", true, true];
    player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
};