HRP_fnc_getPolice = {
	_return = [];
	{
		if (_x getVariable ["cop", 0] > 0) then {
			_return pushBack _x;
		};
	}forEach allPlayers;

	_return;
};