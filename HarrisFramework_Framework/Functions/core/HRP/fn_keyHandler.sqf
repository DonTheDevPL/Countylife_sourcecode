HRP_fnc_keyHandler = {
	private["_handled","_ctrl","_shift","_ctrlKey","_alt"];
	_handled = false;
	_ctrl = _this select 0;
	_code = _this select 1;
	_shift = _this select 2;
	_ctrlKey = _this select 3;
	_alt = _this select 4;
	_mapKey = actionKeys "ShowMap" select 0;
	_handled = false;
	switch (_this select 1) do
	{
		case 2:
		{
			if !(_ctrlKey) then {
				_handled = true;
			};
		};
		case 19:
		{
			if(typeOf vehicle player in ["m_Ambulance","M_CVPI","M_FPIS","M_Charger12","M_Silverado","M_Silverado_cab","M_Tahoe","M_CVPI_UC_Grey","M_FPIS_UC_Grey","M_Charger12_UC_Grey","M_Tahoe_UC_Grey"]) then {
				//code 1
				if(vehicle player animationPhase "ani_lightbar" != 0 ) then{
					vehicle player animate["ani_lightbar",0];
					vehicle player animate["ani_sirens",0];
					vehicle player animate["ani_directional",0];
					vehicle player animate["ani_Flashers",0];
					//playSound "code";
				};
				//code 2
				if(vehicle player animationPhase "ani_lightbar" != 0.1) then {
					vehicle player animate["ani_lightbar",0.1];
					vehicle player animate["ani_directional",0.2];
					vehicle player animate["ani_Flashers",0.1];
					vehicle player animate["ani_sirens",0];
					//playSound "code";
				};
				if(_shift) then {
					//code 3
					if(vehicle player animationPhase "ani_sirens" == 0 && vehicle player animationPhase "ani_lightbar" == 0.1) then {
						vehicle player animate["ani_sirens",0.2];
						vehicle player animate["ani_lightbar",0.1];
						vehicle player animate["ani_directional",0.2];
						vehicle player animate["ani_Flashers",0.1];
						//playSound "code";
					};
				};
				
			};

			if(typeOf vehicle player in []) then {
				//Dla ulomnych wozow strazackich.... jak krowie na granicy....
				//i tak nie da sie wlaczyc code 1....
				if(!_shift) then {
					//code 1
					if(vehicle player animationPhase "BeaconsStart" != 0) then {
						vehicle player animate["BeaconsStart",0];
						vehicle player setVariable["ani_siren",0,true];
					};
					//code 2
					if(vehicle player animationPhase "BeaconsStart" != 1) then {
						vehicle player animate["BeaconsStart",1];
						vehicle player setVariable["ani_siren",0,true];
					};
				} else {
					//code 3
					if((vehicle player getVariable "ani_siren") == 0 && vehicle player animationPhase "BeaconsStart" == 1) then {
						vehicle player animate["BeaconsStart",1];
						vehicle player setVariable["ani_siren",0.8,true];
					};
				};
			};
			
		};
	 	case 21:
	 	{
	 		if (isNull findDisplay 5034 && !(player getVariable "unconscious") && !(player getVariable 'cuffed')) then {
	 			if (HRP_inCurrentCall) then {
	 				[] call HRP_fnc_openPhoneInCall;
	 			} else {
	 				if (HRP_receivingCall) then {
	 					[] call HRP_fnc_receiveCallReload;
	 				} else {
	 					if (HRP_Calling) then {
	 						[] call HRP_fnc_openPhoneInCalling;
	 					} else {
	 						[] call HRP_fnc_openPhone;
	 					};
	 				};
	 			};
	 		};
	 	};

	 	case 22:
	 	{
	 		if ((cursorObject isKindOf 'Car' || cursorObject isKindOf "Air" || cursorObject isKindOf "Sea") && (cursorObject in HRP_Cars || cursorObject getVariable "ownerUID"  == getPlayerUID player || str cursorObject in HRP_Keys) && (player distance cursorObject) <= 5  && !(player getVariable "unconscious")) then {
	 				[cursorObject] call HRP_fnc_useKey;
	 				_handled = true;
	 		};
	 		if ((vehicle player isKindOf 'Car' || vehicle player isKindOf "Air" || vehicle player isKindOf "Sea") && (vehicle player in HRP_Cars || vehicle player getVariable "ownerUID"  == getPlayerUID player || str (vehicle player) in HRP_Keys) && (player distance vehicle player) <= 5  && !(player getVariable "unconscious")) then {
	 				[vehicle player] call HRP_fnc_useKey;
	 				_handled = true;
	 		};
	 	};
	    case 35: {
	        if(_shift && !_ctrlKey && currentWeapon player != ""  && !(player getVariable "unconscious")) then {
	            curWep_Holster = currentWeapon player;
            	player action ["SwitchWeapon", player, player, 100];
           	 	player switchCamera cameraView;
           		HRP_Holstered = 1;
	        };
	 
	       if(!_shift && _ctrlKey && !isNil "curWep_Holster" && {(curWep_Holster != "")}  && !(player getVariable "unconscious")) then {
	            if(curWep_Holster in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
           			player selectWeapon curWep_Holster;
           			HRP_Holstered = 0;
           			curWep_Holster = "";
      			};
	        };
	    };

	    case _mapKey: 
	    {
			/*
	    	if ( !( userInputDisabled ) ) then {

                disableUserInput true;

                if ( userInputDisabled ) then {

                    disableUserInput false;

                };
            };
			

            if (!isNull (findDisplay 5029)) then {
            	openMap true;
            	closeDialog 5029;
            	 _handled = true;
            };
			
            if (isNull findDisplay 5029  && !(player getVariable "unconscious")) then {
            	createDialog "HRP_Phone_GPSApp";
            	["Next", "Press M again to open the full map", true] spawn HRP_fnc_Notifications;
            };
			*/
			if((player getVariable "currentOccupation") == "Police Officer") then {
				if (!visibleMap) then {
					[]spawn HRP_fnc_Markers;
				};
			};

			if((player getVariable "currentOccupation") == "Paramedic") then {
				if (!visibleMap) then {
					[]spawn HRP_fnc_Markers;
				};
			};

            //_handled = true;
		};

		case 15:
		{
			if (!HRP_Dead && !_alt && !_shift && !_ctrlKey && !(isNull (findDisplay 46)) && (isNull findDisplay 5055)  && !(player getVariable "unconscious")) then {
					[true]call HRP_fnc_openInteraction;
			};
		};
		case 45:
		{
			if (_shift) then {
				if (!(HRP_openANPR) && ((player getVariable "cop" > 0 && vehicle player isKindOf "Car") || currentWeapon player == "Radar_Gun")  && !(player getVariable "unconscious")) then {
					[true] spawn HRP_fnc_openANPR;
				} else {
					if (HRP_openANPR) then {
						[false] spawn HRP_fnc_openANPR;
					};
				};
				_handled = true;
			};
		};

		case 46:
		{
			if (!(isNull cursorObject) && _shift && cursorObject isKindOf "Man" && isPlayer cursorObject && !(cursorObject getVariable "knockedOut") && !(player getVariable "knockedOut") && !(player getVariable "cuffed") && (player distance cursorObject) <= 2) then {
				if(currentWeapon player != "")then {
					[cursorObject] call HRP_fnc_knockOutAction;
					_handled = true;
				};
				
			};
			if (_shift) then {
				_handled = true;
			};
		};
		
		case 201:
		{
			if (!isNil {player getVariable "carryingObject"}  && !(player getVariable "unconscious")) then {
				_obj = player getVariable "carryingObject";

				if ((((getPosatl _obj) select 2) - ((getPosATL player) select 2)) > 5) exitWith {};
				detach _obj;
				_obj setPosAtl [(getPosATL _obj) select 0,(getPosATL _obj) select 1 ,((getPosATL _obj) select 2) + 0.025];
				[_obj] spawn HRP_fnc_pickupFurniture;
				_handled = true;
			};
		};

		case 209:
		{
			if (!isNil {player getVariable "carryingObject"}  && !(player getVariable "unconscious")) then {
				_obj = player getVariable "carryingObject";

				detach _obj;
				_obj setPosAtl [(getPosATL _obj) select 0,(getPosATL _obj) select 1 ,((getPosATL _obj) select 2) - 0.025];
				[_obj] spawn HRP_fnc_pickupFurniture;
				_handled = true;
			};
		};
		case 7:
		{
			if (_shift && !(player getVariable "unconscious")) then {
				if(player getVariable "surrendered") then {
					player setVariable ["surrendered", false, true];
				} else {
					[] spawn HRP_fnc_surrenderAction;
				};
				//[] spawn HRP_fnc_surrenderAction;
				_handled = true;
			};
		};
		case 3:
		{
			if (_shift  && !(player getVariable "unconscious")) then {
				[] spawn HRP_fnc_earPlugs;
				_handled = true;
			};
		};
		case 156:
		{
			if (typeOf vehicle player == "red_firetruck_p_base") then {
				_handled = true;
			};
		};
	};
	_handled;
};
