/*
	Author: Ben Harris
	Description: Allows you to see multiple pages of Contacts
*/
HRP_fnc_switchContactPage = {
	params["_type"];
		if (_type == 1) then {
			HRP_contactsPage = HRP_contactsPage + 1;
			if (HRP_contactsPage >= 2) then {
				ctrlShow [1609, true];
				ctrlShow [7325, true];
			};
			if (HRP_contactsPage == 3) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
			if (HRP_contactsPage == 2 && count HRP_Contacts > 6 && count HRP_Contacts < 12) then {
				ctrlShow [1610, false];
				ctrlShow [7324, false];
			};
		} else {
			HRP_contactsPage = HRP_contactsPage - 1;
			if (HRP_contactsPage == 1) then {
				ctrlShow [1609, false];
				ctrlShow [7325, false];
			};

			if (HRP_contactsPage == 1 && count HRP_Contacts > 6) then {
				ctrlShow [1610, true];
				ctrlShow [7324, true];
			};

			if (HRP_contactsPage == 2 && count HRP_Contacts > 12) then {
				ctrlShow [1610, true];
				ctrlShow [7324, true];
			};
		};

		[0, HRP_contactsPage] call HRP_fnc_listContacts;	
};
