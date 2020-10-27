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
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "KA_Px4", "", 10000, -1, "" },
            { "RH_mak", "", 10000, -1, "" }, //Apex DLC
            { "RH_tt33", "", 15000, -1, "" },
            { "RH_cz75", "", 17500, -1, "guns >= 1" },
            { "KA_Glock_17_Single", "", 25000, -1, "guns >= 2" }
        };
        mags[] = {
            { "KA_Px4_17Rnd_9x19_JHP_Mag", "", 125, -1, "" },
            { "RH_8Rnd_9x18_Mak", "", 100, -1, "" },
            { "RH_8Rnd_762_tt33", "", 200, -1, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 1000, -1, "" }
        };
    };

    class kartel {
        name = "kartel";
        side = "civ";
        conditions = "license_civ_kartel";
        items[] = {
			{ "Binocular", "", 100, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "KA_SilverBaller", "", 10000, -1, "" },
			{ "KA_Vityaz", "", 95000, -1, "" },
			{ "RH_ttracker", "", 10000, -1, "" },
			{ "KICKASS_Sawed_Off_Shotgun", "", 90000, -1, "guns >= 1" },
			{ "hlc_rifle_aks74u_MTK", "", 100000, -1, "" },
			{ "RH_vz61", "", 60000, -1, "" },
			{ "RH_mateba", "", 55000, -1, "guns >= 1" },
			{ "AN94_MTK83", "", 100000, -1, "guns >= 2" },
			{ "RH_kimber_nw", "", 20000, -1, "" },
			{ "KA_SG_552", "", 120000, -1, "guns >= 2" },
			{ "hlc_rifle_aek971_mtk", "", 120000, -1, "guns >= 2" },
			{ "hlc_rifle_ak12", "", 150000, -1, "guns >= 3" },
			{ "hlc_rifle_rpk74n_45rnd", "", 160000, -1, "guns >= 2" },
			{ "KA_SilverBaller_L", "", 20000, -1, "guns >= 2" }
        };
        mags[] = {
            { "KA_30Rnd_9x19_JHP_Subsonic_Mag", "", 300, -1, "" },
			{ "KA_8Rnd_45ACP_Mag", "", 300, -1, "" },
			{ "RH_6Rnd_45ACP_Mag", "", 300, -1, "" },
			{ "KICKASS_2Rnd_Sawed_Off_Shotgun_Pellets", "", 300, -1, "" },
			{ "hlc_30Rnd_545x39_B_AK", "", 300, -1, "" },
			{ "RH_20Rnd_32cal_vz61", "", 300, -1, "" },
			{ "RH_6Rnd_44_Mag", "", 300, -1, "" },
			{ "RH_7Rnd_45cal_m1911", "", 300, -1, "" },
			{ "30Rnd_556x45_Stanag_green", "", 300, -1, "" }, 
			{ "hlc_rifle_rpk74n_45rnd", "", 300, -1, "" }
        };
        accs[] = {
            { "KA_SilverBaller_Silencer", "", 5000, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" }
        };
    };

    class mafia {
        name = "mafia";
        side = "civ";
        conditions = "license_civ_mafia";
        items[] = {
			{ "Binocular", "", 100, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 2000, -1, "" },
            { "KA_SilverBaller", "", 10000, -1, "" },
			{ "KA_Vityaz", "", 95000, -1, "" },
			{ "RH_ttracker", "", 10000, -1, "" },
			{ "KICKASS_Sawed_Off_Shotgun", "", 90000, -1, "guns >= 1" },
			{ "hlc_rifle_aks74u_MTK", "", 100000, -1, "" },
			{ "RH_vz61", "", 60000, -1, "" },
			{ "RH_mateba", "", 55000, -1, "guns >= 1" },
			{ "AN94_MTK83", "", 100000, -1, "guns >= 2" },
			{ "RH_kimber_nw", "", 20000, -1, "" },
			{ "KA_SG_552", "", 120000, -1, "guns >= 2" },
			{ "hlc_rifle_aek971_mtk", "", 120000, -1, "guns >= 2" },
			{ "hlc_rifle_ak12", "", 150000, -1, "guns >= 3" },
			{ "hlc_rifle_rpk74n_45rnd", "", 160000, -1, "guns >= 2" },
			{ "hlc_rifle_G36KA1KSK", "", 200000, -1, "guns >= 3" },
			{ "hlc_rifle_G36KV", "", 200000, -1, "guns >= 3" },
			{ "hlc_rifle_g36KTac", "", 200000, -1, "guns >= 3" },
			{ "hlc_rifle_G36CV", "", 210000, -1, "guns >= 3" },
			{ "hlc_rifle_G36CTac", "", 210000, -1, "guns >= 3" },			
			{ "KA_SilverBaller_L", "", 20000, -1, "" }
        };
        mags[] = {
            { "KA_30Rnd_9x19_JHP_Subsonic_Mag", "", 300, -1, "" },
			{ "hlc_30rnd_556x45_Tracers_G36", "", 300, -1, "" },
			{ "KA_8Rnd_45ACP_Mag", "", 300, -1, "" },
			{ "RH_6Rnd_45ACP_Mag", "", 300, -1, "" },
			{ "KICKASS_2Rnd_Sawed_Off_Shotgun_Pellets", "", 300, -1, "" },
			{ "hlc_30Rnd_545x39_B_AK", "", 300, -1, "" },
			{ "RH_20Rnd_32cal_vz61", "", 300, -1, "" },
			{ "RH_6Rnd_44_Mag", "", 300, -1, "" },
			{ "RH_7Rnd_45cal_m1911", "", 300, -1, "" },
			{ "30Rnd_556x45_Stanag_green", "", 300, -1, "" },
			{ "hlc_rifle_rpk74n_45rnd", "", 300, -1, "" }
        };
        accs[] = {
            { "KA_SilverBaller_Silencer", "", 3500, -1, "" },
			{ "optic_aco", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optica_Yorris", "", 3500, -1, "" },
			{ "FHQ_optic_AC1170", "", 3500, -1, "" },
			{ "FHQ_optic_AC12136", "", 3500, -1, "" },
			{ "FHQ_optic_HWS", "", 3500, -1, "" },
			{ "FHQ_optic_MARS", "", 3500, -1, "" },
			{ "FHQ_optic_AIM", "", 5500, -1, "" },
			{ "FHQ_optic_MicroCCO", "", 5500, -1, "" },
			{ "FHQ_optic_MicroCCO_low", "", 5500, -1, "" }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
			{ "Binocular", "", 100, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 2000, -1, "" },
			{ "RH_vp70", "", 20000, -1, "" },
            { "RH_p226", "", 20000, -1, "" },
			{ "RH_cz75", "", 20000, -1, "" },
			{ "hlc_smg_mp5a3", "", 60000, -1, "" },
			{ "KA_RO991", "", 75000, -1, "" },
			{ "hlc_rifle_Colt727", "", 150000, -1, "" },
			{ "hlc_rifle_M14", "", 260000, -1, "" },
			{ "hlc_rifle_ak74", "", 150000, -1, "" },
			{ "KA_SCAR_L_Black_Hand", "", 170000, -1, "" },
            { "hlc_rifle_aks74_MTK", "", 125000, -1, "guns >= 2" },
			{ "hlc_rifle_ak74m_MTK", "", 130000, -1, "guns >= 2" },
			{ "hlc_rifle_G36C", "", 170000, -1, "guns >= 3" },
			{ "hlc_rifle_G36TAC", "", 180000, -1, "guns >= 3" }
			
        };
        mags[] = {
            { "hlc_30Rnd_545x39_B_AK", "", 300, -1, "" },
            { "RH_15Rnd_9x19_SIG", "", 300, -1, "" }, 
            { "hlc_30rnd_556x45_Tracers_G36", "", 300, -1, "" }, 
            { "RH_16Rnd_9x19_CZ", "", 300, 140, "" },
            { "RH_18Rnd_9x19_VP", "", 300, 250, "" },
            { "20Rnd_556x45_UW_mag", "", 300, -1, "" },
            { "30Rnd_580x42_Mag_F", "", 300, -1, "" } 
        };
        accs[] = {
			{ "optic_aco", "", 3500, -1, "" },
			{ "optic_ACO_grn", "", 3500, -1, "" },
			{ "optica_Yorris", "", 3500, -1, "" },
			{ "FHQ_optic_AC1170", "", 3500, -1, "" },
			{ "FHQ_optic_AC12136", "", 3500, -1, "" },
			{ "FHQ_optic_HWS", "", 3500, -1, "" },
			{ "FHQ_optic_MARS", "", 3500, -1, "" },
			{ "FHQ_optic_AIM", "", 5500, -1, "" },
			{ "FHQ_optic_MicroCCO", "", 5500, -1, "" },
			{ "FHQ_optic_MicroCCO_low", "", 5500, -1, "" }
        };
    };

    class czarny_rynek {
        name = "Black Market";
        side = "civ";
        conditions = "";
        items[] = {
			{ "RH_tec9", "", 41000, -1, "" },
            { "RH_deagle", "", 60000, -1, "" },
			{ "RH_mp412", "", 30000, -1, "" },
			{ "RH_uspm", "", 35000, -1, "" },
			{ "RH_usp", "", 25000, -1, "" },
			{ "RH_fn57", "", 30000, -1, "" },
			{ "KA_Galil_ACE22", "", 100000, -1, "" }
        };
        mags[] = {
            { "RH_32Rnd_9x19_tec", "", 300, -1, "" },
            { "RH_7Rnd_50_AE", "", 300, -1, "" }, 
            { "RH_6Rnd_357_Mag", "", 300, -1, "" }, 
            { "RH_16Rnd_40cal_usp", "", 300, -1, "" },
            { "RH_12Rnd_45cal_usp", "", 300, -1, "" },
            { "RH_20Rnd_57x28_FN", "", 300, -1, "" },
            { "KA_Galil_35rnd_M855_FMJ_mag", "", 300, -1, "" } 
        };
        accs[] = {
            { "FHQ_optic_HWS", "", 3500, -1, "" }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        conditions = "";
        items[] = {
            { "RH_g17", "", 25000, -1, "" },
            { "hlc_rifle_aks74u", "", 85000, -1, "" },
            { "Ka_Glock_18_single", "", 35000, -1, "" },
			{ "hlc_rifle_ak74_dirty", "", 90000, -1, "guns >= 1" },
            { "RH_muzi", "", 40000, -1, "guns >= 1" }
        };
        mags[] = {
            { "RH_19Rnd_9x19_g18", "", 125, -1, "" },
			{ "hlc_30Rnd_545x39_B_AK", "", 125, -1, "" },
            { "RH_19Rnd_9x19_g18", "", 100, -1, "" },
            { "hlc_30Rnd_545x39_B_AK", "", 200, -1, "" },
            { "RH_30Rnd_9x19_UZI", "", 250, -1, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 500, -1, "" },
            { "optic_ACO_grn_smg", "", 950, -1, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 100, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 1000, -1, "" },
            { "tf_anprc152", "", 500, -1, "" },
            { "Chemlight_red", "", 300, -1, "" },
            { "Chemlight_yellow", "", 300, -1, "" },
            { "Chemlight_green", "", 300, -1, "" },
            { "Chemlight_blue", "", 300, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 750, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 250, -1, "" },
            { "ItemCompass", "", 250, -1, "" },
            { "ItemWatch", "", 250, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 4000, -1, "" },
            { "Chemlight_red", "", 1500, -1, "" },
            { "Chemlight_yellow", "", 1500, -1, "" },
            { "Chemlight_green", "", 1500, -1, "" },
            { "Chemlight_blue", "", 1500, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Cop Shop";
        side = "cop";
        conditions = "";
        items[] = {
            { "Rangefinder", "", 100, -1, "" },
            { "ItemGPS", "", 100, 100, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 200, -1, "" },
            { "tf_anprc152", "", 100, -1, "" },
			{ "CSW_M26C", "", 100, -1, "" },
            { "RH_m9", "", 3000, -1, "call life_coplevel >= 1" },
			{ "KA_RO991", "", 10000, -1, "call life_coplevel >= 1" },
			{ "KA_P226_BLACK", "", 4500, -1, "call life_coplevel >= 2" },
			{ "Mossberg_590", "", 10000, -1, "call life_coplevel >= 2" },
			{ "KA_Mk23_black", "", 5000, -1, "call life_coplevel >= 3" },
			{ "hlc_smg_mp5k_PDW", "", 15000, -1, "call life_coplevel >= 3" },
			{ "RH_g17", "", 3000, -1, "call life_coplevel >= 4" },
			//{ "Ka_Glock_18_single", "", 3000, -1, "call life_coplevel >= 4" },
			{ "hlc_smg_mp5a4", "", 15000, -1, "call life_coplevel >= 4" },
			{ "RH_fnp45", "", 5000, -1, "call life_coplevel >= 5" },
			//{ "KA_MP7_Rifle_Black_40Rnd", "", 20000, -1, "call life_coplevel >= 5" },
			//{ "RH_g18", "", 10000, -1, "call life_coplevel >= 6" },
		    { "hlc_rifle_colt727", "", 20000, -1, "call life_coplevel >= 6" },
			//{ "RH_python", "", 10000, -1, "call life_coplevel >= 7" },
			{ "hlc_rifle_CQBR", "", 20000, -1, "call life_coplevel >= 8" },
			{ "KA_FN57", "", 5000, -1, "call life_coplevel >= 8" },
			//{ "KA_SCAR_L_Black_AFG", "", 30000, -1, "call life_coplevel >= 8" },
			//{ "RH_mateba", "", 3000, -1, "call life_coplevel >= 9" },
			//{ "RH_bull", "", 3000, -1, "call life_coplevel >= 10" },
			{ "SCAR_18_Inches_Barrel_Silencer", "", 3000, -1, "" },
			{ "RH_gemtech9", "", 3000, -1, "" },
			{ "KA_MP7_Silencer", "", 3000, -1, "" },
			{ "RH_suppr9", "", 3000, -1, "" },
			{ "muzzle_snds_L", "", 3000, -1, "" },
			{ "muzzle_snds_acp", "", 3000, -1, "" },
			{ "muzzle_snds_M", "", 3000, -1, "" },
			{ "optic_aco", "", 3000, -1, "" },
			{ "optic_ACO_grn", "", 3000, -1, "" },
			{ "optic_Yorris", "", 3000, -1, "" },
			{ "FHQ_optic_AC11704", "", 3000, -1, "" },
			{ "FHQ_optic_AC12136", "", 3000, -1, "" },
			{ "FHQ_optic_HWS", "", 3000, -1, "" },
			{ "FHQ_optic_MARS", "", 3000, -1, "" },
			{ "FHQ_optic_AIM", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO_low", "", 3000, -1, "call life_coplevel >= 3" }
        };
        mags[] = {
            { "RH_15Rnd_9x19_M9", "", 125, -1, "" },
			{ "KA_32Rnd_9x19_FMJ_Mag", "", 125, -1, "" },
			{ "KA_P226_15Rnd_9x19_FMJ_Mag", "", 125, -1, "" },
			{ "8Rnd_Mossberg_590_Pellets", "Gumowe Kule", 125, -1, "" },
			{ "KA_12Rnd_45ACP_FMJ_Mag", "", 125, -1, "" },
			{ "hlc_30Rnd_9x19_B_MP5", "", 125, -1, "" },
			{ "RH_19Rnd_9x19_g18", "", 125, -1, "" },
			{ "RH_19Rnd_9x19_g18", "", 125, -1, "" },
			{ "hlc_30Rnd_9x19_B_MP5", "", 125, -1, "" },
			{ "RH_15Rnd_45cal_fnp", "", 125, -1, "" },
			{ "KA_20Rnd_46x30_FMJ", "", 125, -1, "" },
			{ "RH_33Rnd_9x19_g18", "", 125, -1, "" },
            { "30Rnd_556x45_Stanag_green", "", 130, -1, "" },
            { "RH_6Rnd_357_Mag", "", 130, -1, "" },
            { "30Rnd_556x45_Stanag_green", "", 250, -1, "" },
            { "KA_20Rnd_57x28_SS198", "", 200, -1, "" },
			{ "RH_6Rnd_44_Mag", "", 200, -1, "" },
			{ "RH_6Rnd_454_Mag", "", 200, -1, "" },
            { "KA_SCAR_L_30rnd_M855_FMJ_mag", "", 200, -1, "" },
            { "CSW_Taser_Probe_Mag", "", 100, -1, "" }
        };
        accs[] = {
			{ "SCAR_18_Inches_Barrel_Silencer", "", 3000, -1, "" },
			{ "RH_gemtech9", "", 3000, -1, "" },
			{ "KA_MP7_Silencer", "", 3000, -1, "" },
			{ "RH_suppr9", "", 3000, -1, "" },
			{ "muzzle_snds_L", "", 3000, -1, "" },
			{ "muzzle_snds_acp", "", 3000, -1, "" },
			{ "muzzle_snds_M", "", 3000, -1, "" },
			{ "optic_aco", "", 3000, -1, "" },
			{ "optic_ACO_grn", "", 3000, -1, "" },
			{ "optica_Yorris", "", 3000, -1, "" },
			{ "FHQ_optic_AC1170", "", 3000, -1, "" },
			{ "FHQ_optic_AC12136", "", 3000, -1, "" },
			{ "FHQ_optic_HWS", "", 3000, -1, "" },
			{ "FHQ_optic_MARS", "", 3000, -1, "" },
			{ "FHQ_optic_AIM", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO_low", "", 3000, -1, "call life_coplevel >= 3" }
        };
    };
	
    class SWAT {
        name = "Cop Shop";
        side = "cop";
        conditions = "license_cop_SWAT";
        items[] = {
            { "Rangefinder", "", 100, -1, "" },
            { "ItemGPS", "", 100, 50, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 200, -1, "" },
			//{ "", "Taser WIP", 200, -1, "" },
            //{ "KA_MP7_Pistol_Black_40Rnd", "", 100, -1, "" },
			{ "KA_SCAR_L_Black_AFG", "", 30000, -1, "" },
			{ "hlc_smg_mp5a4", "", 20000, -1, "" },
			{ "hlc_rifle_M4", "", 25000, -1, "" },
			{ "hlc_rifle_CQBR", "", 25000, -1, "" },
			{ "SCAR_18_Inches_Barrel_Silencer", "", 3000, -1, "" },
			{ "RH_gemtech9", "", 3000, -1, "" },
			{ "KA_MP7_Silencer", "", 3000, -1, "" },
			{ "RH_suppr9", "", 3000, -1, "" },
			{ "muzzle_snds_L", "", 3000, -1, "" },
			{ "muzzle_snds_acp", "", 3000, -1, "" },
			{ "muzzle_snds_M", "", 3000, -1, "" },
			{ "optic_aco", "", 3000, -1, "" },
			{ "optic_ACO_grn", "", 3000, -1, "" },
			{ "optic_Yorris", "", 3000, -1, "" },
			{ "optic_Yorris", "", 3000, -1, "" },
			{ "optic_Yorris", "", 3000, -1, "" },
			{ "FHQ_optic_AC11704", "", 3000, -1, "" },
			{ "FHQ_optic_AC12136", "", 3000, -1, "" },
			{ "FHQ_optic_HWS", "", 3000, -1, "" },
			{ "FHQ_optic_MARS", "", 3000, -1, "" },
			{ "FHQ_optic_AIM", "", 3000, -1, "" },
			{ "FHQ_optic_MicroCCO", "", 3000, -1, "" },
			{ "FHQ_optic_MicroCCO_low", "", 3000, -1, "" },
			{ "", "Tylko dla strzelca wyborowego", -1, -1, "" },
			{ "KA_DSR50", "", 50000, -1, "" },
			{ "optic_AMS", "", 3000, -1, "" },
			{ "KA_dsr50_silencer", "", 3000, -1, "" }
        };
        mags[] = {
            { "KA_40Rnd_46x30_FMJ", "", 125, -1, "" },
			{ "KA_SCAR_L_30rnd_M855_FMJ_mag", "", 125, -1, "" },
			{ "hlc_30Rnd_9x19_B_MP5", "", 125, -1, "" },
			{ "30Rnd_556x45_Stanag_green", "", 125, -1, "" },
            { "KA_DSR50_3Rnd_M33_FMJ_Mag", "", 200, -1, "" }
        };
        accs[] = {
			{ "SCAR_18_Inches_Barrel_Silencer", "", 3000, -1, "" },
			{ "RH_gemtech9", "", 3000, -1, "" },
			{ "KA_MP7_Silencer", "", 3000, -1, "" },
			{ "RH_suppr9", "", 3000, -1, "" },
			{ "muzzle_snds_L", "", 3000, -1, "" },
			{ "muzzle_snds_acp", "", 3000, -1, "" },
			{ "muzzle_snds_M", "", 3000, -1, "" },
			{ "optic_aco", "", 3000, -1, "" },
			{ "optic_ACO_grn", "", 3000, -1, "" },
			{ "optica_Yorris", "", 3000, -1, "" },
			{ "FHQ_optic_AC1170", "", 3000, -1, "" },
			{ "FHQ_optic_AC12136", "", 3000, -1, "" },
			{ "FHQ_optic_HWS", "", 3000, -1, "" },
			{ "FHQ_optic_MARS", "", 3000, -1, "" },
			{ "FHQ_optic_AIM", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO", "", 3000, -1, "call life_coplevel >= 3" },
			{ "FHQ_optic_MicroCCO_low", "", 3000, -1, "call life_coplevel >= 3" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, -1, "" },
            { "Binocular", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 1200, -1, "" },
            { "tf_anprc152", "", 100, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };
};