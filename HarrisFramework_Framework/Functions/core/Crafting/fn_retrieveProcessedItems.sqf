/*
	Author: Ben Harris
	Description: Retrieves the Processed Item from the Furnace
*/

HRP_fnc_retrieveProcessedItems = {
	params["_ct"];

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	
	player addItem (cursorObject getVariable "processedItems");

	["Sukces", "Zabrałeś Przedmioty.", true] spawn HRP_fnc_Notifications;

	_ct setVariable ["unitInProcessing", nil, true];
	_ct setVariable ["processedItems", nil, true];
};