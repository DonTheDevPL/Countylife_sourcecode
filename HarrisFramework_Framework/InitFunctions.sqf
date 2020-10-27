/*
  Author: Ben Harris
  Description: Initialises All Server-Side Functions, Meaning they can be saved server-side but accessed by the client
*/

GarageDir = "\HarrisFramework_Framework\Functions\core\Garage\";
Garage_Functions = 
[
  ["fn_fetchCar", "HRP_fnc_fetchCar"],
  ["fn_openGarage", "HRP_fnc_openGarage"],
  ["fn_receiveGarage", "HRP_fnc_receiveGarage"],
  ["fn_storeCar", "HRP_fnc_storeCar"],
  ["fn_nearGarageMarker", "HRP_fnc_nearGarageMarker"]
];

InitDir = "\HarrisFramework_Framework\Functions\core\Init\";
Init_Functions = 
[
  ["fn_loadInventory", "HRP_fnc_loadInventory"],
  ["fn_initHudLoop", "HRP_fnc_initHudLoop"],
  ["fn_initSurvivalLoop", "HRP_fnc_initSurvivalLoop"],
  ["fn_hudLoop", "HRP_fnc_hudLoop"],
  ["fn_uiCheck", "HRP_fnc_uiCheck"],
  ["fn_numbertoText", "HRP_fnc_numbertoText"],
  ["fn_serverInit", "HRP_fnc_serverInit"],
  ["fn_clientInit", "HRP_fnc_clientInit"],
  ["fn_initTrafficLights", "HRP_fnc_initTrafficLights"],
  ["fn_initOreLoop", "HRP_fnc_initOreLoop"],
  ["fn_playerTags", "HRP_fnc_playerTags"],
  ["fn_serverRestart", "HRP_fnc_serverRestart"]
];

InteractionDir = "\HarrisFramework_Framework\Functions\core\Interaction\";
Interaction_Functions = 
[
  ["fn_initInteractions", "HRP_fnc_initInteractions"],
  ["fn_interactionAction", "HRP_fnc_interactionAction"],
  ["fn_openInteraction", "HRP_fnc_openInteraction"],
  ["fn_colorRadial", "HRP_fnc_colorRadial"],
  ["fn_openInteractionSecondPage", "HRP_fnc_openInteractionSecondPage"]
];

MiscDir = "\HarrisFramework_Framework\Functions\core\Misc\";
Misc_Functions = 
[
  ["fn_getMagazineName", "HRP_fnc_getMagazineName"],
  ["fn_getWeaponName", "HRP_fnc_getWeaponName"],
  ["fn_getVehicleName", "HRP_fnc_getVehicleName"],
  ["fn_hintMP", "HRP_fnc_hintMP"],
  ["fn_holster", "HRP_fnc_holster"],
  ["fn_nearMarker", "HRP_fnc_nearMarker"],
  ["fn_playAnim", "HRP_fnc_playAnim"],
  ["fn_playSound", "HRP_fnc_playSound"],
  ["fn_sortArray", "HRP_fnc_sortArray"],
  ["fn_eatItem", "HRP_fnc_eatItem"],
  ["fn_drinkItem", "HRP_fnc_drinkItem"],
  ["fn_getMedics", "HRP_fnc_getMedics"],
  ["fn_getPolice", "HRP_fnc_getPolice"],
  ["fn_switchDutyStatus", "HRP_fnc_switchDutyStatus"],
  ["fn_notifMP", "HRP_fnc_notifMP"],
  ["fn_consumeFood", "HRP_fnc_consumeFood"],
  ["fn_drunk", "HRP_fnc_drunk"],
  ["fn_consumeAlcohol", "HRP_fnc_consumeAlcohol"],
  ["fn_dropVeh","HRP_fnc_dropVeh"]
];

MoneyDir = "\HarrisFramework_Framework\Functions\core\Money\";
Money_Functions = 
[
  ["fn_addBank", "HRP_fnc_addBank"],
  ["fn_addCash", "HRP_fnc_addCash"],
  ["fn_checkMoney", "HRP_fnc_checkMoney"],
  ["fn_giveCash", "HRP_fnc_giveCash"],
  ["fn_giveCashSubmit", "HRP_fnc_giveCashSubmit"],
  ["fn_removeBank", "HRP_fnc_removeBank"],
  ["fn_removeCash", "HRP_fnc_removeCash"],
  ["fn_takeMoney", "HRP_fnc_takeMoney"],
  ["fn_grabDeadCash", "HRP_fnc_grabDeadCash"],
  ["fn_resetCash", "HRP_fnc_resetCash"]
];

