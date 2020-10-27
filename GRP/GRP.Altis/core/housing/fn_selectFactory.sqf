//selectFactory
//Author: TheWolek
_faktory = _this select 0;
CarSelected = true;
sleep (round(random 60));
_spawnPoints = [];
_cars = [];
_topickupCar = selectRandom _cars;
_pickuplocation = selectRandom _spawnPoints;
Pickupposition = (getMarkerPos (format ["CarMarkerPickup_%1",_pickuplocation select 0]));

_className = typeOf _faktory;
_houseConfig = missionConfigFile >> "Housing" >> worldName >> _className;

_config = [_garageConfig,_houseConfig] select {isClass _x};
if (_config isEqualTo []) exitWith {};

_config = _config select 0;
private _dir = getNumber(_config >> "garageSpawnDir");
private _mTwPos = getArray(_config >> "garageSpawnPos");

_trucksp = [(_faktory modelToWorld _mTwPos),((getDir _faktory) + _dir)];
veh = "" createVehicle _trucksp;
veh allowDammage false;
uiSleep 0.8;
veh allowDammage true;

hint "Ciężarówka na pojazd czeka na ciebie przy twoim hangarze";

waitUntil { vehicle player == veh; };

pickuplocationMarker = createMarkerLocal ["Car", Pickupposition];
pickuplocationMarker setMarkerShapeLocal "ICON";
pickuplocationMarker setMarkerTypeLocal "mil_box";
pickuplocationMarker setMarkerTextLocal "Pickup Location";

PickupCar = _topickupCar createVehicle Pickupposition;
PickupCar lock 2;
PickupCar allowDammage false;
player setVariable["carloaded",false,true];

sleep 1;
hint "Dojedź do zaznaczonego punktu na mapie i załaduj pojazd";

waitUntil { (player distance PickupCar) < 30; };

deleteMarkerLocal pickuplocationMarker;
hint "Wysiądź i załaduj pojazd";

PickupCar addAction["Załaduj",life_fnc_loadCar];

waitUntil { (player distance _faktory) < 30; };

_faktory setVariable [_topickupCar,true,true];
deleteVehicle PickupCar;
hint "pojazd dostarczony";