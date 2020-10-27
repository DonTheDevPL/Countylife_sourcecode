/*
	Author: Nicholas Jo'Foski
	Description: Restarts the server every 4 hours.
	Add to fn_Configuration.sqf: HRP_autoRestart = true;
*/
HRP_fnc_serverRestart = {
	params["_willRestart"];

	skipTime 2;

	if (isNil "_willRestart") then {
		_willRestart = false;
	};

	/*
	if (_willRestart) then {
		sleep 300;
		["[Restart Warning] The server will be restarting in 4 hours"] remoteExecCall ["HRP_fnc_serverMsg", 0];
		waitUntil {time >= 10800};
		["[Restart Warning] The server will be restarting in 1 hour."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 12600};
		["[Restart Warning] The server will be restarting in 30 minutes."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 13800}; 
		["[Restart Warning] The server will be restarting in 10 minutes."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 14100}; 
		["[Restart Warning] The server will be restarting in 5 minutes."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 14340}; 
		["[Restart Warning] The server will be restarting in 1 minute."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 14370}; 

		waitUntil {time >= 14395};
		["[Restart Warning] The server will be restarting now."] remoteExecCall ["HRP_fnc_serverMsg", 0];

		waitUntil {time >= 14400};
		"2yMqHS/{d5%GN5q%YdQyjac" serverCommand "#shutdown";
	};
	*/
};

//[NOID <no shape>,C Alpha 1-1:1 (Ben Harris),934465: mosquito.p3d,934467: fly.p3d,934479: honeybee.p3d,934496: fly.p3d,934469: honeybee.p3d,934475: honeybee.p3d,20a3d24ab00# 933182: red_static_p9.p3d REMOTE,934459: fly.p3d,934483: honeybee.p3d,20a3d248b80# 933185: red_static_p7.p3d REMOTE,934489: honeybee.p3d,934470: fly.p3d,934466: fly.p3d]