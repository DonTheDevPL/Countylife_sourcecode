/*
	Author: Ben Harris
	Description: Updates Price and Displays Vehicle
*/
HRP_fnc_vehicleUpdate = {

	deleteVehicle VehShop;

	_index = lbCurSel 1500;
	_data = lbData [1500, _index];
	_dataArray = call compile _data;
	Life_curPrice = _dataArray select 2;
	Life_Car = _dataArray select 0;

	Life_curPrice = call compile Life_curPrice;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_viplevel > 0) then {
		_vipamount = 10 + (10*_viplevel);

		Life_curPrice = Life_curPrice - (Life_curPrice/_vipamount); // Removes  cost if VIP
	};

	
	ctrlSetText [1783, "Price: $" + str Life_curPrice];

	Life_ItemID = _dataArray select 0;
	Life_ItemType = _dataArray select 1;

	_newcar = Life_Car createVehicleLocal [random 1200,random 1200,random 1200 + 50];
	_newcar allowDamage false;
	HRP_activeLocalCars pushBack _newcar;

	waitUntil {isNull VehShop};

	VehShop = _newcar;
	VehShop setposAtl HRP_vehPos;
	VehShop setDir 200;
};