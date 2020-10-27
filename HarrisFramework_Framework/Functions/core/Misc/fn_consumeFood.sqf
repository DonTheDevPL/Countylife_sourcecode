/*
	Author: Ben Harris
	Description: Read the Title ^^
*/

HRP_fnc_consumeFood = {
	params["_type", "_ammount", "_id"];

	closeDialog 0;

	switch (_type) do
	{
		case 2:
		{
			if ((HRP_Thirst - _ammount) < 0) then {
				HRP_Thirst = 0;		
			} else {
				HRP_Thirst = HRP_Thirst - _ammount;
			};
		};
		case 1:
		{
			if ((HRP_Hunger - _ammount) < 0) then {
				HRP_Hunger = 0;
			} else {
				HRP_Hunger = HRP_Hunger - _ammount;
			};
		};
	};

	sleep 1;
	player removeItem _id;
};