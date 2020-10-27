/*
	Author: Ben Harris & George Thurston
	Description: HUD Loop
*/

HRP_fnc_hudLoop ={
	_ui = call HRP_fnc_uiCheck;

	_fps = _ui displayCtrl 23515;
    _fps ctrlSetText format["FPS: %1", round diag_fps];

	_statusbar = _ui displayCtrl 23520;
	_message = [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString;
	_statusbar ctrlSetText format["%1",_message];


	_myname = _ui displayCtrl 23611;
	_myname ctrlSetText format["%1", (player getVariable "playerName")];


	_mycash = _ui displayCtrl 1001;
	_cash = player getVariable "cash";
	_mycash ctrlSetText format["$%1 USD", [_cash] call HRP_fnc_numbertoText];

	_myOccupation = _ui displayCtrl 1002;
	_occupation = player getVariable "currentOccupation";
	_myOccupation ctrlSetText format["%1", _occupation];


	_mylife = _ui displayCtrl 1501;


	HRP_Health = round (100 - ((damage player) * 100));

	if !(isNil {(vehicle player) getVariable "isBus"}) then {
	if (isNull (findDisplay 234247)) then {
		132 cutRsc ["HRP_busMenu","PLAIN"];
	};
	_arr = (vehicle player) getVariable "nextDestination";

	_location = format["Next Destination %1", _arr select 0];
	_position = format["Distance to stop: %1m", (round ((vehicle player) distance (getMarkerPos (_arr select 1))))];

	ctrlSetText [1233, _location];
	ctrlSetText [1232, _position];
	} else {
		if !(isNull (findDisplay 234247)) then {
			132 cutText ["","PLAIN"];
		};	
	};

	if (typeOf (vehicle player) in HRP_Trucks && !(isNil "HRP_truckMarker")) then {
		if (isNull (findDisplay 234248)) then {
			133 cutRsc ["HRP_truckMenu", "PLAIN"];
		};
		_position = format["Distance to Destination: %1m", (round ((vehicle player) distance HRP_truckTaskPosition))];
		_location = format["Next Destination: %1", HRP_truckTaskLocation];

		ctrlSetText [1234, _location];
		ctrlSetText [1235, _position];
	} else {
		if !(isNull (findDisplay 234248)) then {
			133 cutText ["","PLAIN"];
		};	
	};


	if ( HRP_Health < 100 ) then
		{
		if(HRP_Health == 0 || HRP_Dead) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_0.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 5 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_5.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 10) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_0.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 15 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_15.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 20) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_10.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 25 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_25.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 30) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_20.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 35 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_35.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 40) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_40.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 45 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_45.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 50) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_50.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 55 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_55.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 60) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_60.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 65 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_65.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 70) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_70.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 5 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_75.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 80) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_80.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 85 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_85.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 90) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_90.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 95 ) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_95.paa";
			_mylife ctrlSetText _message;
		};
		if(HRP_Health < 100) exitwith {
			_message = "\HarrisFramework_Client2\icons\red_bar_100.paa";
			_mylife ctrlSetText _message;
		};
	} else
	{
			_message = "\HarrisFramework_Client2\icons\red_bar_100.paa";
			_mylife ctrlSetText _message;
	};
	_mylife ctrlCommit 0;


	_myfood = _ui displayCtrl 1502;
if ( HRP_hunger > 0 ) then
	{
		if(HRP_Hunger < 5) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_95.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 10) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_90.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 15) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_85.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 20) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_80.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 25) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_75.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 30) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_70.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 35) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_65.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 40) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_60.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 45) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_55.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 50) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_50.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 55) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_45.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 60) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_40.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 65) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_35.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 70) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_30.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 75) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_25.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 80) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_20.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 85) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_15.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 90) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_10.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 95) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_5.paa";
			_myfood ctrlSetText _message;
		};
		if(HRP_Hunger < 100) exitwith {
			_message = "\HarrisFramework_Client2\icons\green_bar_0.paa";
			_myfood ctrlSetText _message;
		};
	} else
	{
			_message = "\HarrisFramework_Client2\icons\green_bar_100.paa";
			_myfood ctrlSetText _message;
	};
	_myfood ctrlCommit 0;




	_mydrink = _ui displayCtrl 1503;
	if ( HRP_Thirst > 0 ) then
	{
		if(HRP_Thirst < 5) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_95.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 10) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_90.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 15) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_85.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 20) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_80.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 25) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_75.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 30) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_70.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 35) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_65.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 40) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_60.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 45) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_55.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 50) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_50.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 55) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_45.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 60) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_40.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 65) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_35.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 70) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_30.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 75) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_25.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 80) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_20.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 85) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_15.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 90) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_10.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 95) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_5.paa";
			_mydrink ctrlSetText _message;
		};
		if(HRP_Thirst < 100) exitwith {
			_message = "\HarrisFramework_Client2\icons\blue_bar_0.paa";
			_mydrink ctrlSetText _message;
		};
	} else
	{
			_message = "\HarrisFramework_Client2\icons\blue_bar_100.paa";
			_mydrink ctrlSetText _message;
	};
	_mydrink ctrlCommit 0;

	if (typeOf vehicle player == "red_firetruck_p_base" && cameraView != "INTERNAL") then {
		player switchCamera "Internal";
	};

	/*
	if (currentWeapon player in HRP_copGuns && (player getVariable 'cop') < 0) then {
		{
			if (_x == currentMagazine player) then {
					player removeMagazine _x;
			};
		} forEach magazines player;

		player removeWeapon (currentWeapon player);
	};
	*/
};
