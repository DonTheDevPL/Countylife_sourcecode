/*
	Author: Ben Harris
	Description: Handles switching of Job Page
*/
HRP_fnc_switchJobPage = {
	params["_type"];
		if (_type == 1) then {
			HRP_jobsPage = HRP_jobsPage + 1;
			if (HRP_jobsPage >= 2) then {
				ctrlShow [1609, true];
				ctrlShow [7325, true];
			};
			if (HRP_jobsPage == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
			if (HRP_jobsPage == 2 && count HRP_Jobs > 6 && count HRP_Jobs < 12) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};


			if (HRP_jobsPage == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
		} else {
			HRP_jobsPage = HRP_jobsPage - 1;
			if (HRP_jobsPage == 1) then {
				ctrlShow [1609, false];
				ctrlShow [7325, false];
			};

			if (HRP_jobsPage == 1 && count HRP_Jobs > 6) then {
				ctrlShow [1610, true];
				ctrlShow [7324, true];
			};
		};

		[false, HRP_jobsPage] call HRP_fnc_openJobsApp;	
};
