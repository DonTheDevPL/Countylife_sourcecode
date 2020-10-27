/*
	Author: Ben Harris
	Description: Knocks out a Player
*/

HRP_fnc_knockOutAction = {
	//params["_target"];
	_target = _this select 0;

	_cuffed = player getVariable["cuffed", false];
	//_knockedout = player getVariable ["unconscious", false];

	if ((animationState cursorTarget) != "Incapacitated") then {
		if(currentWeapon player in ["Binocular","Rangefinder"]) exitWith {};
		if(currentWeapon player == "")exitWith {};
		if(isNull _target) exitWith {};
		if(!isPlayer _target) exitWith {};
		if(player distance _target > 3) exitWith {};
		player playMove "AwopPercMstpSgthWrflDnon_End2";
		[] remoteExec ["HRP_fnc_knockedOut", _target];
		/*_degrees = getDir player;
		_degreesu = getDir _target;
		_totald = _degrees - _degreesu;
		if(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) then {	
		} else {
			["Error","Musisz być za celem by go powalić!",true] spawn HRP_fnc_Notifications;
		};
		*/
	};

};