HRP_fnc_barriergui = {
	disableSerialization;
	_display = (findDisplay 1705);
	_barrierlist = _display displayCtrl 2686;

	_barrierlistarray = 
	[
	"Duża barierka",
	"Mała barierka",
	"Plastikowa barierka",
	"Pachołek",
	"Słupek",
	"Taśma 4m",
	"Taśma 8m"
	];

	lbclear _barrierlist;
	{
	_barrierlist lbAdd _x;
	}foreach _barrierlistarray;
};