PoliceDir = "\HarrisFramework_Framework\Functions\core\Police\";
Police_Functions = 
[
  ["fn_cuff", "HRP_fnc_cuff"],
  ["fn_cuffTarget", "HRP_fnc_cuffTarget"],
  ["fn_escort", "HRP_fnc_escort"],
  ["fn_escorted", "HRP_fnc_escorted"],
  ["fn_escortStop", "HRP_fnc_escortStop"],
  ["fn_unescorted", "HRP_fnc_unescorted"],
  ["fn_pullOut", "HRP_fnc_pullOut"],
  ["fn_putInCar", "HRP_fnc_putInCar"],
  ["fn_putInCarTarget", "HRP_fnc_putInCarTarget"],
  ["fn_unCuff", "HRP_fnc_unCuff"],
  ["fn_unCuffTarget", "HRP_fnc_unCuffTarget"],
  ["fn_pressPanicButton", "HRP_fnc_pressPanicButton"],
  ["fn_panicPressed", "HRP_fnc_panicPressed"],
  ["fn_openLocker", "HRP_fnc_openLocker"],
  ["fn_fetchLockerItem", "HRP_fnc_fetchLockerItem"],
  ["fn_storeLockerItem", "HRP_fnc_storeLockerItem"],
  ["fn_openANPR", "HRP_fnc_openANPR"],
  ["fn_surrenderAction", "HRP_fnc_surrenderAction"],
  ["fn_tazed", "HRP_fnc_tazed"],
  ["fn_seizeItems", "HRP_fnc_seizeItems"]
  //["fn_vars", "HRP_fnc_vars"]
];

VehicleDir = "\HarrisFramework_Framework\Functions\core\Vehicle\";
Vehicle_Functions = 
[
  ["fn_useKey", "HRP_fnc_useKey"],
  ["fn_vehicleHitGet", "HRP_fnc_vehicleHitGet"],
  ["fn_vehicleHitLoad", "HRP_fnc_vehicleHitLoad"],
  ["fn_openTrunk", "HRP_fnc_openTrunk"],
  ["fn_lockPickVehicle", "HRP_fnc_lockPickVehicle"],
  ["fn_openTrunk", "HRP_fnc_openTrunk"],
  ["fn_grabFromTrunk", "HRP_fnc_grabFromTrunk"],
  ["fn_storeInTrunk", "HRP_fnc_storeInTrunk"],
  ["fn_pushVehicle", "HRP_fnc_pushVehicle"],
  ["fn_unFlipCar", "HRP_fnc_unFlipCar"],
  ["fn_getKey", "HRP_fnc_getKey"],
  ["fn_giveKey", "HRP_fnc_giveKey"],
  ["fn_openGiveKeys", "HRP_fnc_openGiveKeys"]
];

ATMDir = "\HarrisFramework_Framework\Functions\core\ATM\";
ATM_Functions = 
[
  ["fn_atmDeposit", "HRP_fnc_atmDeposit"],
  ["fn_atmTransfer", "HRP_fnc_atmTransfer"],
  ["fn_atmWithdraw", "HRP_fnc_atmWithdraw"],
  ["fn_atmRefresh", "HRP_fnc_atmRefresh"],
  ["fn_openATM", "HRP_fnc_openATM"]
];

Craftingdir = "\HarrisFramework_Framework\Functions\core\Crafting\";
Crafting_Functions = 
[
  ["fn_openCraftingMenu", "HRP_fnc_openCraftingMenu"],
  ["fn_onCraftLbChanged", "HRP_fnc_onCraftLbChanged"],
  ["fn_onCraftSelectionLbChanged", "HRP_fnc_onCraftSelectionLbChanged"],
  ["fn_craftItem", "HRP_fnc_craftItem"],
  ["fn_openCraftTimer", "HRP_fnc_openCraftTimer"],
  ["fn_processItem", "HRP_fnc_processItem"],
  ["fn_doProcessing", "HRP_fnc_doProcessing"],
  ["fn_retrieveProcessedItems", "HRP_fnc_retrieveProcessedItems"],
  ["fn_openSmeltingMenu", "HRP_fnc_openSmeltingMenu"],
  ["fn_addBluePrint", "HRP_fnc_addBluePrint"],
  ["fn_gatherWreckItems", "HRP_fnc_gatherWreckItems"]
];


