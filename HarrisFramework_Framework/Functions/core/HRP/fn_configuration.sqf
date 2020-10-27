/*
	Author: Stuctured and written by Ben Harris, Configured by Anthony Penney
	Description: Master Config
*/

HRP_fnc_Configuration = {
	
	player setVariable ["Arrested", false, true];

	message1_active = false;
	message2_active = false;
	message3_active = false;
	message4_active = false;
	message5_active = false;

	smessage1_active = false;

	HRP_Holstered = 0;

	player setVariable ["surrendered", false, true];

	player setVariable ['Shackled',false];

	//player setVariable ["tf_unable_to_use_radio", true];

	HRP_interrupted = false;
	ActionLoading = false;
	ActionStopped = false;

	HRP_Time = 300;
	HRP_Revived = false;
	HRP_allowRespawn = true;
	HRP_robbing = false;
	HRP_robTime = 5;
	VehHolding = false;
	HRP_SpawnPoints =
	[
		["Cook's City", "HRP_Spawn1"]
	];

	HRP_spawnItems = //Will require phone
	[
		"itemMap",
		"itemWatch",
		"tf_anprc152",
		"itemCompass"
	];

	HRP_spawnUniforms = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour"];

	HRP_Containers = []; //Containers?
	HRP_Furniture = []; //Is this just classnames?
	HRP_Houses = []; //?

	HRP_dmvLicenses =  // done SKLEP DMV
	[	
		["Driver License", '["Driver_License", 48]'],
		["Boating License", '["Boating_License", 510]'],
		["Fixed Wing Flying License", '["FixedWing_License", 940]'],
		["Helicopter Flying License", '["Helicopter_License", 1200]'],
		["Truck License", '["Trucking_License", 380]']
	];

	HRP_allLicenses = //WSZYSTKIE LICKI
	[
		["Driver License","Driver_License"],
		["Boating License","Boating_License"],
		["Fixed Wing Flying License","FixedWing_License"],
		["Helicopter Flying License","Helicopter_License"],
		["Truck License","Trucking_License"],
		["DHL delivery man","Truck_Driver"],
		["Licencja Śmieciarza","Dumpster_driver"],
		["Kierowca MPK","Bus_Driver"],
		["Licencja Taksówkarza","taxi_driver"]
	];

	HRP_firearmLicenses = 
	[
		["Firearms License", '["Firearm_License", 10000]']
	];

	HRP_houseArray = [

	"Land_i_House_Big_02_V1_F",
	"Land_i_House_Big_02_V2_F",
	"Land_i_House_Big_02_V3_F",
	"xCam_i_House_Big_02_V3_F",
	"xCam_i_House_Big_02_V2_F",
	"xCam_i_House_Big_02_V1_F",
	"Land_i_House_Big_01_V1_F",
	"Land_i_House_Big_01_V2_F",
	"Land_i_House_Big_01_V3_F",
	"xCam_i_House_Big_01_V3_F",
	"xCam_i_House_Big_01_V2_F",
	"xCam_i_House_Big_01_V1_F",

	"Land_i_House_Small_01_V1_F",
	"Land_i_House_Small_01_V2_F",
	"Land_i_House_Small_01_V3_F",
	"Land_i_House_Small_02_V1_F",
	"Land_i_House_Small_02_V2_F",
	"Land_i_House_Small_02_V3_F",
	"Land_i_House_Small_03_V1_F",

	"Land_i_Stone_HouseSmall_V2_F",
	"Land_i_Stone_HouseSmall_V1_F",
	"Land_i_Stone_HouseSmall_V3_F",

	"Land_Slum_House01_F",
	"Land_Slum_House03_F",
	"Land_Slum_House02_F",

	"Land_cargo_house_slum_F",

	"Land_i_Garage_V1_F", 
	"Land_i_Garage_V2_F", 

	"Land_Cargo_House_V1_F", 
	"Land_Cargo_House_V2_F", 
	"Land_Cargo_House_V3_F", 


	"Land_HouseA1", 
	"Land_HouseA1_L", 
	"Land_HouseA", 
	"Land_HouseB", 
	"Land_HouseB1", 
	"Land_HouseB1_L", 
	"Land_HouseC_R", 
	"Land_HouseC1_L", 
	"Land_HouseDoubleAL", 
	"Land_HouseDoubleAL2"

	]; 
   
  HRP_housePriceArray =
    [
    	["Land_i_House_Big_02_V1_F", 214000, 20, "Large House"],
        ["Land_i_House_Big_02_V2_F", 214000, 20, "Large House"],
        ["Land_i_House_Big_02_V3_F", 214000, 20, "Large House"],
        ["xCam_i_House_Big_02_V2_F", 214000, 20, "Large House"],
        ["xCam_i_House_Big_02_V2_F", 214000, 20, "Large House"],
        ["xCam_i_House_Big_02_V1_F", 214000, 20, "Large House"],
        ["Land_i_House_Big_01_V3_F", 214000, 20, "Large House"],


        ["Land_i_House_Small_01_V1_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_01_V2_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_01_V3_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_02_V1_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_02_V2_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_02_V3_F", 108000, 20, "Small House"],
        ["Land_i_House_Small_03_V1_F", 108000, 20, "Small House"],


        ["Land_i_Stone_HouseSmall_V1_F", 145000, 20, "Small Stone House"],
        ["Land_i_Stone_HouseSmall_V2_F", 145000, 20, "Small Stone House"],
        ["Land_i_Stone_HouseSmall_V3_F", 145000, 20, "Small Stone House"],

		
        ["Land_Slum_House01_F", 54000, 20, "Slum House"],
        ["Land_Slum_House02_F", 54000, 20, "Slum House"],
        ["Land_Slum_House03_F", 54000, 20, "Slum House"],
        ["Land_cargo_house_slum_F", 54000, 20, "Slum House"],


        ["Land_i_Garage_V1_F", 75000, 20, "Car Carage"],
        ["Land_i_Garage_V2_F", 75000, 20, "Car Carage"],


        ["Land_Cargo_House_V1_F", 45000, 20, "Cargo House"],
        ["Land_Cargo_House_V2_F", 45000, 20, "Cargo House"],
        ["Land_Cargo_House_V3_F", 45000, 20, "Cargo House"],


        ["Land_HouseA1", 1024000, 20, "Luxury House"],
        ["Land_HouseA1_L", 1024000, 20, "Luxury House"],
        ["Land_HouseA", 1300000, 20, "Luxury House"],
        ["Land_HouseB", 875499, 20, "Luxury House"],
        ["Land_HouseB1", 1240000, 20, "Luxury House"],
        ["Land_HouseB1_L", 1009000, 20, "Luxury House"],
        ["Land_HouseC_R", 1021000, 20, "Luxury House"],
        ["Land_HouseC1_L", 999999, 20, "Luxury House"],
        ["Land_HouseDoubleAL", 2300000, 20, "Luxury House"],
        ["Land_HouseDoubleAL2", 2048000, 20, "Luxury House"]
    ];


	HRP_farmersMarket = ["W_Wheat","W_wheatSeeds","W_woodLog","W_Logs"];
	HRP_drugDealer = ["W_Weed","W_cocaineSeeds","W_MushroomSeeds","W_HeroinSeeds","W_weedSeeds","W_weedBag","W_weedGrow2","W_methBag","W_cocaine","W_cocainePlant","W_CocainePicked","W_mushrooms","W_mushroomPlant","W_mushroomPicked"];
	HRP_mineraltrader = ["W_coalOre","W_ironOre","W_ironIngot","W_diamondOre","W_gem_diamond","W_coal","W_steelIngot","W_goldIngot"];
	HRP_sellPrices = 
	[
		["W_Wheat", 20],
		["W_wheatSeeds", 5],
		["W_woodLog", 30],
		["W_Weed", 50],

		["W_Weed", 90],
		["W_cocaineSeeds", 15],
		["W_MushroomSeeds", 15],
		["W_HeroinSeeds", 15],
		["W_weedSeeds", 15],
		["W_weedBag", 150],
		["W_weedGrow2", 30],
		["W_methBag", 30],
		["W_cocaine", 30],
		["W_cocainePlant", 32],
		["W_CocainePicked", 30],
		["W_mushrooms", 32],
		["W_mushroomPlant", 30],
		["W_mushroomPicked", 32],

		["W_coalOre", 60],
		["W_ironOre", 75],
		["W_goldOre", 200],
		["W_diamondOre", 100],

		["W_ironIngot", 150],
		["W_gem_diamond", 250],
		["W_coal", 105],
		["W_goldIngot", 360],
		["W_steelIngot", 320]
	];

	HRP_blackListedUsers = ["76561198063219567", "76561198083977040", "76561198166868892","76561197995364867"];

	HRP_cellNumbers = [1,2,3,4,5,6,7,8,9,10,11,12];

	HRP_payCheque = 39; //This good?
	HRP_bankTellerPay = 170; //Good?
	HRP_towTruckDriverPay = 250; //Good?
	HRP_policePay = 300; //Good?
	HRP_emsPay = 250; //Good?
	HRP_securityPay = 300; //Good?
	HRP_busDriverPay = 150; //Good?
	HRP_truckDriverPay = 150; //Good?
	HRP_dumpsterPay = 200;
	HRP_DOJPay = 250;
	HRP_MafiaPay = 220;
	HRP_FDPay = 300; // Wypłata FD here boiii

	player setVariable ["payCheque", HRP_payCheque, true];

	HRP_Messages = [];
	HRP_callNumber = [];


	HRP_mineObjects = ["A3L_Bits_Rock_L_Coal","A3L_Bits_Rock_L_Diamond","A3L_Bits_Rock_L_Iron","A3L_Bits_Rock_L_Gold"]; //This just the model class name of each rock?

	HRP_oreMined = 0;

	HRP_action = false;

	HRP_oreTypes =
	[
		"A3L_Bits_Rock_L_Coal",
		"A3L_Bits_Rock_L_Diamond",
		"A3L_Bits_Rock_L_Gold",
		"A3L_Bits_Rock_L_Iron"
	];

	HRP_mineArea = 
	[
		["Coal_1_MineArea","Coal","A3L_Bits_Rock_L_Coal"],
		["Iron_1_MineArea","Iron","A3L_Bits_Rock_L_Iron"],
		["Gold_1_MineArea","Gold","A3L_Bits_Rock_L_Gold"]	
	]; // ["Diamond_1_MineArea","Diamond","A3L_Bits_Rock_L_Diamond"]

	
	HRP_Trees = 
	[
		["t_pinuss2s_f", "W_woodLog"] // Is this all the trees on the map??
	];

	HRP_Axes = ["cg_hatchet","A3L_ChainSaw"]; //Good to me

	HRP_treeCount = 0;
	HRP_treeChopped = 0;

	HRP_Jobs = 
	[
		["Taksówkarz", 100, "Pracuj jako taksówkarz by zrabiać przez przewożenie swoich klientów. Wystarczy posiadać taksówkę!", "HRP_Taxi_Approved"],
		["Kierowca autobusu", 80, "Pracuj jako Kierowca autobusu. Zapisy: Zajezdnia autobusowa!", "HRP_Bus_Approved"],
		["Kasjer", 120, "Pracuj jako kasjer w lokalnym banku i pomagaj ludziom zarządzać swoim kontem.", "HRP_Bank_Approved"],
		["Kurier", 120, "Zostań kierowcą ciężarówki i zacznij przewoźić towary z punktu A do B.", "HRP_Truck_Approved"],
		["Mechanik", 3000, "Naprawiaj i holuj pojazdy swoich klientów by zrabiać za każdy pojazd", "HRP_Tow_Approved"],
		["Ochroniarz", 175, "Pracuj jako Ochroniaż w lokalnym banku.", "HRP_Security_Approved"],
		["Śmieciarz", 175, "Pracuj jako kierowca śmieciarki, zbieraj śmieci i zarabiaj.", "HRP_DumpTruck_Approved"]

	];

	missionNamespace setVariable ["Jobs", HRP_Jobs];

	HRP_phoneAppTime = 60; //?

	player setVariable ["taxiDriver", false, true];

	player setVariable ["approvedJobs", [], true];

	HRP_inCurrentCall = false;
	HRP_receivingCall = false;
	HRP_Calling = false;

	HRP_hadRadio = false; //?

	HRP_Eyes = ["Blue","Brown", "Green", "Hazel"];

 // ["DisplayName", "Item Name", "Blueprint",[["NeededIngredientID1",Ammount Needed, "Display Name"], "Section Name (e.g. Weapon, Magazine, etc), Time taken to craft (mins)"]

	HRP_craftAbleItems =   
	[
		["AK-74 Assault Rifle","hlc_rifle_ak74_dirty", "", [["W_steelIngot",15, "Steel Ingot"],["W_woodLog",8, "Wood"]], "Rifles", 1.5, false],
		["16Rnd 9x19 CZ","RH_16Rnd_9x19_CZ", "", [["W_steelIngot",6, "Steel Ingot"]], "Pistols", 0.1, true],
		["Stół Chemiczny","W_drugTable", "", [["W_desk",1, "Stół małego chemika"],["W_kolba",3,"Kolba"]], "Items", 1, true]

	];

	HRP_craftTypes = ["Rifles", "Pistols", "Items"]; //??

	HRP_bluePrints = [
		["bp_uzi", "Uzi"], 
		["bp_ak", "Kalashnikov Rifle"], 
		["bp_vz61", "Scorpian Pistol"], 
		["bp_rpk", "RPK"], 
		["bp_mk2", "MK2"], 
		["bp_m21", "M21 Rifle"], 
		["bp_rpg7", "Rocket-Propelled-Grenade"], 
		["bp_fal", "FN FAL"], 
		["bp_pyth", "Python"],
		["bp_deag", "Desert Eagle"], 
		["bp_57", ".57"], 
		["bp_mp5k", "MPK5"],
		["bp_DrugTable", "Stół chemiczny"]
	];

	HRP_craftSchedule = [];

	player setVariable ["anonymousCalling", false, true];

	player setVariable ["carryingObject", nil];

	player setVariable ["anonymousCalling", false];
	player setVariable ["blockedCall", false];

	HRP_furnitureTypes = 
	[
		"A3L_WorkBench", 
		"rmair_LoungeTableModernBig",
		"Land_PCSet_01_screen_F",
		"A3L_Boiler",
		"A3L_ManuMachine",
		"A3L_Smelter",
		"Land_Sun_Chair_F",
		"PLP_bo_SunChairWhite",
		"PLP_bo_SunChairRed",
		"PLP_bo_SunChairBlueLight",
		"Land_ChairPlastic_F",
		"Land_ChairWood_F",
		"Land_sfp_chair1",
		"Land_rmair_CouchModern",
		"Land_sfp_sofa1",
		"Land_MG_BlackModernSofa",
		"PLP_bo_SideTable",
		"Land_TablePlastic_01_F",
		"Land_WoodenTable_large_F",
		"Land_WoodenTable_small_F",
		"OfficeTable_01_new_F",
		"Land_sfp_dining_table1",
		"Land_sfp_table1",
		"Land_sfp_table_lack_glass1",
		"Land_sfp_lack1",
		"Land_sfp_lack2",
		"Land_sfp_bird_table_1",
		"rmair_BenchModernTable",
		"rmair_loungetablemodernbig",
		"rmair_loungetablemodernsmall",
		"land_bench_F",
		"Land_MapBoard_F",
		"Land_sfp_kitchen_cabinet",
		"Land_sfp_sink",
		"Land_sfp_stove",
		"Land_sfp_closet_white",
		"Land_sfp_desk1",
		"Land_sfp_grill1",
		"Land_sfp_refrigerator",
		"Fridge_01_Closed_F",
		"Land_ShelvesWooden_F",
		"TOB_LawnLightPlasticOn",
		"PLP_bo_ChainOfLightsMono",
		"PLP_bo_ChainOfLightsMonoShort",
		"PLP_bo_ChainOfLightsColored",
		"PLP_bo_ChainOfLightsColoredShort",
		"Land_Fan",
		"Land_Threelights",
		"Land_Spotlight",
		"Land_OverheadSpotlight",
		"Land_Fluor_Lamp",
		"Land_Camping_Light_F",
		"PLP_bo_chainoflanterns",
		"PLP_bo_Sunlounger",
		"PLP_bo_SunloungerSeatCover",
		"PLP_bo_barstool",
		"Land_Sunshade_02_F",
		"Land_Sunshade_01_F",
		"Land_Sunshade_04_F",
		"Land_TableDesk_F",
		"Land_sfp_mil_bunkbed_single",
		"Land_sfp_mil_bunkbed",
		"TOB_ClothesDryerRotaryColoredB",
		"Land_FlatTV_01_F","Land_SamsungTV",
		"bis_pc",
		"land_PCSET_01_screen_F",
		"land_trophy_01_bronze_F",
		"land_trophy_01_silver_F",
		"land_trophy_01_gold_F",
		"Land_Microwave_01_F",
		"Land_WaterCooler_01_new_F",
		"red_desk_1_0",
		"red_desk_1_0",
		"red_desk_1_1",
		"red_desk_1_2",
		"red_desk_1_3",
		"red_whiteboard_1_0",
		"red_trashcan",
		"red_filecabinet",
		"red_interrogationtable",
		"red_projectscreen",
		"red_locker",
		"red_conferencetable",
		"red_conferencetable2",
		"red_shelf",
		"red_shelf2",
		"red_chair_1_1",
		"red_chair_1_2",
		"red_chair_1_3",
		"red_chair_1_4",
		"red_chair_1_5",
		"red_chair_1_6",
		"red_chair_1_7",
		"red_chair_1_8",
		"red_chair_1_9",
		"red_chair_1_10",
		"red_chair_1_11",
		"red_chair_1_12",
		"red_chair_1_13",
		"red_chair_1_14",
		"red_chair_1_15",
		"red_chair_1_16",
		"JDDesk",
		"JDShelf",
		"JDLockers",
		"JDTable",
		"JDWashingMachine"
	];

	HRP_inProcessing = false;

	HRP_processingUnitsInit = ["A3L_Boiler", "A3L_ManuMachine", "A3L_Smelter"];

	HRP_objectsToProcess = //Items
	[
		["W_ironOre", "W_ironIngot", "Iron", 600],
		["W_goldOre", "W_goldIngot", "Gold", 600],
		["W_diamondOre", "W_diamonduncut", "Uncut Diamond", 600],
		["W_coalOre", "W_coal", "Coal", 600]
	];

	HRP_ProcessItems =
	[
		["Iron Ingot","W_ironIngot", 1, [1,2],[["W_ironOre",1]]],
		["Gold Ingot","W_goldIngot", 1, [1,2],[["W_goldOre",1]]],
		["Coal","W_coal", 1, [2],[["W_CoalOre",1]]],
		["Steel Ingot","W_steelIngot", 1, [3],[["W_ironOre",1],["W_coalOre",1]]],
		["Uncut Diamond","W_gem_diamond", 1, [2],[["W_DiamondOre",1]]]
	];
	HRP_ProcessingUnits = 
	[	
		["A3L_Smelter", 1, "Smeltery"],
		["A3L_Boiler", 2, "Macerator"],
		["A3L_ManuMachine", 3, "Alloy Smeltery"]	
	];

	HRP_processingLimits = [1,2,3,4,5];

	HRP_carryingPot = false;
	HRP_growTime = 5; // Minutes.

	HRP_bankRobberyTime = 15; // Minutes

	HRP_recentRobberyTime = 30; // Minutes

	HRP_maxBankCash = 10000;

	HRP_lockBoxArray = 
	[
		["W_ironIngot", 4, "Item"]
	]; 

	

	HRP_lockBoxesRobbed = 0; 

	HRP_ringTones = 
	[
		["Classic iPhone", "iphone_ringtone", 3],
		["Chimba", "chimba_ringtone", 3],
		["House of Cards", "hoc_ringtone", 3],
		["Marimba", "marimba2_ringtone", 3]
	];

		
	HRP_trainingTypes =
	[	
		["Rebel Training", '["HRP_Civ_Rebel", 50]'],
		["Diving Training", '["HRP_Civ_Diving", 50]']
	];

	player setVariable ["unconscious", false, true];
	player setVariable ["stabilized", false, true];

	HRP_startingCars = ["ivory_190e"];


	HRP_garageMarkers = ["HRP_garage1","HRP_garage2","HRP_garage3","HRP_pGarage_1","HRP_pGarage_2","HRP_pGarage_3", "HRP_emsGarage_1", "HRP_emsGarage_2"];

	HRP_openANPR = false;

	HRP_healPrice = 40;

	HRP_Food = 
	[
		["Water", 2,40,"drinkbev", "CG_Water_Item_i"], // Display Name, Food or Drink (1/2), Ammount to full, sound to play
		["Tactical Bacon", 1,43,"eatfood", "CG_TacBac_Item_i"],
		["Can of Coke", 2,35,"drinkcanbev", "CG_WaterCustom01_Item_i"],
		["Dr Pepper", 2,35,"drinkcanbev", "CG_WaterCustom02_Item_i"],
		["Monster Energy Drink!", 2,45,"drinkcanbev", "CG_WaterCustom04_Item_i"],
		["Dicks Sausage", 1,32,"eatfood", "CG_TacBacCustom01_Item_i"],
		["Dog Food", 1,15,"eatfood", "CG_TacBacCustom02_Item_i"],
		["Chicken Soup", 1,24,"eatfood", "CG_TacBacCustom03_Item_i"],
		["Pea Soup", 1,26,"eatfood", "CG_TacBacCustom05_Item_i"],
		["Pumpkin Soup", 1,22,"eatfood", "CG_TacBacCustom06_Item_i"],
		["Beef Soup", 1,26,"eatfood", "CG_TacBacCustom07_Item_i"],
		["Lettuce Soup", 1,26,"eatfood", "CG_TacBacCustom08_Item_i"],
		["Bread", 1,29,"eatfood", "Bread"],
		["HamCheeseSanga", 1,36,"eatfood", "HamCheeseSanga"],
		["Lamington", 1,31,"eatfood", "Lamington"],
		["MaggiiNoodle", 1,25,"eatfood", "MaggiiNoodle"],
		["MeatPie", 1,42,"eatfood", "MeatPie"],
		["PartyPack", 1,45,"eatfood", "PartyPack"],
		["Sausages", 1,41,"eatfood", "Sausages"],
		["Shapes", 1,38,"eatfood", "Shapes"],
		["SmithsChips", 1,43,"eatfood", "SmithsChips"],
		["Steak", 1,52,"eatfood", "Steak"],
		["Timtams", 1,39,"eatfood", "Timtams"],
		["VegemiteSandwhich", 1,40,"eatfood", "VegemiteSandwhich"],
		["WeetBix", 1,35,"eatfood", "WeetBix"]
	];

	HRP_alcohol = 
	[
	    ["Guinness", "CG_WaterCustom03_Item_i", 0.6, "drinkbev"], // ammount to increase toxicity level by
	    ["XXXX Gold Stubbie", "beer4xGold", 0.4, "drinkbev"],
	    ["Carlton Draught Stubbie", "CarltonDraught", 0.3, "drinkcanbev"],
	    ["Corona Stubbie", "Corona", 0.3, "drinkcanbev"],
	    ["Coopers Stubbie", "Coopers", 0.4, "drinkcanbev"],
	    ["Jim Bean Can", "Jimbeam", 0.5, "drinkcanbev"],
	    ["VB Can", "VBCan", 0.4, "drinkcanbev"]
	];

	player setVariable ["currentOccupation", "Unemployed", true];

	player setVariable ["bloodToxicity", 0, true];

	/*
	
	QPAA

	*/
	qpaa = 0;
	//if (getplayerUID player IN [""]) then { qpaa = 2;}; //plebs
	//if (getplayerUID player IN [""]) then { qpaa = 3;}; //low access
	/*								//BeryK 			//ValdoR */
	if (getplayerUID player IN ["76561198119370941","76561198212462769"]) then { qpaa = 4;}; //mid access
	/*								//TheWolek			//DonTheDev	*/
	if (getplayerUID player IN ["76561198071999873","76561198084548281"]) then { qpaa = 6;}; //Hi access

	HRP_Hunger = 0;
	HRP_Thirst = 0;

	HRP_atmRobTime = 200;
	HRP_atmRobCash = 700;

	HRP_LoadingCreate = false;

	HRP_fnc_vehiclePreviewLocations = 
	[
		["main",[1446.39,3544.79,0.0014019], [1452.62,3545.78,1.2]],
		["furniture", [1446.39,3544.79,0.0014019], [1452.62,3545.78,1.2]],
		["machines", [1446.39,3544.79,0.0014019], [1452.62,3545.78,1.2]]
	];

	player setVariable ['knockedOut', false, true];

	HRP_patDownCoolDown = false;

	HRP_earPlugs = true;

	HRP_Wrecks = 
	[
		["Land_UWreck_FishingBoat_F", "Drug", 5],
		["Land_Wreck_Traw_F", "All", 5],
		["Land_Boat_05_wreck_F", "Supply", 5],
		["Land_Wreck_Traw2_F", "All", 5]
	];

	//Pojemniki na śmieci (drugs)
	/*
	HRP_lootdumpsters = [
		"Land_Dumpster_DED_Dumpster_01_F",
		"Land_garbageContainer_closed_F",
		"plp_ctm_TrashBinBigBlack",
		"plp_cts_TrashContColGeneric",
		"plp_cts_TrashContColPlasticOpen",
		"plp_ctm_TrashcanCityPark",
		"plp_cts_TrashContColGlassOpen"
	];
	HRP_drugRunMarkers = [1,2,3,4,5,6,7,8,9,10];
	*/
	HoldingDrugTable = false;
	/*
	//Dumpster Job
	*/
	//HRP_dumpsterRoutes = ["HRP_dumpsterRoute1","HRP_dumpsterRoute2"];
	//HRP_dumpsterRoute1 = [1,3,5,7,9,11,13,15,17,19,21,23,24,25];
	//HRP_dumpsterRoute2 = [2,4,6,8,10,12,14,16,18,20,22];
	HRP_dumpTrucks = ["chbom"];

	HRP_wreckLoot = 
	[
		["Drug", [	
		[["W_weedSeeds", "W_weedSeeds"], "Item"], 
		[["W_weedBag", "W_weedBag"], "Item"], 
		[["W_mushrooms", "W_cocaine"], "Item"], 
		[["W_cocaine", "W_weedSeeds"], "Item"],
		[["W_mushrooms", "W_mushrooms"], "Item"],
		[["W_mushroomPlant", "W_mushroomPicked"], "Item"],
		[["W_heroin", "W_heroin"], "Item"],
		[["W_heroinPlant", "W_cocaine"], "Item"]
		]
		],


		["Supply",[	
		[["W_bluePrintNotes", "W_cuffkeys"], "Item"], 
		[["W_handcuff", "W_cuffkeys"], "Item"],
		[["W_legshackles", "W_cuffkeys"], "Item"],
		[["W_RDX", "W_Pot"], "Item"],
		[["W_c4", "W_Zipties"], "Item"],
		[["W_Rope", "W_Rope"], "Item"],
		[["W_coalOre", "W_coalOre"], "Item"],
		[["W_ironOre", "W_ironOre"], "Item"],
		[["W_coalOre", "W_diamondOre"], "Item"],
		[["W_goldOre", "W_ironOre"], "Item"],
		[["W_coal", "W_steelIngot"], "Item"],
		[["W_woodLog", "W_woodLog"], "Item"],
		[["W_gem_sapphire", "W_gem_emerald"], "Item"],
		[["W_gem_diamond", "W_gem_diamond"], "Item"],
		[["beer4xGold", "CarltonDraught"], "Item"],
		[["CG_TacBacCustom08_Item_i", "CG_TacBacCustom07_Item_i"], "Item"],
		[["CG_TacBacCustom03_Item_i", "CG_TacBacCustom05_Item_i"], "Item"],
		[["VBCan", "Bread"], "Item"],
		[["Lamington", "MeatPie"], "Item"],
		[["Sausages", "SmithsChips"], "Item"],
		[["Timtams", "WeetBix"], "Item"],
		[["W_Zipties", "W_lockpicks"], "Item"]
		]	
		],


		["All",[	
		[["W_bluePrintNotes", "ItemGPS"], "Item"], 
		[["ItemGPS", "ItemGPS"], "Item"],
		[["beer4xGold", "CarltonDraught"], "Item"],
		[["CG_TacBacCustom08_Item_i", "CG_TacBacCustom07_Item_i"], "Item"],
		[["CG_TacBacCustom03_Item_i", "CG_TacBacCustom05_Item_i"], "Item"],
		[["VBCan", "Bread"], "Item"],
		[["Lamington", "MeatPie"], "Item"],
		[["Sausages", "SmithsChips"], "Item"],
		[["Timtams", "WeetBix"], "Item"],
		[["W_Zipties", "W_lockpicks"], "Item"],
		[["W_handcuff", "W_cuffkeys"], "Item"],
		[["W_legshackles", "W_cuffkeys"], "Item"]
		]	
		]
	];

	HRP_wreckMarkers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

	HRP_InteractionButtons = [1600,1601,69028,1603,1604,1605,1606,1607];

	HRP_noDamageWeapons= ["A3L_JackHammer", "A3L_ChainSaw"];

	HRP_busPayAmmount = 100;
	HRP_deliveryPayAmmount = 500;
	HRP_companyDeliveryPayAmmount = 350;

	HRP_Buses = [""];
	HRP_busStops = 
	[
		[1, "Lakeside Gas Station"],
		[2, "Main Street"],
		[3, "Court"],
		[4, "Lakeside National"],
		[5, "Lakeside General"],
		[6, "Confederation Bridge"],
		[7, "Mapleton Garage"],
		[8, "Mapleton Market"],
		[9, "Penneyville"],
		[10, "Georgetown"],
		[11, "Lakeside International"],
		[12, "Penneyville"],
		[13, "Confederation Bridge"],
		[14, "Bus Depot"]
	];

	HRP_truckMarkersPickup =
	[
		[1,"Sharnwick Industrial"],
		[2,"Public Machinery"],
		[3,"Coal Industrial"],
		[4,"Cook's Gas Station"],
		[5,"King's Casino"],
		[6,"Public Machinery"],
		[7,"Bus Depot Shed"],
		[8,"Secret Shed"],
		[9,"Southern Mine"],
		[10,"Harbour"],
		[11,"Sharnwick Truck Depot"],
		[12,"Sharnwick Truck Depot"],
		[13,"Mineral Trader"],
		[14,"Scrabster Shed"]
	];
	HRP_truckMarkersDeliver =
	[
		[1,"Sharnwick Truck Depot"],
		[2,"Harbour"],
		[3,"Southern Mine"],
		[4,"Sharnwick Industrial"],
		[5,"King's Casino"],
		[6,"Bus Depot Shed"],
		[7,"Mineral Trader"],
		[8,"Hellen's Industrial"],
		[9,"Secret Shed"],
		[10,"Cook's Gas Station"],
		[11,"Cook's City"],
		[12,"Cook's shed"],
		[13,"Coal Industrial"],
		[14,"Scrabster Shed"]
	];

	HRP_Trucks = ["Jonzie_Flat_Bed","Jonzie_Log_Truck","Jonzie_Box_Truck"];

	HRP_load = [
		"plp_ctm_WoodBoxLightBig",
		"plp_cts_CartonDarkBig"
	];

	HRP_loadCont = [
		"plp_cts_ContPlainBlack",
		"plp_cts_ContShippingnavyBlue",
		"plp_cts_ContShippingYellow",
		"plp_cts_ContShippingOrange",
		"plp_cts_HighSecContRed",
		"plp_ctm_WoodBoxLightHuge"
	];

	//HRP_companyTruck = "Jonzie_Western";

	HRP_activeTrailers = [];


	HRP_busRoutes = ["HRP_lsBusRoute"];
	HRP_lsBusRoute = 
	[
		[1, "King's Casino"],
		[2, "Scrabster"],
		[3, "Cook's Hospital"],
		[4, "Cook's PD"],
		[5, "Iron Mine"],
		[6, "State Court"],
		[7, "Sharnwick"],
		[8, "Hellen's PD"],
		[9, "Hellen's City"],
		[10, "Mineral Trader"],
		[11, "Correctional Facility"],
		[12, "Villas"]
	];

	HRP_gvtBus = "citelis_tcl";

	HRP_buses = ["citelis_tcl"];

	

	HRP_cannotSell = false;

	HRP_vehDelay = false;

	HRP_atmDelay = false;

	HRP_fireLevel = 0;
	HRP_fireToExtinguish = 0;
	HRP_activeFireEffects = nil;

	HRP_hasFlamed = false;

	HRP_noSound = false;

	HRP_copGuns = 
	[
		"RH_M4_ris_m",
		"hlc_rifle_M4",
		"RH_m1911",
		"RH_ta01nsn",
		"RH_M4A6",
		"RH_fn57",
		"RH_kimber_nw",
		"RH_m9",
		"SMG_01_F",
		"RH_M4A6",
		"RH_M16A6",
		"RH_M16A4_m",
		"hlc_rifle_CQBR",
		"hlc_rifle_bcmjack",
		"hlc_rifle_bcmblackjack",
		"hlc_rifle_vendimus",
		"arifle_SPAR_03_blk_F",
		"hlc_smg_mp510",
		"RH_fnp45",
		"RH_m9"
	];

	
	HRP_Taxis =
	[
		"ivory_rs4_taxi",
		"ivory_190e_taxi"


	/*	"red_cvpi_06_taxi",
		"red_cvpi_06_taxi2",
		"red_cvpi_06_taxi3",
		"red_gs350_13_taxi",
		"red_s65_12_taxi",
		"red_taurus_10_taxi",
		"red_taurus_10_taxi2"*/
	];

	HRP_activeLocalCars = [];

	

	HRP_towTrucks = 
	[
		"Joznie_Tow_Truck"
	];
};