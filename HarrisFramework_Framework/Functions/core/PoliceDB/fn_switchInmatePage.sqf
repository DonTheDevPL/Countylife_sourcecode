/*
	Author: Ben Harris
	Description: Switches the Page that lists inmates
*/
HRP_fnc_switchInmatePage = {
	params["_type"];
		if (_type == 1) then {
			HRP_prisonersPage = HRP_prisonersPage + 1;
			if (HRP_prisonersPage == 3) then {
				ctrlShow [1600, false];
				ctrlShow [1601, true];
			};
			if (HRP_prisonersPage == 2 && count HRP_Prisoners > 8 && count HRP_Prisoners < 17) then {
				ctrlShow [1600, false];
				ctrlShow [1601, true];
			};
		} else {
			HRP_prisonersPage = HRP_prisonersPage - 1;

			if (HRP_prisonersPage == 1 && count HRP_Prisoners > 8) then {
				ctrlShow [1600, true];
				ctrlShow [1601, false];
			};

			if (HRP_prisonersPage == 2 && count HRP_Prisoners > 17) then {
				ctrlShow [1600, true];
				ctrlShow [1601, true];
			};
		};

		[false, HRP_prisonersPage] call HRP_fnc_listInmates;	
};