SyncDir = "\HarrisFramework_Framework\Functions\core\Sync\";
Sync_Functions = 
[
  ["fn_syncData", "HRP_fnc_syncData"],
  ["fn_syncSilent", "HRP_fnc_syncSilent"]
];

FarmingDir = "\HarrisFramework_Framework\Functions\core\Farming\";
Farming_Functions = 
[
  ["fn_startWheatFarm", "HRP_fnc_startWheatFarm"],
  ["fn_Harvest", "HRP_fnc_Harvest"],
  ["fn_plantPot", "HRP_fnc_plantPot"],
  ["fn_pickUpPot", "HRP_fnc_pickUpPot"],
  ["fn_dropPot", "HRP_fnc_dropPot"],
  ["fn_plantWeed", "HRP_fnc_plantWeed"],
  ["fn_growWeed", "HRP_fnc_growWeed"],
  ["fn_gatherWeed", "HRP_fnc_gatherWeed"],
  ["fn_removePot", "HRP_fnc_removePot"]
];

TicketingDir = "\HarrisFramework_Framework\Functions\core\Ticketing\";
Ticketing_Functions = 
[
  ["fn_openGiveTicket", "HRP_fnc_openGiveTicket"],
  ["fn_sendTicket", "HRP_fnc_sendTicket"],
  ["fn_receiveTicket", "HRP_fnc_receiveTicket"],
  ["fn_payTicket", "HRP_fnc_payTicket"],
  ["fn_refuseTicket", "HRP_fnc_refuseTicket"]
];

KKdir = "\HarrisFramework_Framework\Functions\core\KK\";
KK_Functions = 
[
  ["fn_forceRagdoll", "KK_fnc_forceRagdoll"]
];

HRPdir = "\HarrisFramework_Framework\Functions\core\HRP\";
HRP_Functions = 
[
  ["fn_Buy", "HRP_fnc_Buy"],
  ["fn_openAdminShop", "HRP_fnc_openAdminShop"],
  //["fn_initShops", "HRP_fnc_initShops"],
  ["fn_openShop", "HRP_fnc_openShop"],
  ["fn_openClothingShop", "HRP_fnc_openClothingShop"],
  ["fn_priceUpdate", "HRP_fnc_priceUpdate"],
  ["fn_clothingUpdate", "HRP_fnc_clothingUpdate"],
  ["fn_charMove", "HRP_fnc_charMove"],
  ["fn_exitLoop", "HRP_fnc_exitLoop"],
  ["fn_vehicleUpdate", "HRP_fnc_vehicleUpdate"],
  ["fn_openVehicleShop", "HRP_fnc_openVehicleShop"],
  ["fn_exitLoopV", "HRP_fnc_exitLoopV"],
  ["fn_keyHandler", "HRP_fnc_keyHandler"],
  ["fn_Holster", "HRP_fnc_Holster"],
  ["fn_doAction", "HRP_fnc_doAction"],
  ["fn_getOwner", "HRP_fnc_getOwner"],
  ["fn_impoundVehicle", "HRP_fnc_impoundVehicle"],
  ["fn_repairVehicle", "HRP_fnc_repairVehicle"],
  ["fn_charMoveV", "HRP_fnc_charMoveV"],
  ["fn_Notifications", "HRP_fnc_Notifications"],
  ["fn_configuration", "HRP_fnc_configuration"],
  ["fn_patDown", "HRP_fnc_patDown"],
  ["fn_pattedDown", "HRP_fnc_pattedDown"],
  ["fn_destroyCrate", "HRP_fnc_destroyCrate"],
  ["fn_LegCuff", "HRP_fnc_LegCuff"],
  ["fn_LegCuffed", "HRP_fnc_LegCuffed"],
  ["fn_serverMsg", "HRP_fnc_serverMsg"],
  ["fn_strippedDown", "HRP_fnc_strippedDown"],
  ["fn_quickNotifications", "HRP_fnc_quickNotifications"],
  ["fn_inventoryOpened", "HRP_fnc_inventoryOpened"],
  ["fn_openSellItems", "HRP_fnc_openSellItems"],
  ["fn_sellItems", "HRP_fnc_sellItems"],
  ["fn_useItemPhysical", "HRP_fnc_useItemPhysical"],
  ["fn_shopConfig", "HRP_fnc_shopConfig"],
  ["fn_shopUpdate", "HRP_fnc_shopUpdate"],
  ["fn_typeUpdate", "HRP_fnc_typeUpdate"],
  ["fn_earPlugs", "HRP_fnc_earPlugs"],
  ["fn_onFired", "HRP_fnc_onFired"],
  ["fn_Markers", "HRP_fnc_Markers"]
];

