/*
	Author: Ben Harris
	Description: Opens the Threat level Changer
*/

HRP_fnc_openChangeThreatLevel = {

	createDialog "HRP_PoliceDB_threatLevel";

	ctrlSetText [1000, (missionNamespace getVariable "threatLevel")];
};

