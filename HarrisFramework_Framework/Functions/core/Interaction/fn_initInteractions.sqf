HRP_fnc_initInteractions = {
	HRP_InteractionMenuConfig = [
		[
			["!(cursorObject isKindOf 'Car')", "!(cursorObject isKindOf 'Man')"],
			["Player Info", "[player] call HRP_fnc_openInfo"]
		],
		[
			["count (nearestObjects [player ,['groundWeaponHolder'], 5]) > 0", "player getVariable 'cop' > 0"],
			["Skonfiskuj", "[0] call HRP_fnc_seizeItems"]
		],
		[
			["typeOf cursorObject == 'plp_ct_PlasticBoxGrey'", "player getVariable 'cop' > 0"],
			["Usuń", "[1] call HRP_fnc_seizeItems"]
		],
		[
			["isPlayer cursorObject"],
			["Daj klucze", "[cursorObject] call HRP_fnc_openGiveKeys"]
		],
		[
			["isPlayer cursorObject"],
			["pseudonim", "[cursorObject] call HRP_fnc_openSetName"]
		],
		[
			["(cursorObject in HRP_Cars || (cursorObject getVariable ['ownerUID', false] isEqualTo getPlayerUID player))", "(player distance cursorObject) <= 8"],
			["Użyj klucza", "[cursorObject] call HRP_fnc_useKey"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "(player distance cursorObject) <= 8", "(damage cursorObject) < 0.99", "'ToolKit' in (items player)"],
			["Napraw", "[cursorObject] spawn HRP_fnc_repairVehicle"]
		],
		[
			["cursorObject isKindOf 'Man'", "isPlayer cursorObject", "player getVariable 'cop' >= 10"],
			["Ranga", "[cursorObject] spawn HRP_fnc_openWhitelistMenu"]
		],
		[
			["cursorObject isKindOf 'Car'", "player getVariable ['cop', 0] > 0", "(player distance cursorObject) <= 8"],
			["Rejestracja", "[cursorObject] call HRP_fnc_getOwner"]
		],
		[
			["typeOf cursorObject == 'A3L_Workbench'", "(player distance cursorObject) <= 8"],
			["Crafting", "[] call HRP_fnc_openCraftingMenu"]
		],
		[
			["typeOf cursorObject isEqualTo 'A3L_MoneyPile'", "(player distance cursorObject) <= 8", "(!(cursorObject getVariable 'recentlyRobbed') || isNil {cursorObject getVariable 'recentlyRobbed'})"],
			["Okradnij", "[cursorObject] spawn HRP_fnc_takeCash"]
		],
		[
			["typeOf cursorObject isEqualTo 'A3L_MoneyPile'", "(player distance cursorObject) <= 8", "HRP_lockboxesrobbed < 5"],
			["Weź hajs", "[] spawn HRP_fnc_robLockBox"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "((player getVariable ['cop', 0] > 0) || (player getVariable ['ems', 0] > 0))", "(player distance cursorObject) <= 8", "(damage cursorObject) < 0.99"],
			["Odholuj", "[cursorObject, 1] spawn HRP_fnc_impoundVehicle"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "player getVariable ['cop', 0] > 0", "(player distance cursorObject) <= 8" , "(damage cursorObject) < 0.99"],
			["Usuń", "[cursorObject, 2] spawn HRP_fnc_impoundVehicle"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "player getVariable ['ems', 0] > 0", "(player distance cursorObject) <= 8"],
			["Usuń", "[cursorObject, 2] spawn HRP_fnc_impoundVehicle"]
		],
		[
			["typeOf cursorObject in HRP_processingUnitsInit", "isNil {cursorObject getVariable 'processedItems'}", "(player distance cursorObject) <= 8", "(isNil{cursorObject getVariable 'unitInProcessing'})"],
			["Przepalarka", "[cursorObject] spawn HRP_fnc_openSmeltingMenu"]
		],
		[
			["!(isNil {cursorObject getVariable 'weedReady'})", "(player distance cursorObject) <= 8"],
			["Zbierz", "[cursorObject] spawn HRP_fnc_gatherWeed"]
		],
		[
			["typeOf cursorObject isEqualTo 'JDPot'", "(player distance cursorObject) <= 8"],
			["Podnieś", "[cursorObject] spawn HRP_fnc_pickUpPot"]
		],
		[
			["typeOf cursorObject isEqualTo 'JDPot'", "(player distance cursorObject) <= 8", "'W_weedSeeds' in (items player)", "(isNil {cursorObject getVariable 'growingPlant'})"],
			["Zasadź", "[cursorObject] spawn HRP_fnc_plantWeed"]
		],
		[
			["!(isNil {player getVariable 'carryingPot'})"],
			["Puść", "[cursorObject] spawn HRP_fnc_dropPot"]
		],
		[
			["typeOf cursorObject isEqualTo 'JDPot'", "(player distance cursorObject) <= 8"],
			["Zabierz", "[cursorObject] spawn HRP_fnc_removePot"]
		],
		[
			["typeOf cursorObject in HRP_processingUnitsInit", "!(isNil {cursorObject getVariable 'processedItems'})", "(player distance cursorObject) <= 8"],
			["Zabierz produkty", "[cursorObject] spawn HRP_fnc_retrieveProcessedItems"]
		],
		[
			["(typeOf cursorObject) in HRP_houseArray", "(player distance cursorObject) <= (cursorObject getVariable 'houseRadius')", "isNil {cursorObject getVariable 'Purchased'}"],
			["Kup", "[cursorObject] spawn HRP_fnc_openBuyHouse"]
		],
		[
			["cursorObject in HRP_Houses", "(player distance cursorObject) <= (cursorObject getVariable 'houseRadius')", "!(isNil {cursorObject getVariable 'Purchased'})", "!(cursorObject getVariable 'Locked')"],
			["Zamknij", "[cursorObject] spawn HRP_fnc_lockHouse"]
		],
		[
			["cursorObject in HRP_Houses", "(player distance cursorObject) <= (cursorObject getVariable 'houseRadius')", "!(isNil {cursorObject getVariable 'Purchased'})", "(cursorObject getVariable 'Locked')"],
			["Otwórz", "[cursorObject] spawn HRP_fnc_unlockHouse"]
		],
		[
			["cursorObject in HRP_Houses", "(player distance cursorObject) <= (cursorObject getVariable 'houseRadius')", "!(isNil {cursorObject getVariable 'Purchased'})"],
			["Sprzedaj", "[cursorObject] spawn HRP_fnc_openSellHouse"]
		],
		[
			["(typeOf cursorObject) in HRP_furnitureTypes", "(player distance cursorObject) <= 8", "isNil {player getVariable 'carryingObject'}", "(isNil {cursorObject getVariable 'publicFurniture'})"],
			["Podnieś", "[cursorObject] spawn HRP_fnc_pickUpFurniture"]
		],
		[
			["!(isNil {player getVariable 'carryingObject'})"],
			["Puść", "[cursorObject] spawn HRP_fnc_dropFurniture"]
		],
		[
			["isPlayer cursorObject", "(player distance cursorObject) <= 8"],
			["Daj pieniądze", "[cursorObject] call HRP_fnc_giveCash"]
		],
		[
			["typeOf cursorObject == 'plp_bo_CrateLaRosa' "],
			["Otwórz", "[cursorObject] call HRP_fnc_gatherWreckItems"]
		],
		/*
		[
			["HRP_Holstered == 1", "alive player", "curWep_Holster != ''", "!(weapons player isEqualTo [])"],
			["Wyciągnij broń", "[] call HRP_fnc_Holster"]
		],
		[
			["HRP_Holstered == 0", "currentWeapon player != ''", "alive player"],
			["Schpwaj broń", "[] call HRP_fnc_Holster"]
		],
		*/
		[
			["('W_handcuff' in (items player)) || ('W_handcuff' in (magazines player))", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 3", "isPlayer cursorObject", "!(cursorObject getVariable 'unconscious')", "!(player getVariable 'cuffed')"],
			["Zakuj", "[cursorObject] spawn HRP_fnc_cuff"]
		],
		[
			["('W_cuffkeys' in (items player)) || ('W_cuffkeys' in (magazines player))", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 3", "isPlayer cursorObject", "!(cursorObject getVariable 'unconscious')"],
			["Rozkuj", "[cursorObject] call HRP_fnc_unCuff"]
		],
		[
			["cursorObject isKindOf 'Man'", "(cursorObject getVariable ['cuffed',false] || player getVariable ['Cop', 0] > 0 || cursorObject getVariable ['identityShowing', false])", "(player distance cursorObject) <= 3", "isPlayer cursorObject"],
			["Dowód", "[cursorObject] call HRP_fnc_openInfo"]
		],
		/*
		[
			["player getVariable ['identityShowing', false]", "!(isPlayer cursorObject)"],
			["Schowaj paszport", "player setVariable ['identityShowing', nil, true]"]
		],
		[
			["!(player getVariable ['identityShowing', false])", "!(isPlayer cursorObject)"],
			["Pokaż paszport", "player setVariable ['identityShowing', true, true]"]
		],
		*/
		[
			["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'HRP_Prison')) <= 75", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 5"],
			["Aresztuj", "[cursorObject] call HRP_fnc_openArrestMenu"]
		],
		[
			["('W_legshackles' in (items player)) || ('W_legshackles' in (magazines player))", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 3", "cursorObject getVariable ['Shackled',true]", "!(cursorObject getVariable 'unconscious')"],
			["Zakuj Nogi", "[cursorObject, 1] spawn HRP_fnc_LegCuff"]
		],
		[
			["('W_cuffkeys' in (items player)) || ('W_cuffkeys' in (magazines player))", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['Shackled',false]", "(player distance cursorObject) <= 3", "isPlayer cursorObject", "!(cursorObject getVariable 'unconscious')"],
			["Rozkuj nogi", "[cursorObject, 2] call HRP_fnc_LegCuff"]
		],
		[
			["(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'","isPlayer cursorObject", "cursorObject getVariable 'cuffed'", "(player distance cursorObject) <= 3"],
			["Eskortuj", "[cursorObject] call HRP_fnc_escort"]
		],
		[
			["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
			["Przestań", "[] call HRP_fnc_escortStop"]
		],
		[
			["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 8"],
			["Do pojazdu", "[cursorObject] call HRP_fnc_putInCar"]
		],
		[
			["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 8"],
			["Wyciągnij", "[cursorObject] call HRP_fnc_pullOut"]
		],
		[
			["!(isNil {cursorObject getVariable 'centrelink'})", "(player distance cursorObject) <= 8", "player getVariable ['outStandingPay', 0] > 0"],
			["Wypłata", "[] call HRP_fnc_payChequePickup"]
		],
		[
			["cursorObject isKindOf 'plp_ctm_PlasticBoxGrey'", "player getVariable ['cop', 0] > 0", "(player distance cursorObject) <= 8"],
			["Podnieś", "[cursorObject] call HRP_fnc_destroyCrate"]
		],
		[
			["isPlayer cursorObject", "player getVariable ['cop', 0] > 0", "(player distance cursorObject) <= 3", "!(HRP_patDownCoolDown)", "cursorObject getVariable 'cuffed'"],
			["Przeszukaj", "[cursorObject, 1] spawn HRP_fnc_patDown"]
		],
		[
			["isPlayer cursorObject", "player getVariable ['cop', 0] > 0", "cursorObject getVariable ['cuffed',false]", "!(HRP_patDownCoolDown)", "(player distance cursorObject) <= 3"],
			["Rewizja", "[cursorObject, 2] spawn HRP_fnc_patDown"]
		],
		[
			["cursorObject isKindOf 'Car'", "cursorObject in HRP_Cars", "[20]call HRP_fnc_nearGarageMarker", "(player distance cursorObject) <= 8"],
			["Schowaj", "[cursorObject] call HRP_fnc_storeCar"]
		],
		[
			["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 8"],
			["Garaż", "[cursorObject] call HRP_fnc_openGarage"]
		],
		[
			["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 8", "(locked cursorObject) == 0 || (locked cursorObject) == 1"],
			["Bagażnik", "[cursorObject] call HRP_fnc_openTrunk"]
		],
		[
			["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 8", "(locked cursorObject) == 0 || (locked cursorObject) == 1", "!(isNil{player getVariable 'carryingObject'})"],
			["Schowaj", "[cursorObject] call HRP_fnc_storeInTrunk"]
		],
		[
			["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 8"],
			["Weż pieniądze", "[cursorObject] call HRP_fnc_takeMoney"]
		],
		[
			["!(isNil {cursorObject getVariable 'plantType'})", "(player distance cursorObject) <= 8"],
			["Zbierz", "[cursorObject] call HRP_fnc_Harvest"]
		],
		[
			["!(isNil {cursorObject getVariable 'lockerType'})", "(player distance cursorObject) <= 8"],
			["Otwórz szafkę", "[cursorObject, true] call HRP_fnc_openLocker"]
		],
		[
			["'HRP_wheatSeeds' in (items player)", "(player inArea 'Wheat_Field' || player inArea 'Wheat_Field_1' || player inArea 'Wheat_Field_2')"],
			["Zasiej zboże", "[] spawn HRP_fnc_startWheatFarm"]
		],
		[
			["!(isNil {cursorObject getVariable 'medicalCentre'})", "(player distance cursorObject) <= 8"],
			["Pomoc Medyczna", "[] spawn HRP_fnc_healHospital"]
		],
		[
			["(!(cursorObject getVariable 'unconscious'))", "isPlayer cursorObject", "(damage cursorObject) > 0", "(player distance cursorObject) <= 8", "player getVariable ['ems', -1] > 0"],
			["Ulecz", "[cursorObject] spawn HRP_fnc_treatPatient"]
		],
		[
			["!(isNil {cursorObject getVariable 'dmv'})", "(player distance cursorObject) <= 8"],
			["Licencje", "[HRP_dmvLicenses] call HRP_fnc_openLicenseMenu"]
		],
		[
			["!(isNil {cursorObject getVariable 'policestation'})", "(player distance cursorObject) <= 8"],
			["Licencja na broń", "[HRP_firearmLicenses] call HRP_fnc_openLicenseMenu"]
		],
		[
			["(player distance cursorObject) <= 5", "!(HRP_Robbing)", "(!isNil {cursorObject getVariable 'HRP_Shop'} || !isNil {cursorObject getVariable 'HRP_Clothing_Shop'} || isNil {cursorObject getVariable 'HRP_Vehicle_Shop'})", "!(currentWeapon player isEqualTo '')"],
			["Okradnij", "[cursorObject] spawn HRP_fnc_robShop"]
		],
		[
			["cursorObject isKindOf 'Man'", "(cursorObject getVariable ['Shackled',false] || cursorObject getVariable ['knockedOut', false])", "(player distance cursorObject) <= 8", "!(currentWeapon player isEqualTo '')"],
			["Okradnij", "[cursorObject] spawn HRP_fnc_robPerson"]
		],
		[
			["cursorObject isKindOf 'Man'", "(cursorObject getVariable 'unconscious')", "isPlayer cursorObject"],
			["Weź pieniądze", "[cursorObject] spawn HRP_fnc_grabDeadCash"]
		],
		[
			["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Man'", "cursorObject getVariable 'unconscious'", "(player distance cursorObject) <= 8", "isPlayer cursorObject"],
			["Defibrylator", "[cursorObject] spawn HRP_fnc_revive"]
		],
		[
			["player getVariable ['ems', 0] > 0", "(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'" , "cursorObject getVariable 'unconscious'", "isPlayer cursorObject"],
			["Eskortuj", "[cursorObject] call HRP_fnc_escort"]
		],
		[
			["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'"],
			["Do pojazdu", "[cursorObject] call HRP_fnc_putInCar"]
		],
		[
			["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Car'", "(count (crew cursorObject)) > 0"],
			["Wyciągnij", "[cursorObject] call HRP_fnc_pullOut"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_Shop'})"],
			["Sklep", "[cursorObject] call HRP_fnc_openShop"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_Clothing_Shop'})"],
			["Odzieżowy", "[cursorObject] call HRP_fnc_openClothingShop"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_sellShop'})"],
			["Farmers Market", "[HRP_farmersMarket] call HRP_fnc_openSellItems"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_drugDealer'})"],
			["Dealer narkotyków", "[HRP_drugDealer] call HRP_fnc_openSellItems"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_mineralTrader'})"],
			["Skup Metali", "[HRP_mineralTrader] call HRP_fnc_openSellItems"]
		],
		[
			["!(isNil {cursorObject getVariable 'HRP_Vehicle_Shop'})"],
			["Pojazdy-Sklep", "[cursorObject] call HRP_fnc_openVehicleShop"]
		],
		[
			["!(isNil {cursorObject getVariable 'atm'})", "(player distance cursorObject) <= 8"],
			["Bankomat", "[cursorObject] call HRP_fnc_openATM"]
		],
		[
			["!(isNil {cursorObject getVariable 'bankTeller'})", "(player distance cursorObject) <= 8"],
			["Bankomat", "[cursorObject] call HRP_fnc_openATM"]
		],
		[
			["(isNil {player getVariable 'bankTeller'})", "(player distance cursorObject) <= 8", "'HRP_Bank_Approved' in (player getVariable 'approvedJobs')", "(player getVariable 'currentOccupation') == 'Unemployed'", "!(isNil {cursorObject getVariable 'bankTellerSignUp'})"],
			["Pracuj-Kasjer", "[] call HRP_fnc_bankTellerSignUp"]
		],
		[
			["!(isNil {player getVariable 'bankTeller'})", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'bankTellerSignUp'})"],
			["Przestań Pracować", "[] call HRP_fnc_bankTellerSignOff"]
		],
		[
			["(isNil {player getVariable 'securityGuard'})", "(player distance cursorObject) <= 8", "'HRP_Security_Approved' in (player getVariable 'approvedJobs')", "(player getVariable 'currentOccupation') == 'Unemployed'", "!(isNil {cursorObject getVariable 'bankTellerSignUp'})"],
			["Pracuj-Ochrona", "[] call HRP_fnc_securityGuardSignIn"]
		],
		[
			["!(isNil {player getVariable 'securityGuard'})", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'bankTellerSignUp'})"],
			["Przestań Pracować", "[] call HRP_fnc_securityGuardSignOff"]
		],
		[
			["(isNil {player getVariable 'truckDriver'})", "(player distance cursorObject) <= 8", "(player getVariable 'currentOccupation') == 'Unemployed'", "!(isNil {cursorObject getVariable 'truckSpawnPosition'})", "!(player getVariable 'truckDriverStart')"],
			["Pracuj-Kurier", "[] spawn HRP_fnc_truckDriverSignIn"]
		],
		[
			["!(isNil {player getVariable 'truckDriver'})", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'truckSpawnPosition'})"],
			["Przestań Pracować", "[] call HRP_fnc_truckDriverSignOff"]
		],
		[
			["(isNil {player getVariable 'towTruckDriver'})", "(player distance cursorObject) <= 8", "(player getVariable 'currentOccupation') == 'Unemployed'", "!(isNil {cursorObject getVariable 'towDriverStart'})"],
			["Pracuj-Mechanik", "[] spawn HRP_fnc_towDriverSignIn"]
		],
		[
			["!(isNil {player getVariable 'towTruckDriver'})", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'towDriverStart'})"],
			["Przestań Pracować", "[] call HRP_fnc_towDriverSignOff"]
		],
		[
			["(isNil {player getVariable 'busDriver'})", "(player distance cursorObject) <= 8", "'HRP_Bus_Approved' in (player getVariable 'approvedJobs')", "(player getVariable 'currentOccupation') == 'Unemployed'", "!(isNil {cursorObject getVariable 'busDepot'})"],
			["Pracuj-Kierowca", "[cursorObject] spawn HRP_fnc_busDriverSignUp"]
		],
		[
			["!(isNil {player getVariable 'busDriver'})", "(typeOf vehicle player) in HRP_buses", "isNil {player getVariable 'activeMission'}"],
			["Zacznij kurs", "[] spawn HRP_fnc_busAssignTask"]
		],
		[
			["!(isNil {player getVariable 'busDriver'})", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'busDepot'})"],
			["Przestań Pracować", "[] call HRP_fnc_busDriverSignOff"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "(player distance cursorObject) <= 8", "(isNil {cursorObject getVariable 'roped'})", "(isNil {cursorObject getVariable 'attached'})", "!(isNil {player getVariable 'towTruckDriver'})", "!(typeOf cursorObject in HRP_towTrucks)"],
			["Zaczep Linę", "[cursorObject] call HRP_fnc_ropeCar"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'roped'})", "(isNil {cursorObject getVariable 'attached'})", "!(isNil {player getVariable 'towTruckDriver'})"],
			["Odczep linę", "[cursorObject] call HRP_fnc_unRopeCar"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'ropedTo'})", "(isNil {cursorObject getVariable 'attachedTo'})", "!(isNil {player getVariable 'towTruckDriver'})"],
			["Zaczep", "[cursorObject] spawn HRP_fnc_attachCar"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air' || cursorObject isKindOf 'Sea')", "(player distance cursorObject) <= 8", "!(isNil {cursorObject getVariable 'attachedTo'})", "!(isNil {player getVariable 'towTruckDriver'})"],
			["Odczep", "[cursorObject] call HRP_fnc_detachVehicle"]
		],
		[
			["(cursorObject isKindOf 'Car' || cursorObject isKindOf 'Air')", "(player distance cursorObject) <= 8", "!(isNil {player getVariable 'towTruckDriver'})", "!(isNil {cursorObject getVariable 'iconID'})", "player distance (getMarkerPos 'HRP_impoundLot') <= 50"],
			["Odholuj", "[cursorObject] spawn HRP_fnc_impoundVehicleTow"]
		],
		[
			["alive player"],
			["SYNC", "[] call HRP_fnc_syncData"]
		],
		[
			["!(isNil {cursorObject getVariable 'truckSpawnPosition'})", "!(isNil {player getVariable 'truckDriverStart'})"],
			["Cieżarówka", "[cursorObject] spawn HRP_fnc_createCompanyTruck"]
		],
		[
			["!(isNil {player getVariable 'truckDriver'})", "alive player", "isNil {player getVariable 'activeMission'}"],
			["Weź zlecenie", "[] spawn HRP_fnc_truckDriverAssignTask"]
		],
		[
			["cursorObject getVariable ['signOff',0]>0"],
			["Oddaj pakunek", "[] call HRP_fnc_signPackage"]
		],
		[
			["(currentWeapon player) isEqualTo 'A3L_JackHammer'", "isNil {cursorObject getVariable 'beingRobbed'}", "isNil {cursorObject getVariable 'recentlyRobbed'}"],
			["Okradnij", "[cursorObject] call HRP_fnc_robATM"]
		],
		[
			["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'inRobbery'}) || !(isNil {cursorObject getVariable 'cashToPickup'})"],
			["Zablokuj", "[cursorObject] call HRP_fnc_lockATM"]
		],
		[
			["cursorObject isKindOf 'Car' || cursorObject isKindOf 'Ship'", "(locked cursorObject) == 0 || (locked cursorObject) == 1"],
			["Popchnij", "[cursorObject] call HRP_fnc_pushVehicle"]
		],
		[
			["cursorObject isKindOf 'Car' || cursorObject isKindOf 'Ship' || cursorObject isKindOf 'Air'", "(locked cursorObject) == 0 || (locked cursorObject) == 1"],
			["Obróc", "[cursorObject] call HRP_fnc_unFlipCar"]
		],
		[
			["cursorObject isKindOf 'Man'", "isPlayer cursorObject", "player getVariable ['cop', 0] > 0", "(player distance cursorObject) <= 8"],
			["Mandat", "[cursorObject] call HRP_fnc_openGiveTicket"]
		],
		[
			["(cursorObject getVariable 'locked')", "(player distance cursorObject) <= 8", "'HRP_lockPicks' in items player"],
			["Wytrychuj", "[cursorObject] call HRP_fnc_lockPickVehicle"]
		],
		[
			["player getVariable ['cop', 0] > 0", "vehicle player isKindOf 'Car'"],
			["Baza Danych", "[] call HRP_fnc_openPoliceDatabase"]
		],
		[
			["player getVariable ['copoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 8"],
			["On-Duty", "[1, 0] call HRP_fnc_switchDutyStatus"]
		],
		[
			["player getVariable ['emsoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 8"],
			["On-Duty", "[1, 1] call HRP_fnc_switchDutyStatus"]
		],
		[
			["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 8"],
			["Off-Duty", "[0, 0] call HRP_fnc_switchDutyStatus"]
		],
		[
			["player getVariable ['ems', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 8"],
			["Off-Duty", "[0, 1] call HRP_fnc_switchDutyStatus"]
		],
		[
			["cursorObject getVariable ['loot',0]>0", "(player distance cursorObject) <= 4"],
			["Przeszukaj", "[] spawn HRP_fnc_checkdumpster"]
		],
		[
			["HoldingDrugTable"],
			["Postaw stół", "[] spawn HRP_fnc_dropDrugtable"]
		],
		[
			["cooking", "(typeOf cursorObject) =='Land_Sink_F'"],
			["Złóż stół", "[] spawn HRP_fnc_removeDrugtable"]
		],
		[
			["!(isNil {cursorObject getVariable 'dumpStation'})","(player getVariable 'currentOccupation') == 'Unemployed'","(player distance cursorObject) <= 6"],
			["Pracuj-Śmieciarz", "[cursorObject] spawn HRP_fnc_dumpsterSignUp"]
		],
		[
			["cursorObject getVariable ['full',0]>0","(player getVariable 'currentOccupation') == 'Śmieciarz'","(player distance cursorObject) <= 6"],
			["Zabierz", "[] spawn HRP_fnc_dumpsterTake"]
		],
		[
			["!(isNil {cursorObject getVariable 'dumpStation'})","(player getVariable 'currentOccupation') == 'Śmieciarz'","(player distance cursorObject) <= 6","Trash > 0"],
			["Opróżnij", "[] spawn HRP_fnc_dumpsterDrop"]
		],
		[
			["!(isNil {cursorObject getVariable 'dumpStation'})","(player getVariable 'currentOccupation') == 'Śmieciarz'","(player distance cursorObject) <= 6"],
			["Przestań Pracować", "[cursorObject] spawn HRP_fnc_dumpsterSignOff"]
		],
		[
			["player getVariable ['ems', 0] > 0", "vehicle player == player"],
			["Barierki", "createDialog 'Toni_GUI_Barriergui'"]
		],
		[
			["player getVariable ['cop', 0] > 0", "vehicle player == player"],
			["Barierki", "createDialog 'Toni_GUI_Barriergui'"]
		],
		[
			["player getVariable ['ems', 0] > 0", "cursorObject getVariable 'unconscious'"],
			["Zgon", "[]spawn HRP_fnc_zgonAction"]
		],
		[
			["VehHolding","vehicle player == player"],
			["Spawn", "[]spawn HRP_fnc_dropVeh"]
		],
		[
			["player getVariable ['ems', 0] > 0","(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'","isPlayer cursorObject", "(player distance cursorObject) <= 3"],
			["Eskortuj", "[cursorObject] call HRP_fnc_escort"]
		]
		/*,
		[
			["player getVariable ['fdoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'fireStation'})", "(player distance cursorObject) <= 8"],
			["On-Duty", "[1, 2] call HRP_fnc_switchDutyStatus"]
		],
		[
			["player getVariable ['fd', 0] > 0", "!(isNil {cursorObject getVariable 'fireStation'})", "(player distance cursorObject) <= 8"],
			["Off-Duty", "[0, 2] call HRP_fnc_switchDutyStatus"]
		],
		[
			["player getVariable ['cop' 0] > 0", "!(isNil {cursorObject getVariable 'arsenal'})", "(player distance cursorObject) <= 6"],
			["Zbrojownia", "[cursorObject] spawn HRP_fnc_vars"]
		],		
		[
			["qpaa >= 2"],
			["NIC", "[] spawn HRP_fnc_qpaa"]
		],
		[
			["!(isNil {cursorObject getVariable 'DOJStation'})","(player distance cursorObject) <= 8", "player getVariable ['DOJoffduty', 0] > 0"],
			["Idź na służbę","[1, 3] call HRP_fnc_switchDutyStatus"]
		],
		[
			["!(isNil {cursorObject getVariable 'DOJStation'})","player getVariable ['DOJ', 0] > 0","(player distance cursorObject) <= 8"],
			["Zakoncz slużbę","[0, 3] call HRP_fnc_switchDutyStatus"]
		],
		[
			["!(isNil {cursorObject getVariable 'MafiaStation'})","(player distance cursorObject) <= 8"],
			["Idź na służbę","[1, 4] call HRP_fnc_switchDutyStatus"]
		],
		[
			["!(isNil {cursorObject getVariable 'MafiaStation'})","player getVariable ['DOJ', 0] > 0","(player distance cursorObject) <= 8"],
			["Zakoncz slużbę","[0, 4] call HRP_fnc_switchDutyStatus"]
		],
		
		[
			["('W_ziptie' in (items player)) || ('W_ziptie' in (magazines player))", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 6", "isPlayer cursorObject", "!(cursorObject getVariable 'unconscious')", "(cursorObject getVariable 'surrendered') || (cursorObject getVariable 'knockedOut')", "!(player getVariable 'tied')"],
			["Zwiąż zipem", "[cursorObject] spawn HRP_fnc_tie"]
		],
		[
			["cursorObject isKindOf 'Man'", "cursorObject getVariable ['tied',false]", "(player distance cursorObject) <= 8", "isPlayer cursorObject", "!(cursorObject getVariable 'unconscious')"],
			["Przetnij zipa", "[cursorObject] call HRP_fnc_unTie"]
		],
		[
			["(cursorObject getVariable 'fuelStation') != ''", "(player distance cursorObject) <= 7", "vehicle player == player"],
			["Zatankuj", "[cursorObject] call HRP_fnc_fuelStatOpen"]
		]
		*/
	];
};