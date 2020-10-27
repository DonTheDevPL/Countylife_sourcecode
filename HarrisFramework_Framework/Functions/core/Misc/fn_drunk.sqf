/*
	Author: Ben Harris
	Description: Effects for when you're dunk
*/

HRP_fnc_drunk = {
	params["_sleepTime"];

	for "_i" from 0 to 5 do {
		sleep _sleepTime;
		[] spawn KK_fnc_forceRagDoll;
	};
};