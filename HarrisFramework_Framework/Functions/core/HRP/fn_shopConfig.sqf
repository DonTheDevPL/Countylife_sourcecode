/*
    Author: Ben Harris - Structure - Anthony Penney - Configuration
    Title: Shop_Config.sqf
    Description: Master Config File for shops
*/

/*Kiedy given nie umie stawiać przecinków to rozjeb mu łep*/
HRP_fnc_shopConfig = {
 
    //TYPY: "Uniform" "Vest" "Backpack" "Glasses" "Headgear"
    Clothing_AlwinsTailors =
    [
        ["Old Black Suit - White Shirt - Red Tie",'["A3L_Suit_Uniform","Uniform","320","","Civ",0]'],
        ["Black Suit - White Shirt - Black Tie",'["KAEL_SUITS_BR_F15","Uniform","430","","Civ",0]'],
        ["Black Suit - Red Shirt - Black Tie",'["KAEL_SUITS_BR_F16","Uniform","430","","Civ",0]'],
        ["Black Suit - Black Shirt - Black Tie",'["KAEL_SUITS_BR_F17","Uniform","430","","Civ",0]'],
        ["Black Suit - Salmon Shirt - Black Tie",'["KAEL_SUITS_BR_F18","Uniform","430","","Civ",0]'],
        ["Black Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F19","Uniform","430","","Civ",0]'],
        ["Black Suit - White Shirt - Gold Tie",'["KAEL_SUITS_BR_F20","Uniform","430","","Civ",0]'],
        ["Black Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F21","Uniform","430","","Civ",0]'],
        ["Black Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F22","Uniform","430","","Civ",0]'],
        ["Black Suit - Salmon Shirt - White Tie",'["KAEL_SUITS_BR_F23","Uniform","430","","Civ",0]'],
        ["Brown Suit - White Shirt - Green Tie",'["KAEL_SUITS_BR_F26","Uniform","430","","Civ",0]'],
        ["Brown Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F27","Uniform","430","","Civ",0]'],
        ["Brown Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F28","Uniform","430","","Civ",0]'],
        ["Blue Suit - Baby Blue Shirt - Gold Tie",'["KAEL_SUITS_BR_F29","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F30","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Orange Tie",'["KAEL_SUITS_BR_F31","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F32","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Pokadot Tie",'["KAEL_SUITS_BR_F33","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F34","Uniform","470","","Civ",0]'],
        ["Blue Suit - White Shirt - Baby Blue Tie",'["KAEL_SUITS_BR_F35","Uniform","470","","Civ",0]'],
        ["Black Beret",'["H_Beret_blk","Headgear","42","","Civ",0]'],
        ["Black Cowboy Hat",'["ALE_H_Cowboy_Black","Headgear","29","","Civ",0]'],
        ["Checkered Fedora",'["H_Hat_checker","Headgear","36","","Civ",0]'],
        ["Grey Fedora",'["H_Hat_grey","Headgear","36","","Civ",0]'],
        ["Brown Fedora",'["H_Hat_brown","Headgear","34","","Civ",0]']
    ];
    Clothing_KaelTailors =
    [
        ["Formal Suit",'["KAEL_SUITS_BR_F12","Uniform","510","","Civ",0]'],
        ["Blue Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F3","Uniform","570","","Civ",0]'],
        ["Dark Green Suit - White Shirt - Dark Green Tie",'["KAEL_SUITS_BLK_F","Uniform","570","","Civ",0]'],
        ["Bright Green Suit - White Shirt - Bright Green Tie",'["KAEL_SUITS_BR_F8","Uniform","570","","Civ",0]'],
        ["Light Purple Suit - White Shirt - Purple Tie",'["KAEL_SUITS_BR_F11","Uniform","570","","Civ",0]'],
        ["Off Blue Suit - White Shirt - Blue Blue",'["KAEL_SUITS_BR_F10","Uniform","570","","Civ",0]'],
        ["Orange Suit - White Shirt - Orange Tie",'["KAEL_SUITS_BR_F7","Uniform","570","","Civ",0]'],
        ["Yellow Suit - White Shirt - Green Tie",'["KAEL_SUITS_BR_F6","Uniform","570","","Civ",0]'],
        ["Pink Suit - White Shirt - Purple Tie",'["KAEL_SUITS_BR_F5","Uniform","570","","Civ",0]'],
        ["Purple Suit - White Shirt - Purple Tie",'["KAEL_SUITS_BR_F4","Uniform","570","","Civ",0]'],
        ["Red Suit - White Shirt - Red tie",'["KAEL_SUITS_BR_F","Uniform","570","","Civ",0]'],
        ["Teal Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F9","Uniform","570","","Civ",0]'],
        ["White Suit - Black Shirt - White tie",'["KAEL_SUITS_BR_F13","Uniform","570","","Civ",0]'],
        ["White Suit - White Shirt - White Tie",'["KAEL_SUITS_BR_F14","Uniform","570","","Civ",0]']
    ];
    Clothing_ArmySurplus =
    [
        ["Green Jumper UK Ensignia",'["A3LJumperCIDGreen","Uniform","860","","Civ",0]'],
        ["Black Jumper UK Ensignia",'["A3LJumperUKBlack","Uniform","910","","Civ",0]'],
        ["Full Camo Fatigues",'["U_B_CombatUniform_mcam","Uniform","960","","Civ",0]'],
        ["British Combat Uniform",'["U_B_CTRG_1","Uniform","879","","Civ",0]'],
        ["Jungle Combat Jacket",'["IRA_Soldier_Outfit_3","Uniform","1270","","Civ",0]'],
        ["Green Combat Jacket",'["IRA_Soldier_Outfit_1","Uniform","1260","","Civ",0]'],
        ["Officer Fatigues",'["U_O_OfficerUniform_ocamo","Uniform","1320","","Civ",0]'],
        ["Military Vest",'["TAC_LBT_AX_B","Vest","1054","","Civ",0]'],
        ["Gear Harness",'["V_HarnessO_brn","Vest","721","","Civ",0]'],
        ["Gear Suspender",'["TAC_LBT_HL3_OD","Vest","760","","Civ",0]'],
        ["Tan Assault Pack",'["B_AssaultPack_cbr","Backpack","945","","Civ",0]'],
        ["Khaki Assault Pack",'["B_AssaultPack_khk","Backpack","922","","Civ",0]'],
        ["Green Assualt Pack",'["B_AssaultPack_rgr","Backpack","914","","Civ",0]'],
        ["Military Long Range Radio",'["tf_anarc164","Backpack","1460","","Civ",0]'],
        ["Green Kitbag",'["B_Kitbag_rgr","Backpack","890","","Civ",0]'],
        ["Sage Kitbag",'["B_FieldPack_khk","Backpack","890","","Civ",0]'],
        ["Khaki Field Pack",'["B_Kitbag_sgg","Backpack","982","","Civ",0]']
    ];
    Clothing_Accessories =
    [
        ["Aviator Sunglasses",'["G_Aviator","Glasses","860","","Civ",0]'],
        ["Blue Ladies Sunglasses",'["G_Lady_Blue","Glasses","910","","Civ",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","960","","Civ",0]'],
        ["Blue Shades",'["G_Shades_Blue","Glasses","879","","Civ",0]'],
        ["Red Shades",'["G_Shades_Red","Glasses","1270","","Civ",0]'],
        ["Red Sport Sunglasses",'["G_Sport_Red","Glasses","1260","","Civ",0]'],
        ["Tinted Square Glasses",'["G_Squares_Tinted","Glasses","1320","","Civ",0]'],
        ["Black Beret",'["H_Beret_blk","Headgear","1140","","Civ",0]'],
        ["Khaki Booniehat",'["H_Booniehat_khk","Headgear","1054","","Civ",0]'],
        ["Olive Booniehat",'["H_Booniehat_oli","Headgear","721","","Civ",0]'],
        ["Black Cap",'["H_Cap_blk","Headgear","760","","Civ",0]'],
        ["Blue Cap",'["H_Cap_blu","Headgear","945","","Civ",0]'],
        ["Red Cap",'["H_Cap_red","Headgear","922","","Civ",0]'],
        ["Tophat",'["Kio_Capital_Hat","Headgear","914","","Civ",0]'],
        ["Brown Cowboy Hat",'["ALE_H_Cowboy_Brown","Headgear","1460","","Civ",0]'],
        ["White Cowboy Hat",'["ALE_H_Cowboy_White","Headgear","890","","Civ",0]'],
        ["Blue Hat",'["H_Hat_blue","Headgear","890","","Civ",0]'],
        ["Flat-Top Redsox Hat",'["ALE_H_NewEra_Redsox","Headgear","914","","Civ",0]'],
        ["Flat-Top Rouge Hat",'["ALE_H_NewEra_Rouge","Headgear","1460","","Civ",0]'],
        ["Flat-Top Lakers Hat",'["ALE_H_NewEra_Lakers","Headgear","890","","Civ",0]'],
        ["Flat-Top Cyan Hat",'["ALE_H_NewEra_Cyan","Headgear","890","","Civ",0]'],
        ["Flat-Top Black Hat",'["ALE_H_NewEra_Black","Headgear","914","","Civ",0]'],
        ["Flat-Top Monster Hat",'["ALE_H_NewEra_Monster","Headgear","1460","","Civ",0]'],
        ["Flat-Top Superman Hat",'["ALE_H_NewEra_Superman","Headgear","890","","Civ",0]'],
        ["Strawhat",'["H_StrawHat_dark","Headgear","890","","Civ",0]'],
        ["Warm Cookie Monster Hat",'["Kio_Hat","Headgear","890","","Civ",0]']
    ];
    Clothing_Primark =
    [
        ["Alwin's Suit (Black 10)",'["KAEL_SUITS_BR_F24","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 3)",'["KAEL_SUITS_BR_F17","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 4)",'["KAEL_SUITS_BR_F18","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 5)",'["KAEL_SUITS_BR_F19","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 6)",'["KAEL_SUITS_BR_F20","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 7)",'["KAEL_SUITS_BR_F21","Uniform","57","","1000",0]'],
        ["Alwin's Suit (Black 8)",'["KAEL_SUITS_BR_F22","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black 9)",'["KAEL_SUITS_BR_F23","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Black)",'["KAEL_SUITS_BR_F15","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Brown 1)",'["KAEL_SUITS_BR_F26","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Brown 2)",'["KAEL_SUITS_BR_F27","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Brown 3)",'["KAEL_SUITS_BR_F28","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 1)",'["KAEL_SUITS_BR_F29","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 2)",'["KAEL_SUITS_BR_F30","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 3)",'["KAEL_SUITS_BR_F31","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 4)",'["KAEL_SUITS_BR_F32","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 5)",'["KAEL_SUITS_BR_F33","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 6)",'["KAEL_SUITS_BR_F34","Uniform","1000","","Civ",0]'],
        ["Alwin's Suit (Navy 7)",'["KAEL_SUITS_BR_F35","Uniform","1000","","Civ",0]'],
        ["Kael Suit (Blue)",'["KAEL_SUITS_BR_F3","Uniform","850","","Civ",0]'],
        ["Kael Suit (Formal)",'["KAEL_SUITS_BR_F12","Uniform","850","","Civ",0]'],
        ["Kael Suit (Green)",'["KAEL_SUITS_BR_F8","Uniform","850","","Civ",0]'],
        ["Kael Suit (Green)",'["KAEL_SUITS_BLK_F","Uniform","850","","Civ",0]'],
        ["Kael Suit (Light Purple)",'["KAEL_SUITS_BR_F11","Uniform","850","","Civ",0]'],
        ["Kael Suit (off blue)",'["KAEL_SUITS_BR_F10","Uniform","850","","Civ",0]'],
		["Kael Suit (Off Orange)",'["KAEL_SUITS_BR_F7","Uniform","850","","Civ",0]'],
		["Kael Suit (Off Yellow)",'["KAEL_SUITS_BR_F6","Uniform","835","","Civ",0]'],
		["Kael Suit (Pink)",'["KAEL_SUITS_BR_F5","Uniform","820","","Civ",0]'],
		["Kael Suit (Purple)",'["KAEL_SUITS_BR_F4","Uniform","815","","Civ",0]'],
		["Kael Suit (Red)",'["KAEL_SUITS_BR_F","Uniform","920","","Civ",0]'],
		["Kael Suit (teal)",'["KAEL_SUITS_BR_F9","Uniform","820","","Civ",0]'],
		["Kael Suit (White 1)",'["KAEL_SUITS_BR_F13","Uniform","850","","Civ",0]'],
		["Kael Suit (White)",'["KAEL_SUITS_BR_F14","Uniform","860","","Civ",0]'],
		["EF SUIT 1",'["EF_suit_1","Uniform","825","","Civ",0]'],
		["EF SUIT 2",'["EF_suit_2","Uniform","900","","Civ",0]'],
		["EF SUIT 3",'["EF_suit_3","Uniform","870","","Civ",0]'],
		["EF SUIT 4",'["EF_suit_4","Uniform","800","","Civ",0]'],
		["EF SUIT 5",'["EF_suit_5","Uniform","700","","Civ",0]'],
		["EF SUIT 6",'["EF_suit_6","Uniform","1000","","Civ",0]'],
		["EF Hoodie (Black)",'["EF_HM_B1","Uniform","350","","Civ",0]'],
		["EF Hoodie (Blue)",'["EF_HM_BL1","Uniform","350","","Civ",0]'],
		["EF Hoodie (OD)",'["EF_HM_OD1","Uniform","350","","Civ",0]'],
		["EF Hoodie (Sage)",'["EF_HM_SG1","Uniform","350","","Civ",0]'],
		["EF Hoodie (Violet)",'["EF_HM_PP1","Uniform","350","","Civ",0]'],
		["EF Hoodie 2(Black)",'["EF_HM_B2","Uniform","350","","Civ",0]'],
		["EF Hoodie 2(Blue)",'["EF_HM_BL2","Uniform","350","","Civ",0]'],
		["EF Hoodie 2(OD)",'["EF_HM_OD2","Uniform","350","","Civ",0]'],
		["EF Hoodie 2(Sage)",'["EF_HM_SG2","Uniform","350","","Civ",0]'],
		["EF Hoodie 2(Violet)",'["EF_HM_PP2","Uniform","350","","Civ",0]'],
		["EF Male Jacket",'["EF_MKJKT","Uniform","350","","Civ",0]'],
		["EF Male Jacket 2",'["EF_MKJKT2","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 2 (chinos)",'["EF_M_jkt2_2","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 2 (chinos) 2",'["EF_M_jkt2_22","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 2 (Jeans)",'["EF_M_jkt1_2","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 3 (chinos)",'["EF_M_jkt2_3","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 3 (chinos) 2",'["EF_M_jkt2_32","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 3 (Jeans)",'["EF_M_jkt1_3","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 4 (chinos)",'["EF_M_jkt2_4","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 4 (Suit)",'["EF_M_jkt4","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 2 (T/Chinos)",'["EF_M_jkt3","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 5 (Suit)",'["EF_M_jkt42","Uniform","350","","Civ",0]'],
		["Ef Male Jacket 5 (T/Chinos)",'["EF_M_jkt32","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (BK/Pink Stain)",'["EF_HM_LPBPS","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (BK/Pink)",'["EF_HM_LPBP","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (BK/Red)",'["EF_HM_LPBR","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (BK/white)",'["EF_HM_LPBW","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (black)",'["EF_HM_LPB","Uniform","350","","Civ",0]'],
		["EF Punks hoodie (blue)",'["EF_HM_LPBL","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(BK/Pink Stain)",'["EF_HM_LPBP2","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(BK/Pink)",'["EF_HM_LPBR2","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(BK/Red)",'["EF_HM_LPBW2","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(BK/White)",'["EF_HM_LPB2","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(Black)",'["EF_HM_LPBL2","Uniform","350","","Civ",0]'],
		["EF Punks hoodie 2(Blue)",'["EF_MX1","Uniform","350","","Civ",0]'],
		["",'["TRYK_U_B_ARO1_BLK_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_ARO1_BLK_R_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_ARO1_CBR_R_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_ARO1_GR_R_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_ARO2R_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_AOR2_BLK_R_CombatUniform","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_BLKOCP_R_CombatUniformTshirt","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_BLKTANR_CombatUniformTshirt","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_3CD_BLK_BDUTshirt2","Uniform","600","","Civ",0]'],
		["",'["TRYK_OVERALL_SAGE_BLKboots_nk_blk2","Uniform","300","","Civ",0]'],
		["",'["TRYK_OVERALL_nok_flesh","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_wh_blk_Rollup_CombatUniform","Uniform","300","","Civ",0]'],
		["",'["TRYK_OVERALL_SAGE","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_TAN_1","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_OD_BLK","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_BLK_OD","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_BLKTAN","Uniform","600","","Civ",0]'],
		["",'["TRYK_U_B_BLK3CD","Uniform","600","","Civ",0]'],
		["",'["TRYK_SUITS_BLK_F","Uniform","650","","Civ",0]'],
		["",'["TRYK_SUITS_BR_F","Uniform","530","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW8","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW3","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW9","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW7","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUGs_BLK_R","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUGs_GRY_R","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUGs_OD_R","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_GRY_PCUs_R","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_GRY_PCUs","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_OD_Rollup_CombatUniform","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_wh_blk_Rollup_CombatUniform","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_wh_OD_Rollup_CombatUniform","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_wh_tan_Rollup_CombatUniform","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BWH","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_R","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_RED2","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_WHB","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_ylb","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_od_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_ylb_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BK_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BL_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BWH_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_R_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_RED2_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_WH_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_WHB_Sleeve","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_PAD_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_PAD_BLW","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_BLW","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_BLW","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_BLW","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_PAD_BLU3","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_BLU3","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_BLU3","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_BLU3","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_BLU3","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_PAD_RED2","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_RED2","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_RED2","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_RED2","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_BLK_PAD_YEL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_OD_PAD_YEL","Uniform","300","","Civ",0]'],
		["",'["TRYK_shirts_TAN_PAD_YEL","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_pad_hood_blod","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_pad_hood_CL_blk","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_pad_hood_BLK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_pad_hood_odBK","Uniform","300","","Civ",0]'],
		["",'["TRYK_T_BLK_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_T_OD_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_T_TAN_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_T_T2_PAD","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_denim_hood_blk","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_denim_jersey_blk","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_denim_jersey_blu","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_pad_j","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_BLK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_COY","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_G_BL","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_G_BLK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_G_COY","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_taki_G_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_T_BG_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_T_BG_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_T_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_RED_T_BR","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_BLK_T_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_Denim_T_BG_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_Denim_T_BG_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_Denim_T_BK","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_Denim_T_WH","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW5","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW2","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW6","Uniform","300","","Civ",0]'],
		["",'["TRYK_U_B_PCUHsW4","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_BK_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_MTP_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_SW_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_MTP","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_SW","Uniform","300","","Civ",0]'],
		["",'["WAINO_G_S_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_BK","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_G","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_GR","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_KH","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_MTP","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_Tn","Uniform","300","","Civ",0]'],
		["",'["WAINO_S_BC_W","Uniform","300","","Civ",0]'],
        ["",'["TRYK_shirts_DENIM_ylb_Sleeve","Uniform","200","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_od_Sleeve","Uniform","200","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BK_Sleeve","Uniform","200","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_BL_Sleeve","Uniform","200","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_R_Sleeve","Uniform","200","","Civ",0]'],
		["",'["TRYK_shirts_DENIM_WH_Sleeve","Uniform","200","","Civ",0]'],
		["",'["EF_SH_BK","Vest","500","","Civ",0]'],
		["",'["EF_SH_BW","Vest","500","","Civ",0]'],
		["",'["B_Carryall_khk","Backpack","200","","Civ",0]'],
		["",'["B_Carryall_cbr","Backpack","200","","Civ",0]'],
		["",'["B_Carryall_oli","Backpack","200","","Civ",0]'],
		["",'["B_FieldPack_blk","Backpack","200","","Civ",0]'],
		["",'["B_TacticalPack_blk","Backpack","200","","Civ",0]'],
		["",'["TAC_BP_KAR_B","Backpack","200","","Civ",0]'],
		["",'["TAC_BP_KAR_L","Backpack","200","","Civ",0]'],
		["",'["TAC_BP_KAR_R","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Coyotebackpack_BLK","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Coyotebackpack","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Coyotebackpack_OD","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Coyotebackpack_WH","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Carryall_blk","Backpack","200","","Civ",0]'],
		["",'["TRYK_B_Kitbag_blk","Backpack","200","","Civ",0]'],
		["",'["TRYK_Kio_Balaclava","Headgear","100","","Civ",0]'],
		["",'["G_Balaclava_TI_G_tna_F","Headgear","100","","Civ",0]'],
		["",'["H_ShemagOpen_khk","Headgear","100","","Civ",0]']
    ];
    Clothing_OfficersClothiers =
    [
        ["Blue Polo Shirt",'["A3L_BluePoloShirt","Uniform","84","","Civ",0]'],
        ["Brown Polo Shirt",'["A3L_BrownPoloShirt","Uniform","82","","Civ",0]'],
        ["Pink Polo Shirt",'["A3L_PinkPoloShirt","Uniform","85","","Civ",0]'],
        ["Purple Polo Shirt",'["A3L_PurplePoloShirt","Uniform","87","","Civ",0]'],
        ["Blue Polo, Grey Pants",'["BlGyBr_uni","Uniform","91","","Civ",0]'],
        ["Checkered Polo",'["checkered_uni","Uniform","92","","Civ",0]'],
        ["Green Polo, Grey Pants",'["GbGyBr_uni","Uniform","96","","Civ",0]'],
        ["Grey Polo, Blue Pants",'["GyBlBr_uni","Uniform","94","","Civ",0]'],
        ["White Polo, Blue Pants",'["WhBlBr_uni","Uniform","91","","Civ",0]'],
        ["White Polo, Grey Pants",'["WhGyBr_uni","Uniform","96","","Civ",0]'],
        ["Blue Polo, Shorts",'["U_C_Poloshirt_blue","Uniform","82","","Civ",0]'],
        ["Tricolor Polo, Shorts",'["U_C_Poloshirt_tricolour","Uniform","86","","Civ",0]'],
        ["Guinness Polo",'["IRA_Soldier_Outfit_7","Uniform","92","","Civ",0]'],
        ["Spectacles",'["G_Spectacles","Glasses","31","","Civ",0]'],
        ["Blue Ladies Glasses",'["G_Lady_Blue","Glasses","46","","Civ",0]'],
        ["Aviators",'["G_Aviator","Glasses","47","","Civ",0]'],
        ["Black Beret",'["H_Beret_blk","Headgear","32","","Civ",0]'],
        ["White Cowboy Hat",'["ALE_H_Cowboy_White","Headgear","37","","Civ",0]'],
        ["Checkered Hat",'["H_Hat_checker","Headgear","41","","Civ",0]'],
        ["Grey Hat",'["H_Hat_grey","Headgear","40","","Civ",0]']
    ];
    Clothing_Outdoors =
    [
        ["Farmer's Attire 1",'["rds_uniform_Worker1","Uniform","37","","Civ",0]'],
        ["Farmer's Attire 2",'["rds_uniform_Worker2","Uniform","39","","Civ",0]'],
        ["Farmer's Attire 3",'["rds_uniform_Worker3","Uniform","34","","Civ",0]'],
        ["Farmer's Attire 4",'["rds_uniform_Worker4","Uniform","38","","Civ",0]'],
        ["Coyote Carryall",'["B_Carryall_cbr","Backpack","492","","Civ",0]'],
        ["Black Fieldpack",'["B_FieldPack_blk","Backpack","404","","Civ",0]'],
        ["Butt Gear Pack",'["TAC_BP_buttB_B","Backpack","276","","Civ",0]'],
        ["Camo Fedora",'["H_Hat_camo","Headgear","38","","Civ",0]'],
        ["Khaki Booniehat",'["H_Booniehat_khk","Headgear","44","","Civ",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","39","","Civ",0]'],
        ["Blue Shades",'["G_Shades_Blue","Glasses","34","","Civ",0]'],
        ["Red Shades",'["G_Shades_Red","Glasses","36","","Civ",0]'],
        ["Green Shades",'["G_Shades_Green","Glasses","32","","Civ",0]']
    ];
    Clothing_BarberShop =
    [
        ["",'["H_Booniehat_oli","Headgear","50","","Civ",0]'],
        ["",'["H_Booniehat_tan","Headgear","50","","Civ",0]'],
        ["",'["H_StrawHat","Headgear","50","","Civ",0]'],
        ["",'["H_StrawHat_dark","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_Bandana_H","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_headsetcap_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_headsetcap_blk_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_headsetcap_od_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_headsetcap_blk","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_headsetcap","Headgear","50","","Civ",0]'],
        ["",'["TRYK_R_CAP_BLK","Headgear","50","","Civ",0]'],
        ["",'["TRYK_R_CAP_TAN","Headgear","50","","Civ",0]'],
        ["",'["TRYK_R_CAP_OD_US","Headgear","50","","Civ",0]'],
        ["",'["TRYK_r_cap_blk_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_r_cap_od_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_r_cap_tan_Glasses","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_GR","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_tan","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_U","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP2R","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_GR2R","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_tan2R","Headgear","50","","Civ",0]'],
        ["",'["TRYK_UA_CAP_U2R","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_woolhat","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_woolhat_br","Headgear","50","","Civ",0]'],
        ["",'["TRYK_H_woolhat_cu","Headgear","50","","Civ",0]'],
        ["",'["EF_HAT_BK","Headgear","50","","Civ",0]'],
        ["",'["EF_HAT_BW","Headgear","50","","Civ",0]'],
        ["",'["EF_HAT_CL","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_DHB","Headgear","50","","Civ",0]'],
        ["",'["EF_Long_wig_B","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_B","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_SB","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_VSB","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SB3","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SB","Headgear","50","","Civ",0]'],
        ["",'["EF_Long_wig_BLE","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_SBLE","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_VSBLE","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SBLE3","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SBLE","Headgear","50","","Civ",0]'],
        ["",'["EF_Long_wig_BL","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_BL","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_SBL","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_VSBL","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SBL3","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SBL","Headgear","50","","Civ",0]'],
        ["",'["EF_Long_wig_SV","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SV","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_SSV","Headgear","50","","Civ",0]'],
        ["",'["EF_wig_VSSV","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SSV3","Headgear","50","","Civ",0]'],
        ["",'["EF_Punk_wig_SSV","Headgear","50","","Civ",0]'],
        ["",'["TRYK_Beard_BK","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BL","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BL","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BW","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_Gr","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BK2","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BL2","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard2","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BW2","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_Gr2","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BK3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BL3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BW3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_Gr3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BK4","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BL4","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard4","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_BW4","Goggles","50","","Civ",0]'],
        ["",'["TRYK_Beard_Gr4","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BK","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BL","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BW","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_Gr","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BK3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BL3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard3","Goggles","50","","Civ",0]'],
        ["",'["TRYK_SBeard_BW3","Goggles","50","","Civ",0]']
    ];
    Clothing_2ndAmendment =
    [
        ["Grim Cut",'["k_cut_1","Vest","716","","Civ",0]'],
        ["Black C Cut",'["k_cut_3","Vest","754","","Civ",0]'],
        ["Beta B Cut",'["k_cut_4","Vest","721","","Civ",0]'],
        ["Hells A Cut",'["k_cut_6","Vest","705","","Civ",0]'],
        ["Loner Cut",'["k_cut_7","Vest","791","","Civ",0]'],
        ["S.O.L. Cut",'["k_cut_8","Vest","759","","Civ",0]'],
        ["Skull Cut",'["k_cut_9","Vest","765","","Civ",0]'],
        ["Horsemen Cut",'["k_cut_11","Vest","716","","Civ",0]'],
        ["Tactical Handgun Holster",'["TAC_HGB_B","Vest","264","","Civ",0]']
    ];
    Clothing_LockNLoad =
    [
        ["Grim Cut",'["k_cut_1","Vest","716","","Civ",0]'],
        ["Apache Cut",'["k_cut_2","Vest","722","","Civ",0]'],
        ["Bandidos Cut",'["k_cut_5","Vest","794","","Civ",0]'],
        ["Hells A Cut",'["k_cut_6","Vest","705","","Civ",0]'],
        ["Loner Cut",'["k_cut_7","Vest","791","","Civ",0]'],
        ["Skull Cut",'["k_cut_9","Vest","765","","Civ",0]'],
        ["Winsmores Cut",'["k_cut_10","Vest","781","","Civ",0]'],
        ["Tactical Handgun Holster",'["TAC_HGB_B","Vest","264","","Civ",0]']
    ];
    Clothing_MasksAreUs =
    [
        ["Psycho Mask",'["A3L_Mask","Headgear","186","","Civ",0]'],
        ["Drug Cartel Skull Mask",'["kio_skl_msk_adc","Headgear","186","","Civ",0]'],
        ["Canada Skull Mask",'["kio_skl_msk_can","Headgear","145","","Civ",0]'],
        ["Fire Skull Mask",'["kio_skl_msk_fire","Headgear","186","","Civ",0]'],
        ["France Skull Mask",'["kio_skl_msk_fran","Headgear","186","","Civ",0]'],
        ["Frost Skull Mask",'["kio_skl_msk_frost","Headgear","186","","Civ",0]'],
        ["Gears of War Skull Mask",'["kio_skl_msk_GOW","Headgear","186","","Civ",0]'],
        ["German Skull Mask",'["kio_skl_msk_german","Headgear","186","","Civ",0]'],
        ["Grey Skull Mask",'["kio_skl_msk_grey","Headgear","186","","Civ",0]'],
        ["Irish Skull Mask",'["kio_skl_msk_irish","Headgear","186","","Civ",0]'],
        ["Joker Mask",'["jokermask","Headgear","186","","Civ",0]'],
        ["Alien Mask",'["Masque_Alien1","Headgear","186","","Civ",0]'],
        ["Anonymous Mask",'["Masque_Anonymous","Headgear","186","","Civ",0]'],
        ["Arch Nemesis Mask",'["Masque_archNemesis","Headgear","186","","Civ",0]'],
        ["Arnold Mask",'["Masque_Arnold","Headgear","186","","Civ",0]'],
        ["Aubrey Mask",'["Masque_Aubrey","Headgear","186","","Civ",0]'],
        ["Bonnie Mask",'["Masque_Bonnie","Headgear","186","","Civ",0]'],
        ["Bush Mask",'["Masque_Bush","Headgear","186","","Civ",0]'],
        ["Chains Mask",'["Masque_Chains","Headgear","186","","Civ",0]'],
        ["Chuck Mask",'["Masque_Chuck","Headgear","186","","Civ",0]'],
        ["Clinton Mask",'["Masque_Clinton","Headgear","186","","Civ",0]'],
        ["Clover Mask",'["Masque_Clover","Headgear","186","","Civ",0]'],
        ["Dallas Mask",'["Masque_Dallas","Headgear","186","","Civ",0]'],
        ["Fish Mask",'["Masque_Fish","Headgear","186","","Civ",0]'],
        ["Force Alpha Mask",'["Masque_forceAlpha","Headgear","186","","Civ",0]'],
        ["Gombo Mask",'["Masque_Gombo","Headgear","186","","Civ",0]'],
        ["Creepy Mask",'["Masque_GdG","Headgear","186","","Civ",0]'],
        ["Hockey Mask",'["Masque_Hockey","Headgear","186","","Civ",0]'],
        ["Incidniary Mask",'["Masque_Incendiaire","Headgear","186","","Civ",0]'],
        ["Lincoln Mask",'["Masque_Lincoln","Headgear","186","","Civ",0]'],
        ["Lion Mask",'["Masque_Lion","Headgear","186","","Civ",0]'],
        ["Macrilleuse Mask",'["Masque_Macrilleuse","Headgear","186","","Civ",0]'],
        ["Mark Mask",'["Masque_Mark","Headgear","186","","Civ",0]'],
        ["Metalhead Mask",'["Masque_Metalhead","Headgear","186","","Civ",0]'],
        ["Momie Mask",'["Masque_Momie","Headgear","186","","Civ",0]'],
        ["Optimist Mask",'["Masque_Optimiste","Headgear","186","","Civ",0]'],
        ["Orc Mask",'["Masque_Orc","Headgear","186","","Civ",0]'],
        ["Religieuse Mask",'["Masque_Religieuse","Headgear","186","","Civ",0]'],
        ["Santa Mask",'["Masque_Santa","Headgear","186","","Civ",0]'],
        ["Smiley Mask",'["Masque_Smiley","Headgear","186","","Civ",0]'],
        ["Wolf Mask",'["Masque_Wolfv2","Headgear","186","","Civ",0]'],
        ["United Kingdom Skull Mask",'["kio_skl_msk_UK","Headgear","186","","Civ",0]'],
        ["United States Skull Mask",'["kio_skl_msk_US","Headgear","186","","Civ",0]']
    ];
    Clothing_Police =
    [
 
        ["",'["prp_SO_probie","Uniform","10","","Cop",1]'],
		["",'["prp_SO_Deputy","Uniform","10","","Cop",2]'],
        ["",'["prp_SO_seniordeputy","Uniform","10","","Cop",2]'],
        ["",'["prp_SO_Corporal","Uniform","10","","Cop",3]'],
        ["",'["prp_SO_sergeant","Uniform","10","","Cop",4]'],
		["",'["prp_SO_staffsergeant","Uniform","10","","Cop",5]'],
		["",'["prp_SO_ki_so_staffsergeanturlih","Uniform","10","","Cop",5]'],
		["",'["prp_SO_sergeantfirstclass","Uniform","10","","Cop",6]'],
		["",'["prp_SO_Lieutenant","Uniform","10","","Cop",7]'],
		["",'["prp_SO_Captain","Uniform","10","","Cop",8]'],
		["",'["prp_SO_mayor","Uniform","10","","Cop",8]'],
		["",'["prp_SO_Assistant_Sheriff","Uniform","10","","Cop",9]'],
		["",'["prp_SO_Deputy_sheriff","Uniform","10","","Cop",9]'],
		["",'["prp_SO_sheriff","Uniform","10","","Cop",10]'],
		["",'["prp_DTU_Probie","Uniform","10","","Cop",3]'],
		["",'["prp_DTU_Officer1","Uniform","10","","Cop",3]'],
		["",'["prp_DTU_Officer2","Uniform","10","","Cop",3]'],
		["",'["prp_DTU_Officer3","Uniform","10","","Cop",3]'],
		["",'["prp_DTU_Lieutenant","Uniform","10","","Cop",3]'],
		["",'["prp_DTU_Captain","Uniform","10","","Cop",3]'],
		["",'["prp_hoodie_dtu1","Uniform","10","","Cop",3]'],
		["",'["prp_hoodie_dtu2","Uniform","10","","Cop",3]'],
		["",'["prp_hoodie_dtu3","Uniform","10","","Cop",3]'],
		["",'["prp_AIAD_probie","Uniform","10","","Cop",4]'],
		["",'["prp_AIAD_Inspector","Uniform","10","","Cop",4]'],
		["",'["prp_AIAD_Deputy","Uniform","10","","Cop",4]'],
		["",'["prp_AIAD_Chief","Uniform","10","","Cop",4]'],
        ["Police Belt",'["D_EF_BLT_M1","Backpack","10","","Cop",0]'],
        ["Police Belt",'["D_EF_BLT_M1B","Backpack","10","","Cop",3]'],
        ["",'["jamie_belt","Vest","10","","Cop",0]'],
        //["Standard Issue Vest",'["TAC_V_tacv1_SRF","Vest","10","","Cop",0]'],
        ["",'["TAC_Sheriff_BA_OD","Vest","10","","Cop",0]'],
        ["",'["TAC_V_tacv1LC_SRF","Vest","10","","Cop",0]'],
        ["",'["TAC_PBDFG2CPSRF_RG_1","Vest","10","","Cop",3]'],
        ["",'["Jamie_Sheriff1","Vest","10","","Cop",0]'],
        ["",'["EF_BLT_M1B","Vest","10","","Cop",2]'],
        ["Campaign Hat",'["Campaign_Hat_Dark","Headgear","20","","Cop",0]'],
        ["Kapelusz Szeryfowski",'["M_sheriffhat","Headgear","20","","Cop",0]'],
        ["M50 Gaskmask",'["Mask_M50","Glasses","20","","Cop",0]'],
        ["Bandanna /w Aviators",'["G_Bandanna_aviator","Glasses","20","","Cop",0]'],
        ["Long Brown Hair",'["rds_long_hair_01","Glasses","20","","Cop",0]'],
        ["Aviators",'["G_Aviator","Glasses","15","","Cop",0]'],
        ["Gas Mask M40",'["Mask_M40","Glasses","15","","Cop",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","15","","Cop",0]'],
        ["Black Square Glasses",'["G_Squares","Glasses","15","","Cop",0]'],
        ["Spectacles",'["G_Spectacles","Glasses","15","","Cop",0]'],
        ["Tactical Glasses",'["G_Tactical_Clear","Glasses","15","","Cop",0]']
    ];
    Clothing_EMS =
    [
        ["",'["probie_F","Uniform","10","","Medic",0]'],
        ["",'["paramedic_F","Uniform","10","","Medic",0]'],
        ["",'["sparamedic_F","Uniform","10","","Medic",0]'],
        ["",'["SLieutenant_F","Uniform","10","","Medic",0]'],
        ["",'["Lieutenant_F","Uniform","10","","Medic",0]'],
        ["",'["Captain_F","Uniform","10","","Medic",0]'],
        ["",'["Captains_F","Uniform","10","","Medic",0]'],
        ["",'["Deputy_F","Uniform","10","","Medic",0]'],
        ["",'["Division_F","Uniform","10","","Medic",0]'],
        ["",'["EF_MKJKT_EMS2","Uniform","10","","Medic",0]'],
        ["",'["EF_M_EMS_U","Uniform","10","","Medic",0]'],
        ["",'["EF_BLT_MEMS","Vest","10","","Medic",0]'],
        ["",'["EF_Mcap_EMSB","Headgear","10","","Medic",0]'],
        ["",'["G_Respirator_white_F","Goggles","10","","Medic",0]']
    ];
    Clothing_ExecutiveOffice =
    [
        ["Blue Suit - Baby Blue Shirt - Gold Tie",'["KAEL_SUITS_BR_F29","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F30","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Orange Tie",'["KAEL_SUITS_BR_F31","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F32","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Pokadot Tie",'["KAEL_SUITS_BR_F33","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F34","Uniform","79","","Gov",0]'],
        ["Blue Suit - White Shirt - Baby Blue Tie",'["KAEL_SUITS_BR_F35","Uniform","79","","Gov",0]'],
        ["White Polo, Grey Pants",'["WhGyBr_uni","Uniform","48","","Gov",0]'],
        ["Undercoat Vest",'["CRT_vest_base","Vest","100","","Gov",0]'],
        ["Black Beret",'["H_Beret_blk","Headgear","29","","Gov",0]'],
        ["Tophat",'["Kio_Capital_Hat","Headgear","29","","Gov",0]'],
        ["Black Cowboy Hat",'["ALE_H_Cowboy_Black","Headgear","29","","Gov",0]'],
        ["Checkered Fedora",'["H_Hat_checker","Headgear","29","","Gov",0]'],
        ["Grey Fedora",'["H_Hat_grey","Headgear","29","","Gov",0]'],
        ["Aviators",'["G_Aviator","Glasses","29","","Gov",0]'],
        ["Blue Ladies Glasses",'["G_Lady_Blue","Glasses","26","","Gov",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","26","","Gov",0]'],
        ["Spectacles",'["G_Spectacles","Glasses","26","","Gov",0]'],
        ["Tinted Square Glasses",'["G_Squares_Tinted","Glasses","26","","Gov",0]']
    ];
    Clothing_DOJ =
    [
        ["Blue Suit - Baby Blue Shirt - Gold Tie",'["KAEL_SUITS_BR_F29","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F30","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Orange Tie",'["KAEL_SUITS_BR_F31","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F32","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Pokadot Tie",'["KAEL_SUITS_BR_F33","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F34","Uniform","79","","DOJ",0]'],
        ["Blue Suit - White Shirt - Baby Blue Tie",'["KAEL_SUITS_BR_F35","Uniform","79","","DOJ",0]'],
        ["Undercoat Vest",'["CRT_vest_base","Vest","100","","DOJ",0]'],
        ["Department of Justice Vest",'["A3L_deptjvest1_Fix","Vest","100","","DOJ",0]'],
        ["Black Beret",'["H_Beret_blk","Headgear","29","","DOJ",0]'],
        ["Black Cowboy Hat",'["ALE_H_Cowboy_Black","Headgear","29","","DOJ",0]'],
        ["Checkered Fedora",'["H_Hat_checker","Headgear","29","","DOJ",0]'],
        ["Grey Fedora",'["H_Hat_grey","Headgear","29","","DOJ",0]'],
        ["Aviators",'["G_Aviator","Glasses","29","","DOJ",0]'],
        ["Blue Ladies Glasses",'["G_Lady_Blue","Glasses","26","","DOJ",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","26","","DOJ",0]'],
        ["Spectacles",'["G_Spectacles","Glasses","26","","DOJ",0]'],
        ["Tinted Square Glasses",'["G_Squares_Tinted","Glasses","26","","DOJ",0]'],
        ["Identification Card - White Male",'["TAC_PMC_ID_W2","Uniform","31","","DOJ",0]'],
        ["Identification Card - Black Male",'["TAC_PMC_ID_B2","Uniform","31","","DOJ",0]'],
        ["Identification Card - Arab Male",'["TAC_PMC_ID_H2","Uniform","16","","DOJ",0]']
    ];
    Clothing_SS =
    [
        ["Blue Suit - Baby Blue Shirt - Gold Tie",'["KAEL_SUITS_BR_F29","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F30","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Orange Tie",'["KAEL_SUITS_BR_F31","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Pink Tie",'["KAEL_SUITS_BR_F32","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Pokadot Tie",'["KAEL_SUITS_BR_F33","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Red Tie",'["KAEL_SUITS_BR_F34","Uniform","79","","SS",0]'],
        ["Blue Suit - White Shirt - Baby Blue Tie",'["KAEL_SUITS_BR_F35","Uniform","79","","SS",0]'],
        ["Uniformed Secret Service",'["DON_JON_SSUniform","Uniform","79","","SS",0]'],
        ["Uniformed Secret Service - Old, no tie",'["A3L_SSNoTie","Uniform","79","","SS",0]'],
        ["Uniformed Secret Service - Old, tie",'["A3L_SSTie","Uniform","79","","SS",0]'],
        ["Secret Service Cap",'["jamie_pcapss","Uniform","34","","SS",0]'],
        ["Undercoat Vest",'["CRT_vest_base","Uniform","106","","SS",0]'],
        ["Secret Service Assault Vest",'["TAC_V_tacv1LC_SS","Uniform","112","","SS",0]'],
        ["Secret Service Small Assault Vest",'["TAC_V_tacv1_SS_BK","Uniform","109","","SS",0]'],
        ["Aviators",'["G_Aviator","Uniform","28","","SS",0]'],
        ["Identification Card - White Male",'["TAC_PMC_ID_W2","Uniform","31","","SS",0]'],
        ["Identification Card - Black Male",'["TAC_PMC_ID_B2","Uniform","31","","SS",0]'],
        ["Identification Card - Arab Male",'["TAC_PMC_ID_H2","Uniform","16","","SS",0]'],
        ["Butt Gear Pack",'["TAC_BP_buttB_B","Uniform","86","","SS",0]'],
        ["Enforcement Belt",'["AM_PoliceBelt","Uniform","81","","SS",0]'],
        ["Hidden Long-Range Radio",'["A3L_ANPRC155_Invisible","Uniform","106","","SS",0]']
    ];
    Clothing_CoastGuard =
    [
        ["Pilot Uniform",'["RF_EMSWING_4","Uniform","10","","CG",0]'],
        ["Wetsuit",'["U_B_Wetsuit","Uniform","10","","CG",0]'],
        ["Wetsuit 2",'["U_I_Wetsuit","Uniform","10","","CG",0]'],
        ["Rebreather",'["V_RebreatherB","Vest","75","","CG",0]'],
        ["Gear Belt",'["TAC_LBT_BL_BK","Vest","75","","CG",0]'],
        ["Light Utility Vest",'["TAC_FS_FO_mL_B","Vest","75","","CG",0]'],
        ["Gear Belt with Harness",'["TAC_LBT_H_B","Vest","75","","CG",0]'],
        ["Butt Pack",'["TAC_BP_Butt_B","Backpack","96","","CG",0]'],
        ["Butt Pack with Belt",'["TAC_BP_buttB_B","Backpack","96","","CG",0]'],
        ["Black Tactical Pack",'["B_TacticalPack_blk","Backpack","96","","CG",0]'],
        ["Black Fieldpack",'["B_FieldPack_blk","Backpack","96","","CG",0]'],
        ["Utility Belt",'["AM_PoliceBelt","Backpack","96","","CG",0]'],
        ["Pilot's Helmet",'["TCG_esuav_helmet","Headgear","24","","CG",0]'],
        ["Red Cap",'["H_Cap_red","Headgear","24","","CG",0]'],
        ["Black Cap",'["H_Cap_blk","Headgear","24","","CG",0]'],
        ["Aviators",'["G_Aviator","Glasses","28","","CG",0]'],
        ["M40 Gas Mask",'["Mask_M40","Glasses","28","","CG",0]'],
        ["Black Shades",'["G_Shades_Black","Glasses","28","","CG",0]'],
        ["Square Glasses",'["G_Squares","Glasses","28","","CG",0]'],
        ["Spectacles",'["G_Spectacles","Glasses","28","","CG",0]'],
        ["Tactical Glasses",'["G_Tactical_Clear","Glasses","28","","CG",0]']
    ];
    Clothing_Boating =
    [
        ["Wetsuit",'["U_B_Wetsuit","Uniform","1720","","Civ",0]'],
        ["Vacation Shirt",'["vacationshirt_uni","Uniform","49","","Civ",0]'],
        ["Rebreather",'["V_RebreatherB","Vest","624","","Civ",0]']
    ];
    Clothing_Air =
    [
        ["Black Suit - White Shirt - Blue Tie",'["KAEL_SUITS_BR_F19","Uniform","421","","Civ",0]'],
        ["Pilot's Clothing",'["eaglkes_wwi_ger_pilot_cloth","Uniform","345","","Civ",0]'],
        ["Pilot Coveralls",'["U_I_pilotCoveralls","Uniform","361","","Civ",0]'],
        ["Blue Pilot Uniform",'["pilot_blue_uniform","Uniform","354","","Civ",0]'],
        ["Pilot's Helment",'["TCG_pdav_helmet","Headgear","94","","Civ",0]'],
        ["Pilot's Hat",'["rds_police_cap","Headgear","68","","Civ",0]'],
        ["Parachute",'["B_Parachute","Backpack","465","","Civ",0]'],
        ["Paraglider",'["sab_paraglider_bp","Backpack","3854","","Civ",0]'],
        ["Blue Paraglider",'["sab_paraglider_blue_bp","Backpack","3854","","Civ",0]'],
        ["Green Paraglider",'["sab_paraglider_green_bp","Backpack","3854","","Civ",0]'],
        ["Rainbow Paraglider",'["sab_paraglider_rainbow_bp","Backpack","3854","","Civ",0]'],
        ["Red Paraglider",'["sab_paraglider_red_bp","Backpack","3854","","Civ",0]'],
        ["Swiss Paraglider",'["sab_paraglider_swiss_bp","Backpack","3854","","Civ",0]']
    ];

    //["displayName",'["classname","Uniform","100","","Civ",0]']
    Clothing_Tow =
    [
        
    ];


    // New
    //["displayName(opcjonalnie)",'["classname","Typ","cena","licencja","side",lvl (int domyslnie 0)]']
    //Typy: "Vehicle"
    Vehicle_tow =
    [
        ["Holownik",'["Jonzie_Tow_Truck","Vehicle","10000","Driver_License","Civ",0]']
    ];
    Vehicle_Cali = 
    [
        ["",'["ivory_gti","Vehicle","2000","Driver_License","Civ",0]'],
        ["",'["ivory_190e","Vehicle","3000","Driver_License","Civ",0]'],
        ["",'["ivory_e36","Vehicle","5000","Driver_License","Civ",0]'],
        ["",'["Fox_CrownVictoriaCiv","Vehicle","5200","Driver_License","Civ",0]'],
        ["",'["Jonzie_Datsun_Z432","Vehicle","10000","Driver_License","Civ",0]'],
        ["",'["Jonzie_XB","Vehicle","15000","Driver_License","Civ",0]'],
        ["",'["ivory_wrx","Vehicle","15000","Driver_License","Civ",0]'],
        ["",'["ivory_isf","Vehicle","18000","Driver_License","Civ",0]'],
        ["",'["ivory_rs4","Vehicle","20000","Driver_License","Civ",0]'],
        ["",'["ivory_supra","Vehicle","25000","Driver_License","Civ",0]'],
        ["",'["AlessioTouareg","Vehicle","30000","Driver_License","Civ",0]'],
        ["",'["ivory_m3","Vehicle","32500","Driver_License","Civ",0]'],
        ["",'["Raptorlu_civ","Vehicle","32500","Driver_License","Civ",0]'],
        ["",'["SRT8_12lu_civ","Vehicle","35000","Driver_License","Civ",0]'],
        ["",'["GT500lu_civ","Vehicle","38000","Driver_License","Civ",0]'],
        ["",'["RS6_Avantlu_civ","Vehicle","40000","Driver_License","Civ",0]'],
        ["",'["Tahoelu_civ","Vehicle","40000","Driver_License","Civ",0]'],
        ["",'["ivory_supra_topsecret","Vehicle","50000","Driver_License","Civ",0]'],
        ["",'["A45lu","Vehicle","70000","Driver_License","Civ",0]'],
        ["",'["AlessioBM4","Vehicle","80000","Driver_License","Civ",0]'],
        ["",'["RS7lu_civ","Vehicle","85000","Driver_License","Civ",0]'],
        ["",'["AlessioMustang","Vehicle","100000","Driver_License","Civ",0]'],
        ["",'["AlessioC63","Vehicle","12000","Driver_License","Civ",0]']
    ];
    Vehicle_AmericanAuto = 
    [

    ];
    Vehicle_AmericaHRollers = 
    [
        ["",'["red_explorer_16_black","Vehicle","33050","Driver_License","Civ",0]'],
        ["",'["red_suburban_15_blue","Vehicle","66785","Driver_License","Civ",0]']
    ];
    Vehicle_USAAutoT = 
    [
        ["",'["red_f350_08_black","Vehicle","31000","Driver_License","Civ",0]'],
        ["",'["red_ram_06_blue","Vehicle","47605","Driver_License","Civ",0]']
    ];
    Vehicle_WorldFineCars =
    [
        ["",'["red_gs350_13_black","Vehicle","47250","Driver_License","Civ",0]'],
        ["",'["Jonzie_Quattroporte","Vehicle","90000","Driver_License","Civ",0]']
    ];

    Vehicle_RedExotic = 
    [   
        ["",'["red_porsche_12_black","Vehicle","479800","Driver_License","Civ",0]'],
        ["",'["red_xkrs_12_blue","Vehicle","138000","Driver_License","Civ",0]']
    ];
    Vehicle_DockShop = 
    [
        ["",'["red_searay_14_white","Vehicle","989000","Driver_License","Civ",0]'],
        ["",'["red_searay_14_black","Vehicle","989000","Driver_License","Civ",0]']
    ];
    Vehicle_Taxi = 
    [
        ["",'["red_cvpi_06_taxi","Vehicle","","Driver_License","Civ",0]'],
        ["",'["red_taurus_10_taxi2","Vehicle","","Driver_License","Civ",0]']
    ];
    Vehicle_Northport = 
    [
        ["",'["red_kawasaki_10_black","Vehicle","6500","Driver_License","Civ",0]'],
        ["",'["red_savana_04_blue","Vehicle","18400","Driver_License","Civ",0]']
    ];
    Vehicle_American =
    [   
        ["",'["ivory_gti","Vehicle","2000","Driver_License","Civ",0]'],
        ["",'["ivory_190e","Vehicle","3000","Driver_License","Civ",0]'],
        ["",'["ivory_e36","Vehicle","5000","Driver_License","Civ",0]'],
        ["",'["Fox_CrownVictoriaCiv","Vehicle","5200","Driver_License","Civ",0]'],
        ["",'["Jonzie_Datsun_Z432","Vehicle","10000","Driver_License","Civ",0]'],
        ["",'["Jonzie_XB","Vehicle","15000","Driver_License","Civ",0]'],
        ["",'["ivory_wrx","Vehicle","15000","Driver_License","Civ",0]'],
        ["",'["ivory_isf","Vehicle","18000","Driver_License","Civ",0]'],
        ["",'["ivory_rs4","Vehicle","20000","Driver_License","Civ",0]'],
        ["",'["ivory_supra","Vehicle","25000","Driver_License","Civ",0]'],
        ["",'["AlessioTouareg","Vehicle","30000","Driver_License","Civ",0]'],
        ["",'["ivory_m3","Vehicle","32500","Driver_License","Civ",0]'],
        ["",'["Raptorlu_civ","Vehicle","32500","Driver_License","Civ",0]'],
        ["",'["SRT8_12lu_civ","Vehicle","35000","Driver_License","Civ",0]'],
        ["",'["GT500lu_civ","Vehicle","38000","Driver_License","Civ",0]'],
        ["",'["RS6_Avantlu_civ","Vehicle","40000","Driver_License","Civ",0]'],
        ["",'["Tahoelu_civ","Vehicle","40000","Driver_License","Civ",0]'],
        ["",'["ivory_supra_topsecret","Vehicle","50000","Driver_License","Civ",0]'],
        ["",'["A45lu","Vehicle","70000","Driver_License","Civ",0]'],
        ["",'["AlessioBM4","Vehicle","80000","Driver_License","Civ",0]'],
        ["",'["RS7lu_civ","Vehicle","85000","Driver_License","Civ",0]'],
        ["",'["AlessioMustang","Vehicle","100000","Driver_License","Civ",0]'],
        ["",'["AlessioC63","Vehicle","12000","Driver_License","Civ",0]']
    
    ];
    //New

    Vehicle_trucks =
    [
        ["",'["red_towtruck_08_black","Vehicle","60000","Driver_License","Civ",0]'],
        ["",'["Jonzie_Western","Vehicle","81000","Trucking_License","Civ",0]'],
        ["",'["C_Van_01_box_F","Vehicle","62000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Superliner","Vehicle","84000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Box_Truck","Vehicle","105000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Flat_Bed","Vehicle","105000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Log_Truck","Vehicle","105000","Trucking_License","Civ",0]'],
        //["",'["dafxf","Vehicle","86000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Tanker_Truck","Vehicle","109000","Trucking_License","Civ",0]']
    ];
    Vehicle_usedcars =
    [
        ["",'["RDS_GAZ24_Civ_01","Vehicle","2100","Driver_License","Civ",0]']
    ];
    Vehicle_usedcars1 =
    [
        ["",'["RDS_Golf4_Civ_01","Vehicle","3300","Driver_License","Civ",0]']
    ];
    Vehicle_Trailers =
    [
        ["",'["Jonzie_Curtain","Vehicle","31000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Curtain_Roadtrain","Vehicle","31000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Flatbed","Vehicle","31000","Trucking_License","Civ",0]'],
        ["",'["Jonzie_Flatbed_Roadtrain","Vehicle","31000","Trucking_License","Civ",0]']
    ];
    Vehicle_LakesidePatrol =
    [
        ["Ford Victoria SO",'["M_CVPI","Vehicle","50","","Cop",0]'],
        ["Ford Victoria SO Sclick",'["M_CVPI_Supervisor","Vehicle","50","","Cop",0]'],
        ["Ford Taurus SO",'["M_FPIS","Vehicle","50","","Cop",0]'],
        ["Ford Taurus SO Slick",'["M_FPIS_slick","Vehicle","50","","Cop",0]'],
        ["Chevrolet Tahoe SO",'["M_Tahoe","Vehicle","50","","Cop",0]'],
        ["Chevrolet Silverado SO",'["M_Silveradobase","Vehicle","50","","Cop",0]'],
        ["Chevrolet Silverado SO Cab",'["M_Silverado_cab","Vehicle","50","","Cop",0]'],
        ["Dodge Charger 2012 SO",'["M_Charger12","Vehicle","50","","Cop",0]'],
        ["Dodge Charger 2012 SO Slick",'["M_Charger12_Slick","Vehicle","50","","Cop",0]'],
        ["Ford Victoria UC",'["M_CVPI_UC_Black","Vehicle","50","","Cop",0]'],
        ["Ford Taurus UC",'["M_FPIS_UC_White","Vehicle","50","","Cop",0]'],
        ["Dodge Charger 2012 UC",'["M_Charger12_UC_Black","Vehicle","50","","Cop",0]'],
        ["Chevrolet Tahoe UC",'["M_Tahoe_UC_Black","Vehicle","50","","Cop",0]'],
        ["BMW M3 E92 UC",'["ivory_m3_unmarked","Vehicle","50","","Cop",0]']
    ];
    Vehicle_MorrisonPatrol =
    [
        ["",'["red_cvpi_06_p_sheriff","Vehicle","50","","Cop",3]'],
        ["",'["red_suburban_15_p_u_sheriff","Vehicle","50","","Cop",6]']
    ];
    Vehicle_LosDPatrol =
    [
        ["",'["red_cvpi_06_p_sheriff","Vehicle","50","","Cop",3]'],
        ["",'["red_suburban_15_p_u_sheriff","Vehicle","50","","Cop",6]']
    ];
    Vehicle_CorrectionsPatrol =
    [
        ["",'["red_cvpi_06_p_sheriff","Vehicle","50","","Cop",3]'],
        ["",'["red_suburban_15_p_u_sheriff","Vehicle","50","","Cop",6]']
    ];
    Vehicle_Corrections =
    [
        ["",'["red_cvpi_06_p_sheriff","Vehicle","50","","Cop",3]'],
        ["",'["red_suburban_15_p_u_sheriff","Vehicle","50","","Cop",6]']
    ];
    Vehicle_SWAT =
    [
        ["",'["red_suburban_15_p_u_black","Vehicle","50","SERT_License","Cop",0]'],
        ["",'["red_savana_04_p_swat","Vehicle","50","SERT_License","Cop",0]']
    ];
    Vehicle_Undercover =
    [
        ["",'["red_suburban_15_p_u_black","Vehicle","50","","Cop",0]'],
        ["",'["red_porsche_12_p_u_darkred","Vehicle","50","","Cop",0]']
    ];
    Vehicle_EMS =
    [
        ["",'["M_Ambulance","Vehicle","50","","Medic",0]'],
        ["",'["Fox_Silverado","Vehicle","50","","Medic",0]'],
        ["",'["Fox_ArrowXTLadder","Vehicle","50","","Medic",0]'],
        ["",'["Fox_Firetruck","Vehicle","50","","Medic",0]'],
        ["",'["Jonzie_Ambulance","Vehicle","50","","Medic",0]']
    ];
    Vehicle_EMS_1 =
    [
        ["",'["red_firetruck_p_base","Vehicle","50","","Medic",0]'],
        ["",'["red_f350_08_e_e_base","Vehicle","50","","Medic",0]']
    ];
    Vehicle_policeAir =
    [
        ["",'["ivory_b206_police","Vehicle","100","","Cop",0]'],
 
        ["",'["PD_black_FLIR_mh9","Vehicle","100","","Cop",0]'],
 
        ["",'["MELB_H6M","Vehicle","100","","Cop",0]']
    ];
    Vehicle_EMSair =
    [
        ["",'["EMS_Chopper","Vehicle","50","","EMS",0]'],
 
        ["",'["EMS_Chopper2","Vehicle","50","","EMS",0]'],
 
        ["",'["EMS_Orca","Vehicle","50","","EMS",0]'],
 
        ["",'["EMS_Orca2","Vehicle","50","","EMS",0]']
    ];
    Vehicle_Civfixedwing =
    [
        ["",'["sab_aeroc","Vehicle","140000","FixedWing_License","Civ",0]'],
        ["",'["sab_stampe5","Vehicle","140000","FixedWing_License","Civ",0]']
    ];
    Vehicle_Civheli =
    [
        ["",'["C_heli_light_01_civil_F","Vehicle","270000","Helicopter_License","Civ",0]']
    ];

    //Typy: "Weapon" "Magazine"
    Weapon_TotallyLegal = 
    [
        ["",'["hlc_rifle_ak74_dirty","Weapon","60000","","Civ",0]'],
        ["",'["hlc_30Rnd_545x39_S_AK","Magazine","10000","","Civ",0]'],

        ["",'["hlc_rifle_ak47","Weapon","80000","","Civ",0]'],
        ["",'["hlc_30rnd_762x39_s_ak","Magazine","12000","","Civ",0]'],

        ["",'["hlc_rifle_M21","Weapon","95000","","Civ",0]'],
        ["",'["hlc_20Rnd_762x51_B_M14","Magazine","10000","","Civ",0]'],

        ["",'["RH_tec9","Weapon","6000","","Civ",0]'],
        ["",'["RH_32Rnd_9x19_tec","Magazine","1200","","Civ",0]'],

        ["",'["RR_RDX","Item","6000","","Civ",0]']
    ];

    Weapon_2ndAmendment =
    [
        ["",'["RH_g19","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_17Rnd_9x19_g17","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_gsh18","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_18Rnd_9x19_gsh","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_m1911","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_7Rnd_45cal_m1911","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_sw659","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_14Rnd_9x19_sw","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_usp","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_12Rnd_45cal_usp","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["sab_1911_handgun","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["9Rnd_45ACP_Mag","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_fnp45","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_15Rnd_45cal_fnp","Magazine","1000","Firearm_License","Civ",0]'],

        ["",'["W_handcuffs","Item","700","Firearm_License","Civ",0]'],
        ["",'["W_cuffkeys","Item","50","Firearm_License","Civ",0]']
    ];
    Weapon_LockNLoad =
    [
        ["",'["RH_g19","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_17Rnd_9x19_g17","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_gsh18","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_18Rnd_9x19_gsh","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_m1911","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_7Rnd_45cal_m1911","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_sw659","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_14Rnd_9x19_sw","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_usp","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_12Rnd_45cal_usp","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["sab_1911_handgun","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["9Rnd_45ACP_Mag","Magazine","1000","Firearm_License","Civ",0]'],
 
        ["",'["RH_fnp45","Weapon","1000","Firearm_License","Civ",0]'],
        ["",'["RH_15Rnd_45cal_fnp","Magazine","1000","Firearm_License","Civ",0]'],

        ["",'["W_handcuffs","Item","700","Firearm_License","Civ",0]'],
        ["",'["W_cuffkeys","Item","50","Firearm_License","Civ",0]']
    ];
    Weapon_Patrol =
    [
        ["",'["CSW_M26C","Weapon","25","Firearm_License","Cop",0]'],
        ["",'["CSW_Taser_Probe_Mag","Magazine","5","Firearm_License","Cop",0]'],
 
        ["",'["RH_g17","Weapon","10","","Cop",1]'],
        ["",'["RH_17Rnd_9x19_g17","Magazine","5","","Cop",1]'],

        ["",'["RH_m9","Weapon","10","","Cop",1]'],
        ["",'["RH_15Rnd_9x19_M9","Magazine","5","","Cop",1]'],

        ["",'["RH_uspm","Weapon","10","","Cop",2]'],
        ["",'["RH_16Rnd_40cal_usp","Magazine","5","","Cop",2]'],

        ["",'["RH_kimber_nw","Weapon","10","","Cop",2]'],
        ["",'["RH_7Rnd_45cal_m1911","Magazine","5","","Cop",2]'],

        ["",'["RH_fnp45","Weapon","10","","Cop",3]'],
        ["",'["RH_15Rnd_45cal_fnp","Magazine","5","","Cop",3]'],
        
        ["",'["RH_fn57","Weapon","10","","Cop",1]'],
        ["",'["RH_20Rnd_57x28_FN","Magazine","5","","Cop",3]'],
		
		["",'["RH_cz75","Weapon","10","","Cop",4]'],
        ["",'["RH_16Rnd_9x19_CZ","Magazine","5","","Cop",4]'],

        ["",'["Mossberg_590","Weapon","10","","Cop",4]'],
        ["",'["8Rnd_Mossberg_590_Pellets","Magazine","5","","Cop",4]'],

        ["",'["RH_g18","Weapon","10","","Cop",5]'],
        ["",'["RH_19Rnd_9x19_g18","Magazine","5","","Cop",5]'],

        ["",'["hlc_smg_mp5a4","Weapon","10","","Cop",7]'],
        ["",'["hlc_30Rnd_9x19_B_MP5","Magazine","5","","Cop",7]'],

        ["",'["hlc_rifle_Colt727","Weapon","10","","Cop",8]'],
        ["",'["hlc_30rnd_556x45_EPR","Magazine","5","","Cop",8]'],
		
		["",'[""hlc_rifle_mk18mod0"","Weapon","10","","Cop",9]'],
        ["",'["hlc_30rnd_556x45_EPR","Magazine","5","","Cop",9]'],
		
		["",'["RH_bullb","Weapon","10","","Cop",9]'],
        ["",'["RH_6Rnd_454_Mag","Magazine","5","","Cop",9]'],
		
		["",'["hlc_rifle_CQBR","Weapon","10","","Cop",10]'],
        ["",'["hlc_30rnd_556x45_EPR","Magazine","5","","Cop",10]'],
		
        ["",'["optic_Holosight_smg_blk_F","Item","10","","Cop",1]'],
        ["",'["optic_Holosight_blk_F","Item","10","","Cop",4]'],
        ["",'["KA_Eotech553","Item","10","","Cop",4]'],
        ["",'["KA_Rakurs","Item","10","","Cop",4]'],
		["",'["optic_hamr","Item","10","","Cop",10]']
    ];
    //SWAT
    Weapon_SWAT =
    [
        ["",'["hlc_smg_mp5N","Weapon","10","SERT_License","Cop",4]'],
        ["",'["hlc_smg_mp5sd5","Weapon","10","SERT_License","Cop",4]'],
        ["",'["hlc_30Rnd_9x19_B_MP5","Magazine","10","SERT_License","Cop",4]'],
        ["",'["hlc_30Rnd_9x19_SD_MP5","Magazine","10","SERT_License","Cop",4]'],

        ["",'["hlc_rifle_G36C","Weapon","10","SERT_License","Cop",4]'],
        ["",'["hlc_30rnd_556x45_EPR_G36","Magazine","10","SERT_License","Cop",4]'],

        ["",'["hlc_rifle_RU5562","Weapon","10","SERT_License","Cop",5]'],
        ["",'["30Rnd_556x45_Stanag","Magazine","10","SERT_License","Cop",5]'],
        
        ["",'["KA_CS5","Weapon","10","SERT_License","Cop",7]'],
        ["",'["KA_CS5_10rnd_Mk316_SPR_mag","Magazine","10","SERT_License","Cop",7]'],

        ["",'["KA_DSR50","Weapon","10","SERT_License","Cop",9]'],
        ["",'["KA_DSR50_3Rnd_M17_Tracer_Mag","Magazine","10","SERT_License","Cop",9]']
    ];
    Clothing_SWAT =
    [
        ["SERT Uniform",'["TRYK_U_B_BLKBLK_CombatUniform","Uniform","25","SERT_License","Cop",3]'],
        ["SERT Uniform SL",'["TRYK_U_B_BLKBLK_R_CombatUniform","Uniform","25","SERT_License","Cop",4]'],
        ["SERT Standard Vest",'["tcg_sertvest1","Vest","25","SERT_License","Cop",3]'],
        ["SERT Corporal Vest",'["tcg_sertvest2","Vest","25","SERT_License","Cop",4]'],
        ["SERT Sergeant Vest",'["tcg_sertvest3","Vest","25","SERT_License","Cop",5]'],
        ["SERT Tactical Helmet US",'["CPE_SWAT_FAST_1","Headgear","25","SERT_License","Cop",3]'],
        ["SERT Tacktical Helmet",'["CPE_SWAT_FAST_2","Headgear","25","SERT_License","Cop",3]'],
        ["SERT Balaclava",'["TRYK_kia_balaclava_BLACK","Weapon","25","SERT_License","Cop",3]'],
        ["",'["NVGoggles_OPFOR","Weapon","25","SERT_License","Cop",3]'],
        ["SERT Glasses",'["G_RM_SWAT_Glasses","Glasses","25","SERT_License","Cop",3]']
    ];
    //TYPY: "Item"
    Attachments_SWAT =
    [
        ["",'["optic_Holosight_smg_blk_F","Item","10","","Cop",4]'],
        ["",'["optic_Holosight_blk_F","Item","10","","Cop",4]'],
        ["",'["KA_Eotech553","Item","10","","Cop",4]'],
        ["",'["KA_Rakurs","Item","10","","Cop",4]'],
        ["",'["optic_DMS","Item","10","","Cop",4]']  
    ];
    //Typy: "Item"
    Item_Police =
    [
        ["",'["ItemMap","Item","50","","Cop",0]'],
        ["",'["ItemGPS","Item","50","","Cop",0]'],
        ["",'["Binocular","Item","50","","Cop",0]'],
        ["",'["itemCompass","Item","50","","Cop",0]'],
        ["Spikestrip",'["W_Spikestrip","Item","76","","Cop",0]'],
        ["Bottle of Water",'["CG_Water_Item_i","Item","15","","Cop",0]'],
        ["Toolkit",'["ToolKit","Item","64","","Civ",0]'],
        ["Tactical Bacon",'["CG_TacBac_Item_i","Item","15","","Cop",0]'],
        ["Dicks Sausage",'["CG_TacBacCustom01_Item_i","Item","15","","Cop",0]'],
        ["Flashbang",'["SUPER_flash","Item","92","","Cop",0]'],
        ["Band-Aid",'["W_Bandage","Item","15","","Civ",0]'],
        ["Leg Shackles",'["W_legshackles","Item","15","","Cop",0]'],
        ["Handcuffs",'["W_handcuff","Item","15","","Cop",0]'],
        ["Radio",'["tf_anprc152","Item","15","","Cop",0]'],
        ["Cuff Keys",'["W_cuffkeys","Item","5","","Cop",0]']
    ];
    Item_EMS =
    [
        ["Bottle of Water",'["CG_Water_Item_i","Item","15","","Medic",0]'],
        ["Toolkit",'["ToolKit","Item","64","","Medic",0]'],
        ["Fire Extinguisher",'["A3l_Extinguisher","Weapon","64","","Medic",0]'],
        ["Carbon Dioxide Refill",'["30Rnd_test_mag","Magazine","15","","Medic",0]'],
        ["Tactical Bacon",'["CG_TacBac_Item_i","Item","15","","Medic",0]'],
        ["Dicks Sausage",'["CG_TacBacCustom01_Item_i","Item","15","","Medic",0]'],
        ["Band-Aid",'["W_Bandage","Item","15","","Medic",0]'],
        ["Defibrillator",'["W_Defib","Item","15","","Medic",0]'],
        ["Radio",'["tf_anprc152","Item","15","","Medic",0]']
    ];
    Item_BillsCornerStore =
    [
        ["Bottle of Water",'["CG_Water_Item_i","Item","9","","Civ",0]'],
        ["Tactical Bacon",'["CG_TacBac_Item_i","Item","12","","Civ",0]'],
        ["Dicks Sausage",'["CG_TacBacCustom01_Item_i","Item","13","","Civ",0]'],
        ["Toolkit",'["ToolKit","Item","64","","Civ",0]'],
        ["Band-Aid",'["W_Bandage","Item","19","","Civ",0]'],
        ["Coca Cola",'["CG_WaterCustom01_Item_i","Item","10","","Civ",0]'],
        ["Dr. Pepper",'["CG_WaterCustom02_Item_i","Item","11","","Civ",0]'],
        ["Monster Energy Drink",'["CG_WaterCustom04_Item_i","Item","14","","Civ",0]'],
        ["Party Pack",'["PartyPack","Item","17","","Civ",0]'],
        ["BBQ Shapes",'["Shapes","Item","9","","Civ",0]'],
        ["Smith Chips",'["SmithsChips","Item","10","","Civ",0]'],
        ["TimTams",'["Timtams","Item","14","","Civ",0]'],
        ["BBQ Shapes",'["Shapes","Item","11","","Civ",0]'],
        ["WeetBix",'["WeetBix","Item","9","","Civ",0]'],
        ["Telefon",'["tf_anprc152","Item","50","","Civ",0]']
    ];
    Item_TheBar =
    [
        ["XXXX Gold Beer",'["beer4xGold","Item","14","","Civ",0]'],
        ["Carlton Draught Beer",'["CarltonDraught","Item","19","","Civ",0]'],
        ["Corona Beer",'["Corona","Item","19","","Civ",0]'],
        ["Coopers Beer",'["Coopers","Item","22","","Civ",0]'],
        ["Jimbeam Can",'["Jimbeam","Item","20","","Civ",0]'],
        ["VB Can",'["VBCan","Item","23","","Civ",0]'],
        ["Guiness Beer",'["CG_WaterCustom03_Item_i","Item","25","","Civ",0]'] 
    ];
    Item_HarvsHardHardware =
    [
        ["Bottle of Water",'["CG_Water_Item_i","Item","9","","Civ",0]'],
        ["Tactical Bacon",'["CG_TacBac_Item_i","Item","12","","Civ",0]'],
        ["Dicks Sausage",'["CG_TacBacCustom01_Item_i","Item","14","","Civ",0]'],
        ["Toolkit",'["ToolKit","Item","46","","Civ",0]'],
        ["Band-Aid",'["W_Bandage","Item","24","","Civ",0]'],
        ["Defibrillator",'["W_Defib","Item","190","","Civ",0]'],
        ["Chain Saw",'["A3L_ChainSaw","Weapon","270","","Civ",0]'],
        ["Chain Saw Fuel",'["chainsawfuel","Magazine","19","","Civ",0]'],
        ["Jack Hammer",'["A3L_JackHammer","Weapon","280","","Civ",0]'],
        ["Pickaxe",'["CG_PICKAXE","Weapon","150","","Civ",0]'],
        ["Elbow Grease (For Pickaxe)",'["sharp_swing","Magazine","5","","Civ",0]'],
        ["Shovel",'["A3L_Shovel","Weapon","80","","Civ",0]'],
        ["Elbow Grease (For Shovel)",'["30Rnd_test_mag_Tracer","Magazine","5","","Civ",0]'],
        ["RDX Compound",'["W_RDX","Item","400","","Civ",0]'],
        ["Plant Pot",'["RR_Pot","Item","400","","Civ",0]']
    ];
    //Typy: "Furniture"
    Item_IkebaFurnishings =
    [
        ["Crafting Workbench",'["A3L_WorkBench","Furniture","100","Civ",0]'],
     
        ["",'["JDDesk","Furniture","100","Civ",0]'],
        ["",'["JDShelf","Furniture","100","Civ",0]'],
        ["",'["JDLockers","Furniture","100","Civ",0]'],
        ["",'["JDTable","Furniture","100","Civ",0]'],
        ["",'["JDWashingMachine","Furniture","100","Civ",0]'],
       
        ["",'["red_desk_1_0","Furniture","100","Civ",0]'],
        ["",'["red_desk_1_0","Furniture","100","Civ",0]'],
        ["",'["red_desk_1_1","Furniture","100","Civ",0]'],
        ["",'["red_desk_1_2","Furniture","100","Civ",0]'],
        ["",'["red_desk_1_3","Furniture","100","Civ",0]'],
        ["",'["red_whiteboard_1_0","Furniture","100","Civ",0]'],
        ["",'["red_trashcan","Furniture","100","Civ",0]'],
        ["",'["red_filecabinet","Furniture","100","Civ",0]'],
        ["",'["red_interrogationtable","Furniture","100","Civ",0]'],
        ["",'["red_projectscreen","Furniture","100","Civ",0]'],
        ["",'["red_locker","Furniture","100","Civ",0]'],
        ["",'["red_conferencetable","Furniture","100","Civ",0]'],
        ["",'["red_conferencetable2","Furniture","100","Civ",0]'],
        ["",'["red_shelf","Furniture","100","Civ",0]'],
        ["",'["red_shelf2","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_1","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_2","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_3","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_4","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_5","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_6","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_7","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_8","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_9","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_10","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_11","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_12","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_13","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_14","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_15","Furniture","100","Civ",0]'],
        ["",'["red_chair_1_16","Furniture","100","Civ",0]'],

        ["",'["rmair_LoungeTableModernBig","Furniture","100","Civ",0]'],
        ["",'["Land_PCSet_01_screen_F","Furniture","100","Civ",0]'],
        ["",'["Land_Sun_Chair_F","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_SunChairWhite","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_SunChairRed","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_SunChairBlueLight","Furniture","100","Civ",0]'],
        ["",'["Land_ChairPlastic_F","Furniture","100","Civ",0]'],
        ["",'["Land_ChairWood_F","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_chair1","Furniture","100","Civ",0]'],
        ["",'["Land_rmair_CouchModern","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_sofa1","Furniture","100","Civ",0]'],
        ["",'["Land_MG_BlackModernSofa","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_SideTable","Furniture","100","Civ",0]'],
        ["",'["Land_TablePlastic_01_F","Furniture","100","Civ",0]'],
        ["",'["Land_WoodenTable_large_F","Furniture","100","Civ",0]'],
        ["",'["Land_WoodenTable_small_F","Furniture","100","Civ",0]'],
        ["",'["OfficeTable_01_new_F","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_dining_table1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_table1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_table_lack_glass1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_lack1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_lack2","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_bird_table_1","Furniture","100","Civ",0]'],
        ["",'["rmair_BenchModernTable","Furniture","100","Civ",0]'],
        ["",'["rmair_loungetablemodernbig","Furniture","100","Civ",0]'],
        ["",'["rmair_loungetablemodernsmall","Furniture","100","Civ",0]'],
        ["",'["land_bench_F","Furniture","100","Civ",0]'],
        ["",'["Land_MapBoard_F","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_kitchen_cabinet","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_sink","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_stove","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_closet_white","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_desk1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_grill1","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_refrigerator","Furniture","100","Civ",0]'],
        ["",'["Fridge_01_Closed_F","Furniture","100","Civ",0]'],
        ["",'["Land_ShelvesWooden_F","Furniture","100","Civ",0]'],
        ["",'["TOB_LawnLightPlasticOn","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_ChainOfLightsMono","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_ChainOfLightsMonoShort","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_ChainOfLightsColored","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_ChainOfLightsColoredShort","Furniture","100","Civ",0]'],
        ["",'["Land_Fan","Furniture","100","Civ",0]'],
        ["",'["Land_Threelights","Furniture","100","Civ",0]'],
        ["",'["Land_Spotlight","Furniture","100","Civ",0]'],
        ["",'["Land_OverheadSpotlight","Furniture","100","Civ",0]'],
        ["",'["Land_Fluor_Lamp","Furniture","100","Civ",0]'],
        ["",'["Land_Camping_Light_F","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_chainoflanterns","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_Sunlounger","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_SunloungerSeatCover","Furniture","100","Civ",0]'],
        ["",'["PLP_bo_barstool","Furniture","100","Civ",0]'],
        ["",'["Land_Sunshade_02_F","Furniture","100","Civ",0]'],
        ["",'["Land_Sunshade_01_F","Furniture","100","Civ",0]'],
        ["",'["Land_Sunshade_04_F","Furniture","100","Civ",0]'],
        ["",'["Land_TableDesk_F","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_mil_bunkbed_single","Furniture","100","Civ",0]'],
        ["",'["Land_sfp_mil_bunkbed","Furniture","100","Civ",0]'],
        ["",'["TOB_ClothesDryerRotaryColoredB","Furniture","100","Civ",0]'],
        ["",'["Land_FlatTV_01_F","Land_SamsungTV","Furniture","100","Civ",0]'],
        ["",'["bis_pc","Furniture","100","Civ",0]'],
        ["",'["land_PCSET_01_screen_F","Furniture","100","Civ",0]'],
        ["",'["land_trophy_01_bronze_F","Furniture","100","Civ",0]'],
        ["",'["land_trophy_01_silver_F","Furniture","100","Civ",0]'],
        ["",'["land_trophy_01_gold_F","Furniture","100","Civ",0]'],
        ["",'["Land_Microwave_01_F","Furniture","100","Civ",0]'],
        ["",'["Land_WaterCooler_01_new_F","Furniture","100","Civ",0]']
    ];
    Machines_Hardware = 
    [
        ["Smeltery",'["A3L_Smelter","Furniture","1200","","Civ",0]'],
        ["Macerator",'["A3L_Boiler","Furniture","1500","","Civ",0]'],
        ["Alloy Smelter",'["A3L_ManuMachine","Furniture","1700","","Civ",0]'],
        ["Crafting Workbench",'["A3L_Workbench","Furniture","300","","Civ",0]']
    ];
    Food_Grocery = 
    [
        ["Water",'["CG_Water_Item_i","Item","5","","Civ",0]'],
        ["Tactical Bacon",'["CG_TacBac_Item_i","Item","10","","Civ",0]'],
        ["Can of Coke",'["CG_WaterCustom01_Item_i","Item","3","","Civ",0]'],
        ["Dr Pepper",'["CG_WaterCustom02_Item_i","Item","3","","Civ",0]'],
        ["Monster Energy Drink!",'["CG_WaterCustom04_Item_i","Item","5","","Civ",0]'],
        ["Dicks Sausage",'["CG_TacBacCustom01_Item_i","Item","10","","Civ",0]'],
        ["Dog Food",'["CG_TacBacCustom02_Item_i","Item","20","","Civ",0]'],
        ["Chicken Soup",'["CG_TacBacCustom03_Item_i","Item","5","","Civ",0]'],
        ["Pea Soup",'["CG_TacBacCustom05_Item_i","Item","5","","Civ",0]'],
        ["Pumpkin Soup",'["CG_TacBacCustom06_Item_i","Item","5","","Civ",0]'],
        ["Beef Soup",'["CG_TacBacCustom07_Item_i","Item","10","","Civ",0]'],
        ["Lettuce Soup",'["CG_TacBacCustom08_Item_i","Item","5","","Civ",0]'],
        ["Bread",'["Bread","Item","3","","Civ",0]'],
        ["HamCheeseSanga",'["HamCheeseSanga","Item","7","","Civ",0]'],
        ["Lamington",'["Lamington","Item","6","","Civ",0]'],
        ["MaggiiNoodle",'["MaggiiNoodle","Item","2","","Civ",0]'],
        ["MeatPie",'["MeatPie","Item","6","","Civ",0]'],
        ["PartyPack",'["PartyPack","Item","10","","Civ",0]'],
        ["Sausages",'["Sausages","Item","5","","Civ",0]'],
        ["Shapes",'["Shapes","Item","3","","Civ",0]'],
        ["SmithsChips",'["SmithsChips","3","1700","","Civ",0]'],
        ["Steak",'["Steak","Item","7","","Civ",0]'],
        ["Timtams",'["Timtams","Item","3.50","","Civ",0]'],
        ["VegemiteSandwhich",'["VegemiteSandwhich","Item","5","","Civ",0]'],
        ["WeetBix",'["WeetBix","Item","10","","Civ",0]']
    ];
    farmers_market2 = 
    [
        ["Wheat Seeds",'["RR_WheatSeeds","Item","20","","Civ",0]']
    ];
    Drug_Dealer_Shop = 
    [
        ["Weed Seeds",'["RR_weedSeeds","Item","20","","Civ",0]']
    ];
};

