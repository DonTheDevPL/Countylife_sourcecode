//dropDrugTable
//Author: TheWolek
if!((player distance (nearestBuilding player)) > 15) exitWith {hint "Musisz być blisko jakiegoś budynku";};
detach table;
table enableSimulation true;
player removeAction PlaceAction;
tank = "Land_GasTank_01_blue_F" createVehicle position player;
bucket = "Land_PlasticBucket_01_closed_F" createVehicle position player;

tank attachTo[table,[0.5,-0.9,-0.3]];
bucket attachTo[table,[-0.4,-0.9,-0.4]];
hint "We need to cook Mr.White";
holdingDrugtable = false;
cooking = true;

CookActionStart = table addAction ["Zacznij Gotować",{
	[]spawn life_fnc_methcooking;
	drugValue = 0;
	Table removeAction CookActionStart;
	Action1 = Table addAction ["Rozpuść pseudoefedryne",{["Pseudo"] call life_fnc_updateCooking;}];
	Action2 = table addAction ["Dodaj amfetaminy",{["Amfetamina"] call life_fnc_updateCooking;}];
	Action3 = table addAction ["Odkręc gaz",{["Heat"] call life_fnc_updateCooking;}];
	Action4 = table addAction ["Zakręć gaz",{["Cool"] call life_fnc_updateCooking;}];
	Action5 = table addAction ["Opróznij kolbę z gazu",{["Release"] call life_fnc_updateCooking;}];
}];
