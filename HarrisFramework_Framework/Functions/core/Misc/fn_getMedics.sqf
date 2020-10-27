HRP_fnc_getMedics = {
	_return = [];
	{
		if (_x getVariable ["ems", 0] > 0) then {
			_return pushBack _x;
		};
	}forEach allPlayers;

	_return;
};