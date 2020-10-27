/*
	Author: Ben Harris
	Description: Switches the Messages Page
*/

HRP_fnc_switchMessagePage = {
	params["_type"];
		if (_type == 1) then {
			HRP_messagesPage = HRP_messagesPage + 1;
			if (HRP_messagesPage >= 2) then {
				ctrlShow [1609, true];
				ctrlShow [7325, true];
			};
			if (HRP_messagesPage == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
			if (HRP_messagesPage == 2 && count HRP_Messages > 5 && count HRP_Messages < 11) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};


			if (HRP_messagesPage == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
		} else {
			HRP_messagesPage = HRP_messagesPage - 1;
			if (HRP_messagesPage == 1) then {
				ctrlShow [1609, false];
				ctrlShow [7325, false];
			};

			if (HRP_messagesPage == 1 && count HRP_Messages > 5) then {
				ctrlShow [1610, true];
				ctrlShow [7324, true];
			};

			if (HRP_messagesPage == 2 && count HRP_Messages > 11) then {
				ctrlShow [1610, true];
				ctrlShow [7324, true];
			};
		};

		[false, HRP_messagesPage] call HRP_fnc_listMessages;	
};