Meddir = "\HarrisFramework_Framework\Functions\core\Medical\";
Med_Functions = 
[
  ["fn_RequestMedic", "HRP_fnc_RequestMedic"],
  ["fn_respawned", "HRP_fnc_respawned"],
  ["fn_respawnMenu", "HRP_fnc_respawnMenu"],
  ["fn_Revive", "HRP_fnc_Revive"],
  ["fn_revived", "HRP_fnc_revived"],
  ["fn_initDeath", "HRP_fnc_initDeath"],
  //["fn_initMedical", "HRP_fnc_initMedical"],
  ["fn_addDeathEVH", "HRP_fnc_addDeathEVH"],
  ["fn_healHospital", "HRP_fnc_healHospital"],
  ["fn_healPlayer", "HRP_fnc_healPlayer"],
  ["fn_treatPatient", "HRP_fnc_treatPatient"],
  ["fn_basicMedicalMarker", "HRP_fnc_basicMedicalMarker"],
  ["fn_zgon", "HRP_fnc_zgon"],
  ["fn_zgonAction","HRP_fnc_zgonAction"]
];

Spawndir = "\HarrisFramework_Framework\Functions\core\Spawn\";
Spawn_Functions = 
[
  ["fn_initSpawnMenu", "HRP_fnc_initSpawnMenu"],
  ["fn_spawn", "HRP_fnc_spawn"],
  ["fn_updateSpawnSelect", "HRP_fnc_updateSpawnSelect"]
];

Housingdir = "\HarrisFramework_Framework\Functions\core\Housing\";
Housing_Functions = 
[
  ["fn_buyHouse", "HRP_fnc_buyHouse"],
  ["fn_initHouseLocal", "HRP_fnc_initHouseLocal"],
  ["fn_initLoadHouses", "HRP_fnc_initLoadHouses"],
  ["fn_insertHouse", "HRP_fnc_insertHouse"],
  ["fn_loadHouseLocal", "HRP_fnc_loadHouseLocal"],
  ["fn_loadHouses", "HRP_fnc_loadHouses"],
  ["fn_lockHouse", "HRP_fnc_lockHouse"],
  ["fn_openBuyHouse", "HRP_fnc_openBuyHouse"],
  ["fn_unlockHouse", "HRP_fnc_unlockHouse"],
  ["fn_createContainer", "HRP_fnc_createContainer"],
  ["fn_dropContainer", "HRP_fnc_dropContainer"],
  ["fn_houseGearDelete", "HRP_fnc_houseGearDelete"],
  ["fn_saveGear", "HRP_fnc_saveGear"],
  ["fn_loadGear", "HRP_fnc_loadGear"],
  ["fn_initLoadGear", "HRP_fnc_initLoadGear"],
  ["fn_deleteHouse", "HRP_fnc_deleteHouse"],
  ["fn_openSellHouse", "HRP_fnc_openSellHouse"],
  ["fn_sellHouse", "HRP_fnc_sellHouse"],
  ["fn_loadGear", "HRP_fnc_loadGear"],
  ["fn_createFurniture", "HRP_fnc_createFurniture"],
  ["fn_dropFurniture", "HRP_fnc_dropFurniture"],
  ["fn_pickUpFurniture", "HRP_fnc_pickUpFurniture"],
  ["fn_spawnFurniture", "HRP_fnc_spawnFurniture"],
  ["fn_removeFurnitureLogout", "HRP_fnc_removeFurnitureLogout"]
];

