/*
	Author: Ben Harris
	Description: Handles switching pages in 'HRP_Phone_newsList'
*/
HRP_fnc_switchNewsPage = {
	params["_type"];
		if (_type == 1) then {
			HRP_Page = HRP_Page + 1;
			if (HRP_Page >= 2) then {
				ctrlShow [1609, true];
				ctrlShow [7325, true];
			};
			if (HRP_Page == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
			if (HRP_Page == 2 && count HRP_News > 6 && count HRP_News < 12) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};


			if (HRP_Page == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
		} else {
			HRP_Page = HRP_Page - 1;
			if (HRP_Page == 1) then {
				ctrlShow [1609, false];
				ctrlShow [7325, false];
			};

			if (HRP_Page == 1 && count HRP_News > 6) then {
					ctrlShow [1610, true];
					ctrlShow [7324, true];
			};
		};

		[false, HRP_Page] call HRP_fnc_openNewsApp;	
};
