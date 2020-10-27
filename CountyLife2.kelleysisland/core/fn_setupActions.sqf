/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/

life_actions = [];

switch (playerSide) do {

    //Civilian
    case civilian: {
        //Drop fishing net
        life_actions pushBack (player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']);

        //Rob person
        life_actions pushBack (player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
		
		//Seatbelt
		life_actions pushBack (player addAction["<t color = '#009900'>Zapnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' !life_seatbelt && vehicle player != player ']);
		life_actions pushBack (player addAction["<t color = '#ff3300'>Odepnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' life_seatbelt && vehicle player != player ']);
	};
    
    //Cops
    case west: {
		life_actions pushBack (player addAction["Usuń obiekty",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']);
		//Seatbelt
		life_actions pushBack (player addAction["<t color = '#009900'>Zapnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' !life_seatbelt && vehicle player != player ']);
		life_actions pushBack (player addAction["<t color = '#ff3300'>Odepnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' life_seatbelt && vehicle player != player ']);
	};
    
    //EMS
    case independent: { 
    //Seatbelt
		life_actions pushBack (player addAction["<t color = '#009900'>Zapnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' !life_seatbelt && vehicle player != player ']);
		life_actions pushBack (player addAction["<t color = '#ff3300'>Odepnij pasy</t>",life_fnc_seatbelt,"",6,false,false,"",' life_seatbelt && vehicle player != player ']);
    };
};
life_actions = [player addAction["<t color='#cc9900'>Ulecz się</t>",life_fnc_heal,"",99,false,false,"",' vehicle player == player && (damage player) > 0.01 && ("Medikit" in (Backpackitems player)) ']];
life_actions = life_actions + [player addAction["<t color='#660033'>Włóż knebel</t>",life_fnc_gagAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget getVariable ["gagged",FALSE]) && life_inv_gagkit > 0']];
life_actions = life_actions + [player addAction["<t color='#cc6699'>Wyciągnij knebel</t>",life_fnc_removeGagAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget getVariable ["gagged",FALSE])']];