PoliceDBdir = "\HarrisFramework_Framework\Functions\core\PoliceDB\";
PoliceDB_Functions = 
[
  ["fn_addWarrant", "HRP_fnc_addWarrant"],
  ["fn_findWarrant", "HRP_fnc_findWarrant"],
  ["fn_receiveWarrant", "HRP_fnc_receiveWarrant"],
  ["fn_loadWarrant", "HRP_fnc_loadWarrant"],
  ["fn_deleteWarrant", "HRP_fnc_deleteWarrant"],
  ["fn_setNumberPlate", "HRP_fnc_setNumberPlate"],
  ["fn_findVehicle", "HRP_fnc_findVehicle"],
  ["fn_receiveVehicle", "HRP_fnc_receiveVehicle"],
  ["fn_findWarrant", "HRP_fnc_findWarrant"],
  ["fn_receivePersonSearch", "HRP_fnc_receivePersonSearch"],
  ["fn_personLookup", "HRP_fnc_personLookup"],
  ["fn_fetchFelons", "HRP_fnc_fetchFelons"],
  ["fn_openPoliceDatabase", "HRP_fnc_openPoliceDatabase"],
  ["fn_listInmates", "HRP_fnc_listInmates"],
  ["fn_viewPrisonerInfo", "HRP_fnc_viewPrisonerInfo"],
  ["fn_switchInmatePage", "HRP_fnc_switchInmatePage"],
  ["fn_changeThreatLevel", "HRP_fnc_changeThreatLevel"],
  ["fn_openChangeThreatLevel", "HRP_fnc_openChangeThreatLevel"],
  ["fn_fetchWarrants", "HRP_fnc_fetchWarrants"],
  ["fn_loadWarrantsPage", "HRP_fnc_loadWarrantsPage"]
];

DMVdir = "\HarrisFramework_Framework\Functions\core\DMV\";
DMV_Functions = 
[
  ["fn_buyLicense", "HRP_fnc_buyLicense"],
  ["fn_openLicenseMenu", "HRP_fnc_openLicenseMenu"],
  ["fn_refreshLicense", "HRP_fnc_refreshLicense"],
  ["fn_openInfo", "HRP_fnc_openInfo"],
  ["fn_setName", "HRP_fnc_setName"],
  ["fn_openSetName", "HRP_fnc_openSetName"]
];

Securitydir = "\HarrisFramework_Framework\Functions\core\Security\";
Security_Functions = 
[
  ["fn_clientCheck", "HRP_fnc_clientCheck"],
  ["fn_disableCheatMenu", "HRP_fnc_disableCheatMenu"]
];

Jaildir = "\HarrisFramework_Framework\Functions\core\Jail\";
Jail_Functions = 
[
  ["fn_arrestPlayer", "HRP_fnc_arrestPlayer"],
  ["fn_jailInit", "HRP_fnc_jailInit"],
  ["fn_arrestedPlayer", "HRP_fnc_arrestedPlayer"],
  ["fn_openArrestMenu", "HRP_fnc_openArrestMenu"]
];

payChequedir = "\HarrisFramework_Framework\Functions\core\payCheque\";
payCheque_Functions = 
[
  ["fn_payChequeLoop", "HRP_fnc_payChequeLoop"],
  ["fn_payChequePickup", "HRP_fnc_payChequePickup"]
];

