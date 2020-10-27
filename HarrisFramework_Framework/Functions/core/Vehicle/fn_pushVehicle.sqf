/*
	Author: George Thurston
	Description: Can you read?? - Pushes a Vehicle
*/

HRP_fnc_pushVehicle = {
    private["_veh","_direct","_vel","_speed"];
    params["_ct"];

    _veh = vehicle _ct;
    _direct = direction player;
    _vel = velocity _veh;
    _speed = 0;
    if !(local _veh) exitWith {hint "There is not a vehicle near you!";};

    _speed = _speed + 10;

    _veh setVelocity [(_vel select 0) + (sin _direct * _speed), (_vel select 1) + (cos _direct * _speed), (_vel select 2)];
};    