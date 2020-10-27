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
    
        //dowod
        life_actions pushBack (player addAction["<t color = '#00FF00'>pokaż dowód</t>",life_fnc_showId,0,6,false,false,"",'isPlayer cursorObject && vehicle player == player && cursorObject isKindOf "man"']);
    };
    
    //Cops
    case west: { 
        life_actions pushBack (player addAction["Skonfiskuj",life_fnc_seizeItems,"",7,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["plp_ct_PlasticBoxGrey"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']);

        life_actions pushBack (player addAction["<t color = '#00FF00'>pokaż odznake</t>",life_fnc_showbadge,1,6,false,false,"",'isPlayer cursorObject && vehicle player == player && cursorObject isKindOf "man"']);
    };
    
    //EMS
    case independent: { };

};
life_actions pushBack (player addAction["<t color = '#00871d'>Zapnij pasy</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);
life_actions pushBack (player addAction["<t color = '#ad0d01'>Odepnij pasy</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);