Phonedir = "\HarrisFramework_Framework\Functions\core\Phone\";
Phone_Functions = 
[
  ["fn_Dial", "HRP_fnc_Dial"],
  ["fn_switchSMSLB", "HRP_fnc_switchSMSLB"],
  ["fn_openSMSMenu", "HRP_fnc_openSMSMenu"],
  ["fn_receiveText", "HRP_fnc_receiveText"],
  ["fn_textPlayer", "HRP_fnc_textPlayer"],
  ["fn_openMessage", "HRP_fnc_openMessage"],
  ["fn_listMessages", "HRP_fnc_listMessages"],
  ["fn_assignNumber", "HRP_fnc_assignNumber"],
  ["fn_viewContact", "HRP_fnc_viewContact"],
  ["fn_listContacts", "HRP_fnc_listContacts"],
  ["fn_cancelDial", "HRP_fnc_cancelDial"],
  ["fn_openSendSMS", "HRP_fnc_openSendSMS"],
  ["fn_openContactSMS", "HRP_fnc_openContactSMS"],
  ["fn_deleteContact", "HRP_fnc_deleteContact"],
  ["fn_addContact", "HRP_fnc_addContact"],
  ["fn_openBankingApp", "HRP_fnc_openBankingApp"],
  ["fn_onlineTransfer", "HRP_fnc_onlineTransfer"],
  ["fn_openDial", "HRP_fnc_openDial"],
  ["fn_openNewsApp", "HRP_fnc_openNewsApp"],
  ["fn_readNews", "HRP_fnc_readNews"],
  ["fn_addNews", "HRP_fnc_addNews"],
  ["fn_phoneCall", "HRP_fnc_phoneCall"],
  ["fn_receiveCall", "HRP_fnc_receiveCall"],
  ["fn_acceptCall", "HRP_fnc_acceptCall"],
  ["fn_acceptedCall", "HRP_fnc_acceptedCall"],
  ["fn_declineCall", "HRP_fnc_declineCall"],
  ["fn_declinedCall", "HRP_fnc_declinedCall"],
  ["fn_hangUp", "HRP_fnc_hangUp"],
  ["fn_hungUp", "HRP_fnc_hungUp"],
  ["fn_switchNewsPage", "HRP_fnc_switchNewsPage"],
  ["fn_openJobsApp", "HRP_fnc_openJobsApp"],
  ["fn_switchJobPage", "HRP_fnc_switchJobPage"],
  ["fn_phoneJobApp", "HRP_fnc_phoneJobApp"],
  ["fn_jobView", "HRP_fnc_jobView"],
  ["fn_openPhone", "HRP_fnc_openPhone"],
  ["fn_setBackground", "HRP_fnc_setBackground"],
  ["fn_onTaxiLBChanged", "HRP_fnc_onTaxiLBChanged"],
  ["fn_openTaxiMenu", "HRP_fnc_openTaxiMenu"],
  ["fn_openPhoneInCall", "HRP_fnc_openPhoneInCall"],
  ["fn_phoneNumberText", "HRP_fnc_phoneNumberText"],
  ["fn_receiveCallReload", "HRP_fnc_receiveCallReload"],
  ["fn_openPhoneInCalling", "HRP_fnc_openPhoneInCalling"],
  ["fn_anonSwitch", "HRP_fnc_anonSwitch"],
  ["fn_switchBlockingSetting", "HRP_fnc_switchBlockingSetting"],
  ["fn_openSettingsMenu", "HRP_fnc_openSettingsMenu"],
  ["fn_switchContactPage", "HRP_fnc_switchContactPage"],
  ["fn_onRingtoneLbChanged", "HRP_fnc_onRingtoneLbChanged"],
  ["fn_respondWithText", "HRP_fnc_respondWithText"],
  ["fn_blockedCall", "HRP_fnc_blockedCall"],
  ["fn_cancelCall", "HRP_fnc_cancelCall"],
  ["fn_canceledCall", "HRP_fnc_canceledCall"],
  ["fn_switchMessagePage", "HRP_fnc_switchMessagePage"],
  ["fn_clearDial", "HRP_fnc_clearDial"],
  ["fn_phoneAddToCall","HRP_fnc_phoneAddToCall"]
];
// Dopisać śmieciarkę do prac
Jobsdir = "\HarrisFramework_Framework\Functions\core\Jobs\";
Jobs_Functions = 
[
  ["fn_mineObject", "HRP_fnc_mineObject"],
  ["fn_oreSpawn", "HRP_fnc_oreSpawn"],
  ["fn_generatorLoop", "HRP_fnc_generatorLoop"],
  ["fn_processObject", "HRP_fnc_processObject"],
  ["fn_chopTree", "HRP_fnc_chopTree"],
  ["fn_loadDivingLoot", "HRP_fnc_loadDivingLoot"],
  ["fn_towDriverSignIn", "HRP_fnc_towDriverSignIn"],
  ["fn_towDriverSignOff", "HRP_fnc_towDriverSignOff"],
  ["fn_impoundTowTruck", "HRP_fnc_impoundTowTruck"],
  ["fn_bankTellerSignUp", "HRP_fnc_bankTellerSignUp"],
  ["fn_bankTellerSignOff", "HRP_fnc_bankTellerSignOff"],
  ["fn_securityGuardSignIn", "HRP_fnc_securityGuardSignIn"],
  ["fn_securityGuardSignOff", "HRP_fnc_securityGuardSignOff"],
  //["fn_busDriverSignUp", "HRP_fnc_busDriverSignUp"],
  //["fn_busDriverSignOff", "HRP_fnc_busDriverSignOff"],
  ["fn_truckDriverSignIn", "HRP_fnc_truckDriverSignIn"],
  ["fn_truckDriverAssignTask", "HRP_fnc_truckDriverAssignTask"],
  ["fn_truckDriverSignOff", "HRP_fnc_truckDriverSignOff"],
  ["fn_createCompanyTruck", "HRP_fnc_createCompanyTruck"],
  ["fn_signPackage", "HRP_fnc_signPackage"],
  ["fn_busDriverSignUp", "HRP_fnc_busDriverSignUp"],
  ["fn_busDriverSignOff", "HRP_fnc_busDriverSignOff"],
  ["fn_createGovernmentBus", "HRP_fnc_createGovernmentBus"],
  ["fn_busCheck", "HRP_fnc_busCheck"],
  ["fn_busAssignTask", "HRP_fnc_busAssignTask"],
  ["fn_detachVehicle", "HRP_fnc_detachVehicle"],
  ["fn_attachCar", "HRP_fnc_attachCar"],
  ["fn_towDriverSignIn", "HRP_fnc_towDriverSignIn"],
  ["fn_towDriverSignOff", "HRP_fnc_towDriverSignOff"],
  ["fn_countTowDrivers", "HRP_fnc_countTowDrivers"],
  ["fn_getTowDrivers", "HRP_fnc_getTowDrivers"],
  ["fn_impoundVehicleTow", "HRP_fnc_impoundVehicleTow"],
  ["fn_unRopeCar", "HRP_fnc_unRopeCar"],
  ["fn_ropeCar", "HRP_fnc_ropeCar"],
  ["fn_callTowDriver", "HRP_fnc_callTowDriver"],
  ["fn_dumpsterSignUp", "HRP_fnc_dumpsterSignUp"],
  ["fn_dumpsterSignOff", "HRP_fnc_dumpsterSignOff"],
  ["fn_dumpsterDrop", "HRP_fnc_dumpsterDrop"],
  ["fn_dumpsterTake", "HRP_fnc_dumpsterTake"]
];

