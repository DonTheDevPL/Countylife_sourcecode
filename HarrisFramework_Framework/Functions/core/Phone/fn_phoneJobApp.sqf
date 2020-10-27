/*
	Author: Ben Harris
	Description: Submits App for Job
*/

HRP_fnc_phoneJobApp = {
	[] spawn { 
		["Aplikacja wysłana", "Wsyłałeś aplikację do tej pracy", true] spawn HRP_fnc_Notifications;

		sleep HRP_phoneAppTime;

		_value = round (random 10);
		if (_value <= 3) exitWith { ["Aplikacja odrzucona", "Możesz spróbowac ponownie", true] spawn HRP_fnc_Notifications;};


		["Aplikacja zaakceptowana", "Twoja aplikacja została przyjęta", true] spawn HRP_fnc_Notifications;

		_jobs = player getVariable "approvedJobs";
		_jobs pushBack HRP_jobVar;
		player setVariable ["approvedJobs", _jobs, true];
	};
};