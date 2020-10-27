//useDrugTable
//Author: TheWolek
[false,"DrugTable",1] call life_fnc_handleInv;
table = "Land_Sink_F" createVehicle [0,0,0];
sleep 0.5;
table enableSimulation false;
table attachTo[player,[0,1.5,1]];
holdingDrugtable = true;
PlaceAction = player addAction["Postaw stół",life_fnc_dropDrugTable];