Immigrationdir = "\HarrisFramework_Framework\Functions\core\Immigration\";
Immigration_Functions = 
[
  ["fn_listIdentities", "HRP_fnc_listIdentities"],
  ["fn_identitySelect", "HRP_fnc_identitySelect"],
  ["fn_immigrationLbChanged", "HRP_fnc_immigrationLbChanged"],
  ["fn_openIdentityCreation", "HRP_fnc_openIdentityCreation"],
  ["fn_identityCreate", "HRP_fnc_identityCreate"]
];

Crimedir = "\HarrisFramework_Framework\Functions\core\Crime\";
Crime_Functions = 
[
  ["fn_checkBank", "HRP_fnc_checkBank"],
  ["fn_checkBankCash", "HRP_fnc_checkBankCash"],
  ["fn_robBank", "HRP_fnc_robBank"],
  ["fn_robLockBox", "HRP_fnc_robLockBox"],
  ["fn_takeCash", "HRP_fnc_takeCash"],
  ["fn_robShop", "HRP_fnc_robShop"],
  ["fn_robShopFinish", "HRP_fnc_robShopFinish"],
  ["fn_robPerson", "HRP_fnc_robPerson"],
  ["fn_knockOutAction", "HRP_fnc_knockOutAction"],
  ["fn_knockedOut", "HRP_fnc_knockedOut"],
  ["fn_stealATMCash", "HRP_fnc_stealATMCash"],
  ["fn_lockATM", "HRP_fnc_lockATM"],
  ["fn_atmAlertCops", "HRP_fnc_atmAlertCops"],
  ["fn_robATM", "HRP_fnc_robATM"]
];

Emergencydir = "\HarrisFramework_Framework\Functions\core\Emergency\";
Emergency_Functions = 
[
  ["fn_fireExtinguisher", "HRP_fnc_fireExtinguisher"],
  ["fn_createFire", "HRP_fnc_createFire"],
  ["fn_fireStart", "HRP_fnc_fireStart"],
  ["fn_fireSpread", "HRP_fnc_fireSpread"]
];

Whitelistdir = "\HarrisFramework_Framework\Functions\core\Whitelist\";
Whitelist_Functions = 
[
  ["fn_Whitelist", "HRP_fnc_Whitelist"],
  ["fn_openWhiteListMenu", "HRP_fnc_openWhiteListMenu"],
  ["fn_sertWhitelist", "HRP_fnc_sertWhitelist"]
];

