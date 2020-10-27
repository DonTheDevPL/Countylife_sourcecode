//seizeItems
//Author: TheWolek
player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
_clear = nearestObjects [player,["weaponholder"],3];
_clear = _clear + nearestObjects [player,["GroundWeaponHolder"],3];
_clear = _clear + nearestObjects [player,["WeaponHolderSimulated"],3];
_clear = _clear + nearestObjects [player,["plp_ct_PlasticBoxGrey"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
	_destroyed = _destroyed + 1;
	deleteVehicle (_clear select _i);
};

titleText["Skonfiskowałeś przedmioty","PLAIN"];