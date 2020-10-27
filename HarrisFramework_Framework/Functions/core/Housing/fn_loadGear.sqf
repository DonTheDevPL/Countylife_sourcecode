/*
	Author: Ben Harris
	Description: Loads Gear into Crate at House POST Query
*/
//[[["Container","B_supplyCrate_F",[16795.2,12625.5,-0.0249023]],["B_Kitbag_mcamo","B_Kitbag_mcamo"],[],[],[]]]
// [cursorObject] call HRP_fnc_initLoadGear
HRP_fnc_loadGear = {
	params ["_QueryArray", "_player", "_ct"];
	{

		HRP_Array = _x;
		{
			HRP_Array2 = _x select 0;
			HRP_ContainerArray = HRP_Array2 select 0;
			HRP_BagsArray = HRP_Array2 select 1;
			HRP_MagsArray = HRP_Array2 select 2;
			HRP_WepsArray = HRP_Array2 select 3;
			HRP_ItemsArray = HRP_Array2 select 4;
			
			HRP_ContainerID = HRP_ContainerArray select 1;
			HRP_ContainerPOS = call compile (HRP_ContainerArray select 2);

			_container = HRP_ContainerID createVehicle HRP_ContainerPOS;
			_container setPos HRP_ContainerPOS;
			_container allowDamage false;
			_container enableSimulation true;

			clearMagazineCargoGlobal _container;
			clearWeaponCargoGlobal _container;
			clearItemCargoGlobal _container;
			clearBackpackCargoGlobal _container;

			{
				_container addBackpackCargoGlobal [_x, 1];
			} foreach HRP_BagsArray;

			{
				_container addMagazineCargoGlobal [_x, 1];
			} foreach HRP_MagsArray;

			{
				_container addWeaponCargoGlobal [_x, 1];
			} foreach HRP_WepsArray;

			{
				_container addItemCargoGlobal [_x, 1];
			} foreach HRP_ItemsArray;

		} foreach HRP_Array;

		[_ct] spawn HRP_fnc_houseGearDelete;

	} foreach _QueryArray;
};
