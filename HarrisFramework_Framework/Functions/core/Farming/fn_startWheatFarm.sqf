/*
	Author: Ben Harris
	Description: Initialise your Wheat Farm
*/


HRP_fnc_startWheatFarm = {
	
	closeDialog 0;
	player playMove "AmovPercMstpSnonWnonDnon_AinvPercMstpSnonWnonDnon_Putdown";
	_Wheat = "A3L_Wheat" createVehicle position player;
	_Wheat enableSimulation false;
	_Position = getpos player;
	_Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 1.5];

	["Zasiałeś zboże", "Zasiałeś twoje nasiona.", true] spawn HRP_fnc_notifications;

	_Wheat setVariable ["canHarvest", false];
	_Wheat setVariable ["plantType", "Wheat"];
	player removeItem "W_wheatSeeds";

	_Time = 60;
	_Times = 10;
	_timeLeft = 0;
	while {_Times > 0} do
		{
			_timeLeft = _timeLeft + 10;
			_Wheat setVariable ["growTime", _timeLeft];
			_Times = _Times - 1;

			switch (_timeLeft) do
			{
				case 10:
				{
					HRP_Test = _Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 1.5];
				};
				case 20:
				{
					HRP_Test = _Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 1];
				};
				case 50:
				{
					HRP_Test = _Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 0.75];
				};
				case 60:
				{	
					HRP_Test = _Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 0.5];
				};	
				case 70:
				{	
					HRP_Test = _Wheat setpos [_Position select 0, _Position select 1, (_Position select 2) - 0.25];
				};	
			};
			sleep _Time;
		};

	waitUntil {_Times <= 0};

	_Wheat setpos [_Position select 0, _Position select 1, _Position select 2];

	_Wheat setVariable ["canHarvest", true];
};		