Barriersdir = "\HarrisFramework_Framework\Functions\core\Barriers\";
Barriers_Functions = 
[
  ["fn_barriergui", "HRP_fnc_barriergui"],
  ["fn_cleanupbarrier", "HRP_fnc_cleanupbarrier"],
  ["fn_spawnbarrier", "HRP_fnc_spawnbarrier"]

];

Drugsdir = "\HarrisFramework_Framework\Functions\core\Drugs\";
Drugs_Functions = 
[
  ["fn_updateCooking", "HRP_fnc_updateCooking"],
  ["fn_useDrugTable", "HRP_fnc_useDrugTable"],
  ["fn_dropDrugTable", "HRP_fnc_dropDrugTable"],
  ["fn_methcooking", "HRP_fnc_methcooking"],
  ["fn_checkDumpster","HRP_fnc_checkDumpster"]

];
/*
DOJDir = "\HarrisFramework_Framework\Function\core\DOJ\";
DOJ_Functions = 
[
  ["fn_DOJDuty", "HRP_fnc_DOJDuty"],
  ["", ""]
];

MafiaDir = "\HarrisFramework_Framework\Functions\core\Mafia\";
Mafia_Functions =
[
  ["fn_MafiaDuty", "HRP_fnc_MafiaDuty"],
  ["", ""]
];
ZiptiesDir = "\HarrisFramework_Framework\Function\core\Zipties\";
Zipties_Functions =
[
  ["fn_tie", "HRP_fnc_tie"],
  ["fn_tieTarget", "HRP_fnc_tieTarget"],
  ["fn_unTie", "HRP_fnc_unTie"],
  ["fn_unTieTarget", "HRP_fnc_unTieTarget"]
];
*/

functionArrays = 
  "[
    ['Garage_Functions','GarageDir'],
    ['Init_Functions','InitDir'],
    ['Interaction_Functions','InteractionDir'],
    ['Misc_Functions','MiscDir'],
    ['Money_Functions','MoneyDir'],
    ['Police_Functions','PoliceDir'],
    ['Vehicle_Functions','VehicleDir'],
    ['ATM_Functions','ATMDir'],
    ['Crafting_Functions','CraftingDir'],
    ['Sync_Functions','SyncDir'],
    ['Farming_Functions','FarmingDir'],
    ['Immigration_Functions','ImmigrationDir'],
    ['Ticketing_Functions','TicketingDir'],
    ['KK_Functions','KKdir'],
    ['HRP_Functions','HRPdir'],
    ['Med_Functions','Meddir'],
    ['Spawn_Functions','Spawndir'],
    ['Housing_Functions','Housingdir'],
    ['PoliceDB_Functions','PoliceDBdir'],
    ['DMV_Functions','DMVdir'],
    ['Security_Functions','Securitydir'],
    ['Jail_Functions','Jaildir'],
    ['payCheque_Functions','payChequedir'],
    ['Phone_Functions','Phonedir'],
    ['Jobs_Functions','Jobsdir'],
    ['Crime_Functions','Crimedir'],
    ['Emergency_Functions','Emergencydir'],
    ['Whitelist_Functions','Whitelistdir'],
    ['Drugs_Functions','Drugsdir'],
    ['Barriers_Functions','Barriersdir']
  ]";
/*
    
    ['DOJ_Functions','DOJDir'],
    ['Mafia_Functions','MafiaDir'],
    ['Zipties_Functions','ZiptiesDir']
*/
  functionArrays2 = call compile functionArrays;

  {
    Harris_Compile = _x select 0;
    Harris_File = call compile Harris_Compile;
    Harris_Directory = _x select 1;
    Harris_Dir = call compile Harris_Directory;

    {
      Harris_File2 = _x;
      Harris_File3 = Harris_File2 select 0;
      Harris_File4 = Harris_File2 select 1;
      Harris_Final = Harris_Dir + Harris_File3 + ".sqf";
      systemChat format ["Loading Function, Please Wait %1", Harris_Final];
      diag_log format ["Loading Function, Please Wait %1", Harris_Final];
      [] call compile preprocessFileLineNumbers Harris_Final;
      publicVariable Harris_File4;
      systemChat "Function Loaded";
      diag_log "Function Loaded";
    } foreach Harris_File;

  } foreach functionArrays2;