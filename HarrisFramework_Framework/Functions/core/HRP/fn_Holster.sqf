HRP_fnc_Holster = {
	if (HRP_Holstered == 0) then {
            curWep_Holster = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
            player switchCamera cameraView;
            HRP_Holstered = 1;
 	} else {
        if(curWep_Holster in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
            player selectWeapon curWep_Holster;
            HRP_Holstered = 0;
        };
    };
};