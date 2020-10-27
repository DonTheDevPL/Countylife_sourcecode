/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*																															Shoxi ty pajacu
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Sklep z Bronia";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
			{ "microch_weap_tv", "", 10, 0, "" },
			{ "RH_mak", "", 4500, 0, "" },
			{ "hgun_Rook40_F", "", 6000, 0, "" },
			{ "hgun_ACPC2_F", "", 6500, 0, "" },
			{ "RH_cz75", "", 6500, 0, "" },
			{ "RH_kimber_nw", "", 6500, 0, "" },
			{ "RH_m1911", "", 6500, 0, "" },
			{ "RH_p226", "", 6500, 0, "" },
			{ "hgun_Pistol_heavy_01_F", "", 8000, 0, "" },
			{ "RH_sw659", "", 8000, 0, "" },
			{ "RH_tt33", "", 8000, 0, "" },
			{ "RH_gsh18", "", 8000, 0, "" },
			{ "RH_mak", "", 9000, 0, "" },
			{ "RH_M9", "", 9000, 0, "" },
			{ "RH_m9c", "", 9000, 0, "" },
			{ "RH_usp", "", 9000, 0, "" },
			{ "RH_fnp45t", "", 9000, 0, "" },
			{ "RH_g17", "", 9250, 0, "" },
			{ "RH_g19", "", 10000, 0, "" },
			{ "RH_g19t", "", 10000, 0, "" },
			{ "RH_vp70", "", 10000, 0, "" },
			{ "hlc_pistol_P226R_357Combat", "", 11000, 0, "" },
			{ "hlc_pistol_P226R_357Elite", "", 12000, 0, "" },
			{ "CG_BAT", "", 500, 0, "" },
			{ "cg_scythe", "Kosa", 500, 0, "" },
			{ "CG_SHOVEL", "Lopata", 500, 0, "" },
			{ "cg_hatchet", "Siekiera", 500, 0, "" },
			{ "cg_machete", "Maczeta", 500, 0, "" }


        };
        mags[] = {
			{ "11Rnd_45ACP_Mag", "", 200, 0, "" },
			{ "9Rnd_45ACP_Mag", "", 200, 0, "" },
			{ "RH_15Rnd_9x19_M9", "", 200, 0, "" },
			{ "RH_16Rnd_9x19_CZ", "", 200, 0, "" },
			{ "fow_7Rnd_765x17", "", 200, 0, "" },
			{ "RH_17Rnd_9x19_g17", "", 200, 0, "" },
			{ "16Rnd_9x21_Mag", "", 200, 0, "" },
			{ "RH_15Rnd_9x19_SIG", "", 200, 0, "" },
			{ "fow_8Rnd_9x19", "", 200, 0, "" },
			{ "RH_8Rnd_762_tt33", "", 200, 0, "" },
			{ "RH_12Rnd_45cal_usp", "", 200, 0, "" },
			{ "RH_18Rnd_9x19_VP", "", 200, 0, "" },
			{ "RH_8Rnd_9x18_Mak", "", 200, 0, "" },
			{ "RH_7Rnd_45cal_m1911", "", 200, 0, "" },
			{ "RH_7Rnd_45cal_m1911", "", 200, 0, "" },
			{ "RH_18Rnd_9x19_gsh", "", 200, 0, "" },
			{ "RH_8Rnd_9x18_Mak", "", 200, 0, "" },
			{ "RH_15Rnd_45cal_fnp", "", 200, 0, "" },
			{ "fow_8Rnd_9x19", "", 200, 0, "" },
			{ "hlc_15Rnd_9x19_B_P226", "", 200, 0, "" },
			{ "RH_14Rnd_9x19_sw", "", 200, 0, "" },			
			{ "nonlethal_swing", "", 10, 0, "" },
			{ "sharp_swing", "", 10, 0, "" }	
        };
        accs[] = {
		};
    };

    class mafia {
        name = "Sklep Mafijny(uzbrojenie)";
        side = "civ";
        conditions = "license_civ_mafia || license_civ_mafia2 || license_civ_mafia3 || license_civ_mafia4 || license_civ_mafia5";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "ItemCompass", "", 100, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "tf_anprc152", "Telefon", 100, 0, ""},
			{ "RH_g18", "", 40000, 0, "" },
			{ "RH_tec9", "", 60000, 0, "" },
			{ "RH_Deagles", "", 80000, 0, "" },
			{ "hlc_rifle_aks74_MTK", "", 150000, 0, "" },
			{ "hlc_rifle_slr107u_MTK", "", 180000, 0, "" },
			{ "hlc_rifle_M14_Bipod", "", 200000, "" },
			{ "hlc_rifle_Colt727", "", 220000, "" },
			{ "optic_aco", "", 10000, 0, "" },
			{ "acc_flashlight", "", 10000, 0, "" },
			{ "hlc_muzzle_762SUP_AK", "", 12000, 0, "" },
			{ "KA_ANPEQ15_Black_IR", "", 10000, 0, "" },
			{ "FHQ_optic_AIM", "", 15000, 0, "" },
			{ "hlc_muzzle_556NATO_KAC", "", 15000, 0, "" },
			{ "hlc_optic_artel_m14", "", 20000, 0, "" },
			{ "RH_tecsd", "", 5000, 0, "" },
			{ "hlc_rifle_ACR_mid_black", "", 250000, 0, "" }
        };
        mags[] = {
			{ "RH_19Rnd_9x19_g18", "", 500, 0, "" },
			{ "RH_7Rnd_50_AE", "", 500, 0, "" },
			{ "RH_32Rnd_9x19_tec", "", 500, 0, "" },
			{ "hlc_30Rnd_545x39_B_AK", "", 1000, 0, "" },
			{ "hlc_30Rnd_762x39_b_ak", "", 1000, 0, "" },
			{ "hlc_20Rnd_762x51_B_M14", "", 1000, 0, "" },
			{ "hlc_30rnd_556x45_EPR", "", 1000, 0, "" },
			{ "30Rnd_556x45_Stanag_red", "", 1000, 0, "" }

        };
        accs[] = {
			{ "optic_aco", "", 10000, 0, "" },
			{ "acc_flashlight", "", 10000, 0, "" },
			{ "hlc_muzzle_762SUP_AK", "", 12000, 0, "" },
			{ "KA_ANPEQ15_Black_IR", "", 10000, 0, "" },
			{ "FHQ_optic_AIM", "", 15000, 0, "" },
			{ "hlc_muzzle_556NATO_KAC", "", 15000, 0, "" },
			{ "hlc_optic_artel_m14", "", 20000, 0, "" },
			{ "RH_tecsd", "", 5000, 0, "" }
        };
    };

    class gang {
        name = "Sklep z Bronia";
        side = "civ";
        conditions = "license_civ_Bratva";
        items[] = {
			{ "hgun_Pistol_heavy_01_F", "", 3000, 0, "" },
			{ "hgun_ACPC2_F", "", 3000, 0, "" },
			{ "RH_M9", "", 5000, 0, "" },
			{ "RH_M9c", "", 5000, 0, "" },
			{ "fow_w_ppk", "", 2000, 0, "" },
			{ "RH_fnp45", "", 4000, 0, "" },
			{ "RH_fnp45t", "", 4000, 0, "" },
			{ "RH_g17", "", 4500, 0, "" },
			{ "RH_g19", "", 5000, 0, "" },
			{ "RH_g19t", "", 5000, 0, "" },
			{ "hgun_P07_F", "", 3000, 0, "" },
			{ "hgun_Rook40_F", "", 3000, 0, "" },
			{ "fow_w_p35", "", 2500, 0, "" },
			{ "RH_mak", "", 2000, 0, "" },
			{ "fow_w_p08", "", 2000, 0, "" },
			{ "KA_axe", "", 500, 0, "" },
			{ "KA_machete", "", 500, 0, "" },
			{ "KA_knife", "", 500, 0, "" },
			{ "KA_dagger", "", 500, 0, "" }


        };
        mags[] = {
			{ "11Rnd_45ACP_Mag", "", 200, 0, "" },
			{ "9Rnd_45ACP_Mag", "", 200, 0, "" },
			{ "RH_15Rnd_9x19_M9", "", 200, 0, "" },
			{ "fow_7Rnd_765x17", "", 200, 0, "" },
			{ "RH_15Rnd_45cal_fnp", "", 200, 0, "" },
			{ "RH_17Rnd_9x19_g17", "", 200, 0, "" },
			{ "16Rnd_9x21_Mag", "", 200, 0, "" },
			{ "fow_8Rnd_9x19", "", 200, 0, "" },
			{ "RH_8Rnd_9x18_Mak", "", 200, 0, "" },
			{ "fow_8Rnd_9x19", "", 200, 0, "" },
			{ "KA_axe_blade", "", 10, 0, "" },
			{ "KA_machete_blade", "", 10, 0, "" },
			{ "KA_knife_blade", "", 10, 0, "" },
			{ "KA_dagger_blade", "", 10, 0, "" }

        };
        accs[] = {
			
			{ "RH_x2", "", 500, 0, "" }
		
		};
    };

    //Basic Shops
    class genstore {
        name = "Sklep wielobranzowy";
        side = "civ";
        conditions = "";
        items[] = {

			{ "ItemMap", "", 50, 0, "" },
			{ "ItemCompass", "", 50, 0, "" },
			{ "Itemwatch", "", 50, 0, "" },
			{ "ItemGPS", "", 300, 0, "" },
			{ "Binocular", "", 50, 0, "" },
			{ "tf_anprc152", "Telefon", 100, 0, ""},
			{ "camerach_weap_tv", "Kamera", 5000, 0, ""},
			{ "microch_weap_tv", "Mikrofon", 5000, 0, "" },
			{ "Chemlight_red", "", 30, 0, "" },
			{ "Chemlight_yellow", "", 30, 0, "" },
			{ "Chemlight_green", "", 30, 0, "" },
			{ "Chemlight_blue", "", 30, 0, "" }

        };
        mags[] = {

        };
        accs[] = {};
    };

    class f_station_store {
        name = "Sklep wielobranzowy";
        side = "";
        conditions = "";
        items[] = {
			{ "ItemMap", "", 50, 0, "" },
			{ "ItemCompass", "", 50, 0, "" },
			{ "Itemwatch", "", 50, 0, "" },
			{ "ItemGPS", "", 300, 0, "" },
			{ "Binocular", "", 50, 0, "" },
			{ "tf_anprc152", "Telefon", 1000, 0, ""},
			{ "Chemlight_red", "", 30, 0, "" },
			{ "Chemlight_yellow", "", 30, 0, "" },
			{ "Chemlight_green", "", 30, 0, "" },
			{ "Chemlight_blue", "", 30, 0, "" }
        };
        mags[] = {

        };
        accs[] = {};
    };

    //Cop Shops
    class cop_so {
        name = "Sklep Policyjny(Uzbrojenie)";
        side = "cop";
        conditions = "license_cop_so";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "Mattaust_Keys", "", 10, 0, ""},
			{ "ItemCompass", "", 100, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "call life_coplevel >= 4" },
			{ "CSW_M26C", "Paralizator", 100, 0, "call life_coplevel >= 1" },
			{ "tf_anprc152", "Radio", 100, 0, ""},
			{ "RH_M9", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_cz75", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_uspm", "", 500, 0, "call life_coplevel >= 2" },
			{ "RH_fnp45", "", 500, 0, "call life_coplevel >= 2" },
			{ "RH_usp", "", 500, 0, "call life_coplevel >= 2" },
			{ "RH_g19", "", 500, 0, "call life_coplevel >= 2" },
			{ "RH_bull", "", 500, 0, "call life_coplevel >= 4" },
			{ "CSW_M870", "", 2000, 0, "call life_coplevel >= 4" },
			{ "hlc_smg_MP5N", "", 2000, 0, "call life_coplevel >= 4" },
			{ "hlc_smg_mp5k", "", 2000, 0, "call life_coplevel >= 3" },
			{ "hlc_rifle_mk18mod0", "", 2000, 0, "call life_coplevel >= 4" },
			{ "RH_x2", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 4" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 4" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_deagle", "", 1000, 0, "call life_coplevel >= 3" },
			{ "RH_deagleg", "", 1000, 0, "call life_coplevel >= 7" },
			{ "RH_deagles", "", 1000, 0, "call life_coplevel >= 6" },
			{ "RH_deaglem", "", 1000, 0, "call life_coplevel >= 4" },
			{ "hlc_rifle_Colt727", "", 2000, 0, "call life_coplevel >= 4" },
			{ "hlc_smg_mp5sd5", "", 2000, 0, "call life_coplevel >= 4" },
			{ "hlc_pistol_P226R_357Combat", "", 1000, 0, "call life_coplevel >= 1" },
			{ "hlc_pistol_P226R_357Elite", "", 1000, 0, "call life_coplevel >= 2" },
			{ "hlc_pistol_P229R_357Elite", "", 1000, 0, "call life_coplevel >= 3" },
			{ "hlc_pistol_Mk25TR", "", 1000, 0, "call life_coplevel >= 4" },
			{ "hlc_rifle_ACR_mid_black", "", 3000, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_MicroCCO_low", "", 10, 0, "call life_coplevel >= 4" },
			{ "HLC_Optic228_Docter_CADEX", "", 10, 0, "call life_coplevel >= 2" },
			{ "HLC_Optic_Docter_CADEX", "", 10, 0, "call life_coplevel >= 2" },
			{ "HLC_Optic228_Romeo1_RX", "", 10, 0, "call life_coplevel >= 2" },
			{ "HLC_Optic_Romeo1_RX", "", 10, 0, "call life_coplevel >= 2" },
			{ "hlc_muzzle_Octane45", "", 10, 0, "call life_coplevel >= 2" },							
			{ "hlc_muzzle_Evo9", "", 10, 0, "call life_coplevel >= 2" },
			{ "CG_BATON", "Palka Policyjna", 100, 0, "call life_coplevel >= 1" },
			{ "CG_TELBAT", "Palka Teleskopowa", 100, 0, "call life_coplevel >= 1" }				
        };
        mags[] = {
			{ "CSW_Taser_Probe_Mag", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_16Rnd_9x19_CZ", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_15Rnd_9x19_M9", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_16Rnd_40cal_usp", "", 10, 0, "call life_coplevel >= 2" },
			{ "RH_12Rnd_45cal_usp", "", 10, 0, "call life_coplevel >= 2" },
			{ "RH_15Rnd_45cal_fnp", "", 10, 0, "call life_coplevel >= 2" },
			{ "RH_17Rnd_9x19_g17", "", 10, 0, "call life_coplevel >= 2" },
			{ "KA_20Rnd_57x28_SS190", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_30Rnd_9x19_B_MP5", "", 10, 0, "call life_coplevel >= 4" },
			{ "CSW_M870_8Rnd_stun", "Gumowe Kule", 10, 0, "call life_coplevel >= 4" },
			{ "CSW_M870_8Rnd_buck", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_6Rnd_454_Mag", "", 10, 0, "call life_coplevel >= 4" },
			{ "hlc_30rnd_556x45_EPR", "", 10, 0, "call life_coplevel >= 4" },
			{ "hlc_30Rnd_9x19_SD_MP5", "", 10, 0, "call life_coplevel >= 2" },
			{ "RH_7Rnd_50_AE", "", 10, 0, "call life_coplevel >= 3" },
			{ "30Rnd_556x45_Stanag_red", "", 20, 0, "" },
			{ "hlc_15Rnd_9x19_B_P226", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_12Rnd_357SIG_B_P226", "", 10, 0, "call life_coplevel >= 1" },
			{ "nonlethal_swing", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_10Rnd_357SIG_B_P229", "", 10, 0, "call life_coplevel >= 1" }
        };
        accs[] = {
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 4" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 4" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 4" },
			{ "muzzle_snds_L", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_Deflash", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_X300", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_demz", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_docter", "", 10, 0, "call life_coplevel >= 3" },
			{ "optic_Yorris", "", 10, 0, "call life_coplevel >= 3" }
        };
    };

    class cop_swat {
        name = "Sklep Policyjny(Uzbrojenie)";
        side = "cop";
        conditions = "license_cop_swat";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "Mattaust_Keys", "", 10, 0, ""},
			{ "ItemCompass", "", 100, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "call life_coplevel >= 3" },
			{ "tf_anprc152", "Radio", 100, 0, ""},
			{ "CSW_M26C", "Paralizator", 100, 0, "call life_coplevel >= 1" },
			{ "SmokeShell", "", 200, 0, "call life_coplevel >= 1" },
			//{ "SmokeShellYellow", "Gaz Łzawiacy", 100, 0, "call life_coplevel >= 1" },
			{ "HandGrenade_Stone", "Flashbang", 100, 0, "call life_coplevel >= 6" },
			{ "RH_g17", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_g19", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_m9", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_cz75", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_p226", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_sw659", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_gsh18", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_uspm", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_fnp45", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_fnp45t", "", 500, 0, "call life_coplevel >= 1" },
            { "RH_fn57", "", 500, 0, "call life_coplevel >= 1" },
			{ "hlc_rifle_bcmjack", "", 2000, 0, "call life_coplevel >= 4" },
            { "hlc_rifle_bcmblackjack", "", 2000, 0, "call life_coplevel >= 4" },
            { "hlc_rifle_RU5562", "", 2000, 0, "call life_coplevel >= 4" },
            { "CSW_M870", "", 2000, 0, "call life_coplevel >= 2" },
            //{ "hlc_rifle_awcovert_BL", "", 2500, 0, "call life_coplevel >= 3" },
            { "FHQ_optic_AC11704", "", 250, 0, "call life_coplevel >= 1" },
            { "optic_mrco", "", 250, 0, "call life_coplevel >= 1" },
            { "optic_hamr", "", 250, 0, "call life_coplevel >= 1" },
            { "optic_Holosight", "", 250, 0, "call life_coplevel >= 1" },
            { "FHQ_optic_AIM", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_gemtech45", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_docter", "", 2500, 0, "call life_coplevel >= 1" },
            { "RH_osprey", "", 250, 0, "call life_coplevel >= 1" },
            { "optic_MRD", "", 250, 0, "call life_coplevel >= 1" },
            { "acc_flashlight", "", 250, 0, "call life_coplevel >= 1" },
            { "hlc_muzzle_300blk_KAC", "", 250, 0, "call life_coplevel >= 2" },
            { "hlc_muzzle_556NATO_KAC", "", 250, 0, "call life_coplevel >= 2" },
            { "arifle_SDAR_F", "", 2000, 0, "call life_coplevel >= 4" },
			{ "RH_deagle", "", 1000, 0, "call life_coplevel >= 2" },
			{ "RH_deagleg", "", 1000, 0, "call life_coplevel >= 7" },
			{ "RH_deagles", "", 1000, 0, "call life_coplevel >= 6" },
			{ "RH_deaglem", "", 1000, 0, "call life_coplevel >= 3" },
			{ "hlc_smg_mp5k", "", 1000, 0, "call life_coplevel >= 3" },
			{ "hlc_rifle_ACR_mid_black", "", 3000, 0, "call life_coplevel >= 4" }			
        };
        mags[] = {
			{ "CSW_Taser_Probe_Mag", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_17Rnd_9x19_g17", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_15Rnd_9x19_M9", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_16Rnd_9x19_CZ", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_15Rnd_9x19_SIG", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_14Rnd_9x19_sw", "", 250, 0, "call life_coplevel >= 1" },
            { "nonlethal_swing", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_18Rnd_9x19_gsh", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_16Rnd_40cal_usp", "", 250, 0, "call life_coplevel >= 1" },
            { "RH_15Rnd_45cal_fnp", "", 250, 0, "call life_coplevel >= 1" },
            { "hlc_30rnd_556x45_EPR", "", 250, 0, "call life_coplevel >= 1" },
            { "29rnd_300BLK_STANAG", "", 250, 0, "call life_coplevel >= 2" },
            { "hlc_50rnd_300BLK_STANAG_EPR", "", 250, 0, "call life_coplevel >= 3" },
            { "hlc_5rnd_300WM_FMJ_AWMF", "", 250, 0, "call life_coplevel >= 3" },
            { "CSW_M870_8Rnd_buck", "", 250, 0, "call life_coplevel >= 2" },
            { "CSW_M870_8Rnd_slug", "", 250, 0, "call life_coplevel >= 2" },
            { "CSW_M870_8Rnd_stun", "Gumowe Kule", 250, 0, "call life_coplevel >= 2" },
            { "20Rnd_556x45_UW_mag", "", 250, 0, "call life_coplevel >= 1" },
			{ "RH_7Rnd_50_AE", "", 10, 0, "call life_coplevel >= 2" },	
			{ "hlc_30Rnd_9x19_SD_MP5", "", 10, 0, "call life_coplevel >= 3" },
			{ "30Rnd_556x45_Stanag_red", "", 20, 0, "" }							
        };
        accs[] = {
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_muzzle_Agendasix", "", 10, 0, "call life_coplevel >= 1" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 1" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 1" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 2" },
			{ "hlc_muzzle_300blk_KAC", "", 10, 0, "call life_coplevel >= 2" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 2" },
			{ "optic_KHS_blk", "", 10, 0, "call life_coplevel >= 1" },
			{ "muzzle_snds_L", "", 10, 0, "call life_coplevel >= 4" },
			{ "FHQ_optic_MicroCCO_low", "", 10, 0, "call life_coplevel >= 4" }
        };
    };
	

    class cop_dtu {
        name = "Sklep Policyjny(Uzbrojenie)";
        side = "cop";
        conditions = "license_cop_dtu";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "ItemCompass", "", 100, 0, ""},
			{ "Mattaust_Keys", "", 10, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "call life_coplevel >= 3" },
			{ "CSW_M26C", "Paralizator", 100, 0, "call life_coplevel >= 1" },
			{ "tf_anprc152", "Radio", 100, 0, ""},
			{ "RH_uspm", "", 500, 0, "call life_coplevel >= 1" },
			//{ "RH_g18", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_fnp45", "", 500, 0, "call life_coplevel >= 2" },
            { "RH_deagles", "", 1000, 0, "call life_coplevel >= 2" },	
            { "RH_Deagleg", "", 1000, 0, "call life_coplevel >= 3" },	
			{ "hlc_rifle_mk18mod0", "", 2000, 0, "call life_coplevel >= 3" },
			{ "RH_matchsd", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_gemtech9", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_gemtech45", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_X300", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_docter", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 3" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "CG_BAT", "", 10, 0, "call life_coplevel >= 1" },
			{ "cg_scythe", "", 10, 0, "call life_coplevel >= 1" },
			{ "CG_SHOVEL", "", 10, 0, "call life_coplevel >= 1" },
			{ "cg_hatchet", "", 10, 0, "call life_coplevel >= 1" },
			{ "cg_machete", "", 10, 0, "call life_coplevel >= 1" }       
        };
        mags[] = {
			{ "RH_16Rnd_40cal_usp", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_19Rnd_9x19_g18", "", 10, 0, "call life_coplevel >= 1" },
			//{ "RH_33Rnd_9x19_g18", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_15Rnd_45cal_fnp", "", 10, 0, "call life_coplevel >= 2" },
			{ "CSW_20Rnd_57x28_SS190", "", 10, 0, "call life_coplevel >= 2" },
			{ "RH_6Rnd_454_Mag", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_30rnd_556x45_EPR", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_50rnd_556x45_EPR", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_7Rnd_50_AE", "", 10, 0, "call life_coplevel >= 3" },			
			{ "nonlethal_swing", "", 10, 0, "call life_coplevel >= 1" },
			{ "sharp_swing", "", 10, 0, "call life_coplevel >= 1" }			
        };
        accs[] = {
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 3" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 2" },
			{ "muzzle_snds_L", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_Deflash", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_X300", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_demz", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_docter", "", 10, 0, "call life_coplevel >= 3" },
			{ "optic_Yorris", "", 10, 0, "call life_coplevel >= 3" }
        };
    };

     class cop_aia {
        name = "Sklep Policyjny(Uzbrojenie)";
        side = "cop";
        conditions = "license_cop_aia";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "Mattaust_Keys", "", 10, 0, ""},			
			{ "ItemCompass", "", 100, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "call life_coplevel >= 3" },
			{ "CSW_M26C", "Paralizator", 100, 0, "call life_coplevel >= 1" },
			{ "tf_anprc152", "Radio", 1000, 0, ""},
			{ "RH_M9", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_cz75", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_uspm", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_fnp45", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_usp", "", 500, 0, "call life_coplevel >= 1" },
			{ "RH_g19", "", 500, 0, "call life_coplevel >= 1" },
			{ "hlc_smg_MP5N", "", 2000, 0, "call life_coplevel >= 1" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 3" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 3" }	

        };
        mags[] = {
			{ "RH_16Rnd_9x19_CZ", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_15Rnd_9x19_M9", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_16Rnd_40cal_usp", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_12Rnd_45cal_usp", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_15Rnd_45cal_fnp", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_17Rnd_9x19_g17", "", 10, 0, "call life_coplevel >= 1" },
			{ "KA_20Rnd_57x28_SS190", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_30Rnd_9x19_B_MP5", "", 10, 0, "call life_coplevel >= 1" },
			{ "RH_6Rnd_454_Mag", "", 10, 0, "call life_coplevel >= 1" },
			{ "hlc_30rnd_556x45_EPR", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_50rnd_556x45_EPR", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_7Rnd_50_AE", "", 10, 0, "call life_coplevel >= 3" }			

        };
        accs[] = {
			{ "hlc_muzzle_556NATO_KAC", "", 10, 0, "call life_coplevel >= 3" },
			{ "KA_ANPEQ15_Black_IR", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_AC11704", "", 10, 0, "call life_coplevel >= 3" },
			{ "acc_flashlight", "", 10, 0, "call life_coplevel >= 3" },
			{ "FHQ_optic_ACOG", "", 10, 0, "call life_coplevel >= 3" },
			{ "muzzle_snds_L", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_Deflash", "", 10, 0, "call life_coplevel >= 4" },
			{ "RH_X300", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_demz", "", 10, 0, "call life_coplevel >= 3" },
			{ "RH_docter", "", 10, 0, "call life_coplevel >= 3" },
			{ "optic_Yorris", "", 10, 0, "call life_coplevel >= 3" }
        };
    };   
    class cop_snp {
        name = "Sklep Snajpera";
        side = "cop";
        conditions = "license_cop_snp";
        items[] = {
			{ "ItemMap", "", 100, 0, ""},
			{ "Mattaust_Keys", "", 10, 0, ""},			
			{ "ItemCompass", "", 100, 0, ""},
			{ "ItemWatch", "", 100, 0, ""},
			{ "ItemGPS", "", 100, 0, ""},
			{ "Binocular", "", 100, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "call life_coplevel >= 3" },
			{ "CSW_M26C", "Paralizator", 100, 0, "call life_coplevel >= 1" },
			{ "tf_anprc152", "Radio", 1000, 0, ""},
			{ "hlc_rifle_M21_Rail", "", 5000, 0, "call life_coplevel >= 3"},
			{ "hlc_rifle_awmagnum_BL", "", 7500, 0, "call life_coplevel >= 3"}

        };
        mags[] = {
			{ "hlc_20Rnd_762x51_B_M14", "", 10, 0, "call life_coplevel >= 3" },
			{ "hlc_5rnd_300WM_FMJ_AWM", "", 10, 0, "call life_coplevel >= 3" }
        };
        accs[] = {
			{ "optic_DMS", "", 10, 0, "call life_coplevel >= 3" },
			{ "muzzle_snds_B", "", 10, 0, "call life_coplevel >= 3" }
        };
    };   

    //Medic Shops
    class med_basic {
        name = "Sklep Medyczny";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemMap", "", 10, 0, "" },
            { "ItemCompass", "", 10, 0, "" },
            { "ItemWatch", "", 10, 0, "" },
            { "ItemGPS", "", 10, 0, "" },
            { "Binocular", "", 10, 0, "" },
			{ "tf_anprc152", "Radio", 1000, 0, ""},
			{ "TRYK_Headset_NV", "Noktowizja", 100, 0, "" },
			{ "defibinvch", "", 100, 0, "" },
			{ "ventilationinvch", "", 100, 0, "" },
            { "A3L_ChainSaw", "", 10, 0, "" },
            { "pince2", "Kleszcze", 10, 0, "" },
            { "A3L_Extinguisher", "", 10, 0, "" }
        };
        mags[] = {
            { "chainsawfuel", "", 10, 0, "" },
            { "30Rnd_test_mag", "", 10, 0, "" }
        };
        accs[] = {};
    };
};
