/*
	Author: Ben Harris
	Description: Spawns the Ores via Config
*/

HRP_fnc_oreSpawn = {
	
	_ores = (missionNamespace getVariable "HRP_Ores");
	{
		deleteVehicle _x;
	} forEach _ores;
	
	_ores = [];

	for "_i" from 1 to 30 do {
		{
			_AorB = round (random 4);
			HRP_Pos = getMarkerPos (_x select 0);

			HRP_xPos = round (random 50);
			HRP_yPos = round (random 50);

			_object = _x select 2;

			switch (_AorB) do
			{
				case 0:
				{
					HRP_orePos = [(HRP_Pos select 0) + HRP_xPos, (HRP_Pos select 1) + HRP_yPos, (HRP_Pos select 2)];
				};
				case 1:
				{
					HRP_orePos = [(HRP_Pos select 0) + HRP_xPos, (HRP_Pos select 1) + HRP_yPos, (HRP_Pos select 2)];
				};
				case 2:
				{
					HRP_orePos = [(HRP_Pos select 0) - HRP_xPos, (HRP_Pos select 1) - HRP_yPos, (HRP_Pos select 2)];
				};
				case 3:
				{
					HRP_orePos = [(HRP_Pos select 0) + HRP_xPos, (HRP_Pos select 1) - HRP_yPos, (HRP_Pos select 2)];
				};
				case 4:
				{
					HRP_orePos = [(HRP_Pos select 0) - HRP_xPos, (HRP_Pos select 1) + HRP_yPos, (HRP_Pos select 2)];
				};
			};

			_ore = _object createVehicle HRP_orePos;
			_ores pushBack _ore;
			_ore setVariable ["mined", 0, true];
		} foreach HRP_mineArea;
	};

	missionNamespace setVariable ["HRP_Ores", _ores, true];
};