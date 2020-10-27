class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: STRING (Condition)
    *    FORMAT:
    *        STRING (Conditions) - Must return boolean :
    *            String can contain any amount of conditions, aslong as the entire
    *            string returns a boolean. This allows you to check any levels, licenses etc,
    *            in any combination. For example:
    *                "call life_coplevel && license_civ_someLicense"
    *            This will also let you call any other function.
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    //ADAS TO JEST SKLEP CYWILNY
    class civ_car {
        side = "civ";
        conditions = "";
        vehicles[] = {
            //ADAS DODAJESZ TUTAJ POZYCJE W SKLEPIE
            //{ "className", "warunek(zostaw puste)"},PRZECINEK MUSI BYC chyba ze "item" jest ostatni
            //ADAS PO WPISANIU TUTAJ POJAZDOW PATRZ LINIJKE 423
            //{ "", ""},
            { "ivory_gt500", ""},
			{ "AlessioVIR", ""},
			{ "CarlosM3", ""},
			{ "Fox_CrownVictoriaCiv", ""},
			{ "Charger_1969lu_Race", ""},
			{ "ivory_r34", ""},
			{ "Fox_CapriceCiv", ""},
			{ "ivory_isf", ""},
			{ "Fox_2003Impala", ""},
			{ "ivory_wrx", ""},
            { "ivory_supra", ""},
			{ "ivory_m3", ""},
            { "ivory_evox", ""},
			{ "ivory_rs4", ""},
			{ "CHRlu_civ", ""},
			{ "C_Van_02_transport_F", ""},
			{ "Mk3lu_civ", ""},
			{ "Jonzie_Transit", ""},
			{ "A45lu", ""},
			{ "tahoelu_civ", ""},
			{ "AlessioTouaregM", ""},
			{ "RS3lu_civ_noir", ""},
			//{ "Fox_CrownVictoriaCab", "" },//
			{ "AlessioRS4", ""},
            { "Raptorlu_civ", ""},
			{ "ivory_c", ""},
			{ "Wraithlu_civ", "" },
            { "AlessioIXMRMat", ""},
            { "ivory_eliese", ""},
            { "GT500lu_civ", ""},
			{ "Macanlu_civ", ""},
			{ "AlessioMustang", ""},
            { "M5lu_civ", ""},
            //{ "ivory_lfa", ""},
			{ "AlessioC63", ""},
			{ "CarlosG65", ""},
			{ "CarlosSLK", ""},
			{ "AlessioR8", ""},
			{ "AlessioGTBMat", ""},
            { "Panameralu", "" }, 
            { "GT3lu_civ", ""}
			
        };
    };

    class kart_shop {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Kart_01_Blu_F", "" },
            { "C_Kart_01_Fuel_F", "" },
            { "C_Kart_01_Red_F", "" },
            { "C_Kart_01_Vrana_F", "" }
        };
    };

    class civ_truck {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Van_01_box_F", "" },
			{ "C_Van_01_fuel_F", "" },
            { "I_Truck_02_transport_F", "" },
            { "I_Truck_02_covered_F", "" },
			//{ "I_Truck_02_fuel_F", "" },
            { "B_Truck_01_transport_F", "" },
			{ "B_Truck_01_box_F", "" },
			//{ "B_Truck_01_fuel_F", "" },
            { "Jonzie_log_Truck", "" },
            { "Jonzie_Box_Truck", "" },
			{ "chbenne", ""},
            { "O_Truck_03_transport_F", "" },
            { "O_Truck_03_covered_F", "" },
            { "O_Truck_03_device_F", "" }
        };
    };

    class civ_air {
        side = "civ";
        conditions = "license_civ_pilot";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", "" },
            { "B_Heli_Light_01_F", "" },
            { "O_Heli_Light_02_unarmed_F", "" },
            { "C_Plane_Civil_01_F", "" } //Apex DLC
        };
    };

     class civ_ship {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Rubberboat", "" },
            { "C_Boat_Civil_01_F", "" },
            { "B_SDV_01_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
            { "C_Scooter_Transport_01_F", "" } //Apex DLC
        };
    };

    class reb_car {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "B_LSV_01_unarmed_black_F", "" },
            { "B_CTRG_LSV_01_light_F", "" },
            { "I_Truck_02_transport_F", "" },
            { "I_Truck_02_covered_F", "" },
			{ "I_Truck_02_fuel_F", "" },
            { "B_Truck_01_transport_F", "" },
			{ "B_Truck_01_box_F", "" },
			{ "B_Truck_01_fuel_F", "" },
            { "Jonzie_log_Truck", "" },
            { "Jonzie_Box_Truck", "" },
			{ "chbenne", ""},
            { "O_Truck_03_transport_F", "" },
            { "O_Truck_03_covered_F", "" },
            { "O_Truck_03_device_F", "" }
        };
    };

    class mafia_car {
        side = "civ";
        conditions = "license_civ_mafia";
        vehicles[] = {
            { "CarlosM3", "" },
			{ "Jonzie_Transit", "" },
            { "AlessioRS4", "" },
            { "AlessioTouaregM", "" },
            { "Raptorlu_civ", "" },
			{ "ivory_c", ""},
            { "M5lu_civ", "" },
            { "Panameralu", "" },
            { "O_T_LSV_02_unarmed_F", "" }
        };
    };

    class kartel_car {
        side = "civ";
        conditions = "license_civ_kartel";
        vehicles[] = {
			{ "CarlosM3", "" },
			{ "Jonzie_Transit", "" },
            { "AlessioRS4", "" },
            { "AlessioTouaregM", "" },
            { "Raptorlu_civ", "" },
			{ "ivory_c", ""},
			{ "AlessioMustang", ""},
            { "M5lu_civ", "" },
            { "Panameralu", "" }
        };
    };

    class med_shop {
        side = "med";
        conditions = "";
        vehicles[] = {
            { "C_Van_02_medevac_F", "" },
            { "M_tahoe_EMS", "" },
            { "chdefender_vsavhr", "" },
            { "chdefender_ambulance", "" },
            { "chmaster2_ambulance", "" },
            { "chmaster2_vps", "" },
            { "M_Ambulance", "" }
        };
    };

    class med_air {
        side = "med";
        conditions = "";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" },
            { "O_Heli_Light_02_unarmed_F", "" },
            { "I_Heli_light_03_unarmed_F", "" }
        };
    };

    class cop_car {
        side = "cop";
        conditions = "";
        vehicles[] = {
            { "fox_CapriceLED_HWP", "" },
            { "M_CVPI", "" },
            { "M_CVPI_black", "call life_coplevel >= 6" },
            { "fox_Impala16LED", "" },
            { "M_FPIS", "" },
            { "fox_charger16LED", "call life_coplevel >= 4" },
            { "AlessioTouaregCOP", "call life_coplevel >= 4" },
            { "AlessioMustangCOP", "call life_coplevel >= 4" },
            { "M_Charger12", "call life_coplevel >= 4" },
            { "fox_explorer16LED_SH", "call life_coplevel >= 5" },
            { "AlessioVIRCOP", "call life_coplevel >= 5" },
            { "AlessioRS4COP", "call life_coplevel >= 5" },
            { "M_Silverado", "call life_coplevel >= 5" },
            { "M_Silverado_cab", "call life_coplevel >= 5" },
            { "M_Charger12_UC_black", "call life_coplevel >= 6" },
            { "AlessioC63COP", "call life_coplevel >= 6" },
            { "M_tahoe", "call life_coplevel >= 6" },
            { "M_tahoe_UC_black", "call life_coplevel >= 6" },
            { "fox_2015tahoeLED", "call life_coplevel >= 7" }
        };
    };

    class cop_air {
        side = "cop";
        conditions = "call life_coplevel >= 3";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" },
            { "B_Heli_Transport_01_F", "call life_coplevel >= 4" }
        };
    };

    class cop_ship {
        side = "cop";
        conditions = "";
        vehicles[] = {
            { "B_Boat_Transport_01_F", "" },
            { "C_Boat_Civil_01_police_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
            { "B_Boat_Armed_01_minigun_F", "call life_coplevel >= 3" },
            { "B_SDV_01_F", "" }
        };
    };
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: STRING (Condition)
    *    Textures config follows { Texture Name, side, {texture(s)path}, Condition}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class AlessioTouaregCOP {
        vItemSpace = 50;
        conditions = "";
        price = 20000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
        };
    };

    class AlessioMustangCOP {
        vItemSpace = 50;
        conditions = "";
        price = 25000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
        };
    };

    class AlessioVIRCOP {
        vItemSpace = 50;
        conditions = "";
        price = 45000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
        };
    };

    class AlessioRS4COP {
        vItemSpace = 50;
        conditions = "";
        price = 50000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
        };
    };

    class AlessioC63COP {
        vItemSpace = 50;
        conditions = "";
        price = 60000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
        };
    };

    // Apex DLC
    class C_Boat_Transport_02_F {
        vItemSpace = 100;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 22000;
        textures[] = {
            { "Civilian", "civ", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_civilian_CO.paa"
            }, "" },
            { "Black", "cop", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_CO.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Offroad_02_unarmed_F {
        vItemSpace = 65;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 12500;
        textures[] = {
            { "Black", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Plane_Civil_01_F {
        vItemSpace = 75;
        conditions = "license_civ_pilot || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = {
            { "Racing (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Racing", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Red Line (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Red Line", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Tribal (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Tribal", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Blue Wave (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Blue Wave", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Scooter_Transport_01_F {
        vItemSpace = 30;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 2500;
        textures[] = {
            { "Black", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Black_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Black_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Blue_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Blue_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Grey_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Grey_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Lime_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Lime_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Red_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "Yellow", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Yellow_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Yellow_CO.paa"
            }, "" }
        };
    };

    // Apex DLC
    class O_T_LSV_02_unarmed_F {
        vItemSpace = 100;
        conditions = "";
        price = 600000;
        textures[] = {
            { "Arid", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_arid_CO.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_black_CO.paa"
            }, "" },
            { "Green Hex", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_ghex_CO.paa"
            }, "" }
        };
    };

    class I_Truck_02_medical_F {
        vItemSpace = 150;
        conditions = "";
        price = 25000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        conditions = "";
        price = 45000;
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        conditions = "";
        price = 60000;
        textures[] = {};
    };
    class C_Van_02_medevac_F {
        vItemSpace = 10;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
    class chdefender_vsavhr {
        vItemSpace = 10;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
    class chdefender_ambulance {
        vItemSpace = 10;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
    class chmaster2_ambulance {
        vItemSpace = 10;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
    class chmaster2_vps {
        vItemSpace = 10;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
    class Jonzie_Ambulance {
        vItemSpace = 250;
        conditions = "";
        price = 50000;
        textures[] = {};
    };
    //ADAS TUTAJ DEFINIUJEMY KAZDY POJAZD CO JEST W SKLEPIE
    //ADAS STARAJ SIE NIE DUBLOWAC DEFINICJI TUTAJ, PAMIETAJ O ; i ,
    /*
    class CLASSNAME {
        vItemSpace = POJEMNOSC BAGAZNIKA (liczba);
        conditions = "";
        price = CENA (liczba);
        textures[] = {};
    };
    */
	class AlessioVIR {
        vItemSpace = 65;
        conditions = "";
        price = 25000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	
	class ivory_wrx {
        vItemSpace = 70;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
	
	class Macanlu_civ {
        vItemSpace = 100;
        conditions = "";
        price = 240000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	
	class A45lu {
        vItemSpace = 80;
        conditions = "";
        price = 100000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	
	class ivory_eliese {
        vItemSpace = 50;
        conditions = "";
        price = 200000;
        textures[] = {};
    };
	
	class ivory_lfa {
        vItemSpace = 70;
        conditions = "";
        price = 250000;
        textures[] = {};
    };
	
	class ivory_isf {
        vItemSpace = 70;
        conditions = "";
        price = 35000;
        textures[] = {};
    };
	
	class AlessioGTBMat {
        vItemSpace = 50;
        conditions = "";
        price = 530000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	
    class Charger_1969lu_Race {
        vItemSpace = 65;
        conditions = "";
        price = 30000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
	};	
		
	class tahoelu_civ {
        vItemSpace = 110;
        conditions = "";
        price = 120000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	
	class ivory_c {
        vItemSpace = 65;
        conditions = "";
        price = 150000;
        textures[] = {};
    };
	
	class GT3lu_civ {
        vItemSpace = 65;
        conditions = "";
        price = 550000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
	};
	
    class M_Ambulance {
        vItemSpace = 60;
        conditions = "";
        price = 10000;
        textures[] = {};
    };
	
    class M_CVPI {
        vItemSpace = 60;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
	
    class M_CVPI_black {
        vItemSpace = 60;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
	
    class M_FPIS {
        vItemSpace = 60;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
	
    class M_FPIS_UC_Grey {
        vItemSpace = 60;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
	
    class M_Charger12 {
        vItemSpace = 60;
        conditions = "";
        price = 60000;
        textures[] = {};
    };
	
    class M_Charger12_UC_black {
        vItemSpace = 60;
        conditions = "";
        price = 60000;
        textures[] = {};
    };
	
    class M_Silverado_cab {
        vItemSpace = 60;
        conditions = "";
        price = 70000;
        textures[] = {};
    };
	
    class M_Silverado {
        vItemSpace = 60;
        conditions = "";
        price = 70000;
        textures[] = {};
    };
	
    class M_tahoe {
        vItemSpace = 60;
        conditions = "";
        price = 70000;
        textures[] = {};
    };
	
    class M_tahoe_UC_black {
        vItemSpace = 60;
        conditions = "";
        price = 70000;
        textures[] = {};
    };
	
    class M_tahoe_EMS {
        vItemSpace = 60;
        conditions = "";
        price = 10000;
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 45;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 5000;
        textures[] = { };
    };

    class B_Heli_Transport_01_F {
        vItemSpace = 200;
        conditions = "license_cop_cAir || {!(playerSide isEqualTo west)}";
        price = 200000;
        textures[] = {};
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        conditions = "";
        price = 750000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 75000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 3000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 270;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 280000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 600000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 350;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 65;
        conditions = "";
        price = 12500;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        conditions = "license_civ_rebel || {!(playerSide isEqualTo civilian)}";
        price = 750000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 10000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 20000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 560;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 600000;
        textures[] = { };
    };

    class Jonzie_log_Truck {
        vItemSpace = 500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 670000;
        textures[] = { };
    };

    class Jonzie_Box_Truck {
        vItemSpace = 600;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1000000;
        textures[] = { };
    };
	
	class chbenne {
        vItemSpace = 850;
        conditions = "";
        price = 750000;
        textures[] = {};
    };

    class B_Truck_01_transport_F {
        vItemSpace = 550;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 450000;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = { };
    };

    class fox_CapriceLED_HWP {
        vItemSpace = 20;
        conditions = "";
        price = 25000;
        textures[] = { };
    };

    class fox_Impala16LED {
        vItemSpace = 20;
        conditions = "";
        price = 25000;
        textures[] = { };
    };

    class fox_charger16LED {
        vItemSpace = 20;
        conditions = "";
        price = 50000;
        textures[] = { };
    };

    class fox_explorer16LED_SH {
        vItemSpace = 20;
        conditions = "";
        price = 55000;
        textures[] = { };
    };

    class fox_2015tahoeLED {
        vItemSpace = 20;
        conditions = "";
        price = 55000;
        textures[] = { };
    };

    class C_Offroad_01_F {
        vItemSpace = 65;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 12500;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            }, "" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            }, "" },
            { "Police", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            }, "" }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 15000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 40000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            }, "" },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            }, "" },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            }, "" },
            { "Police", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            }, "" }
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 25;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 2500;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            }, "" },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            }, "" },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            }, "" },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 300;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 230000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 250;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 170000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class B_LSV_01_unarmed_black_F {
        vItemSpace = 60;
        conditions = "license_civ_rebel";
        price = 200000;
        textures[] = {};
    };

    class B_CTRG_LSV_01_light_F {
        vItemSpace = 60;
        conditions = "license_civ_rebel";
        price = 200000;
        textures[] = {};
    };

    class O_Truck_03_covered_F {
        vItemSpace = 450;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 330000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 9500;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            }, "" },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            }, "" },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            }, "" },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            }, "" }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 50;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 30000;
        textures[] = {
            { "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            }, "" },
            { "Silver", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            }, "" },
            { "Police", "cop", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
            }, "" }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 100;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 45000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 200;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 100000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        conditions = "";
        price = 30000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        conditions = "";
        price = 275000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        conditions = "";
        price = 50000;
        textures[] = {
            { "Police", "cop", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            }, "" },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            }, "" },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            }, "" },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            }, "" },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            }, "" },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            }, "" },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            }, "" },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            }, "" },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            }, "" },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            }, "" },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            }, "" },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            }, "" },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            }, "" },
            { "EMS", "med", {
                "\GRP\tex\hummingbird_01.paa"
            }, "" }
            
        };
    };

    class C_Heli_Light_01_civil_F : B_Heli_Light_01_F {
        vItemSpace = 75;
        price = 245000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 210;
        conditions = "license_civ_pilot || playerSide isEqualTo independent || playerSide isEqualTo west";
        price = 100000;
        textures[] = {
            { "Black", "cop", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            }, "" },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            }, "" },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            }, "" },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            }, "" },
            { "EMS", "med", {
                "\GRP\tex\orca_Medyk.paa"
            }, "" }
            
        };
    };

    class I_Heli_light_03_unarmed_F {
        vItemSpace = 100;
        conditions = "playerSide isEqualTo independent || playerSide isEqualTo west";
        price = 100000;
        textures[] = {
            { "EMS", "med", {
                "\GRP\tex\amshellcat.paa"
            }, "" }
            
        };
    };

    class B_SDV_01_F {
        vItemSpace = 50;
        conditions = "license_civ_boat || {license_cop_cg} || {(playerSide isEqualTo independent)}";
        price = 150000;
        textures[] = {};
    };

    class C_Van_01_fuel_F {
        vItemSpace = 20;
        vFuelSpace = 19500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 120000;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            }, "" }
        };
    };

    class I_Truck_02_fuel_F {
        vItemSpace = 40;
        vFuelSpace = 42000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 200000;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            }, "" }
        };
    };

    class B_Truck_01_fuel_F {
        vItemSpace = 50;
        vFuelSpace = 50000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 250000;
        textures[] = {};
    };

    //SHELBY GT500
    class ivory_gt500 {
        vItemSpace = 64;
        conditions = "";
        price = 20000;
        textures[] = {};
    };

    //BUGATTI VEYRON
    class ivory_veyron {
        vItemSpace = 20;
        conditions = "";
        price = 500000;
        textures[] = {};
    };

    //MCLARN F1
    class ivory_f1 {
        vItemSpace = 20;
        conditions = "";
        price = 300000;
        textures[] = {};
    };

    //MCLARNEN MP4-12C	
    class ivory_mp4 {
        vItemSpace = 20;
        conditions = "";
        price = 200000;
        textures[] = {};
    };

    //190E
    class ivory_190e {
        vItemSpace = 70;
        conditions = "";
        price = 10000;
        textures[] = {};
    };

    //GOLF GTI
    class ivory_gti {
        vItemSpace = 30;
        conditions = "";
        price = 4000;
        textures[] = {};
    };

    //TOYOTA SUPRA TOP SECRET
    class ivory_supra_topsecret {
        vItemSpace = 30;
        conditions = "";
        price = 100000;
        textures[] = {
            
        };
    };

    //TOYOTA SUPRA
    class ivory_supra {
        vItemSpace = 64;
        conditions = "";
        price = 45000;
        textures[] = {};
    };
    	class RS6_Avantlu_civ {
		vItemSpace = 20;
		conditions = "";
		price = 140000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "cop", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "cop", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "cop", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "cop", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "cop", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
    	class RS7lu_civ {
		vItemSpace = 20;
		conditions = "";
		price = 170000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "cop", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "cop", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "cop", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "cop", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "cop", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
    	class AlessioTouaregM {
		vItemSpace = 90;
		conditions = "";
		price = 120000;
		textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };

	class AlessioIXMRMat {
		vItemSpace = 65;
		conditions = "";
		price = 160000;
		textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	class Gallardolu_civ {
		vItemSpace = 10;
		conditions = "";
		price = 170000;
		textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
	class AMG_Charger_12 {
		vItemSpace = 30;
		conditions = "";
		price = 50000;
		textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "cop", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "cop", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "cop", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "cop", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "cop", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
	};
    class Wraithlu_civ_noir {
        vItemSpace = 30;
        conditions = "";
        price = 30000;
        textures[] = {};
    };
    class ivoey_190e {
        vItemSpace = 30;
        conditions = "";
        price = 5000;
        textures[] = {};
    };
    class ivory_r34 {
        vItemSpace = 70;
        conditions = "";
        price = 35000;
        textures[] = {};
    };
    class ivory_m3 {
        vItemSpace = 70;
        conditions = "";
        price = 50000;
        textures[] = {};
    };

    class ivory_evox {
        vItemSpace = 70;
        conditions = "";
        price = 55000;
        textures[] = {};
    };
    class AlessioMustang {
        vItemSpace = 65;
        conditions = "";
        price = 300000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Fox_2003Impala {
        vItemSpace = 90;
        conditions = "";
        price = 85000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Fox_CrownVictoriaCiv {
        vItemSpace = 90;
        conditions = "";
        price = 95000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Fox_CapriceCiv {
        vItemSpace = 90;
        conditions = "";
        price = 95000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class RS3lu_civ_noir {
        vItemSpace = 80;
        conditions = "";
        price = 125000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class ivory_rs4 {
        vItemSpace = 70;
        conditions = "";
        price = 55000;
        textures[] = {};
    };
    class CHRlu_civ {
        vItemSpace = 70;
        conditions = "";
        price = 70000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class CarlosM3 {
        vItemSpace = 70;
        conditions = "";
        price = 25000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class AlessioRS4 {
        vItemSpace = 90;
        conditions = "";
        price = 135000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Mk3lu_civ {
        vItemSpace = 70;
        conditions = "";
        price = 85000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class GT500lu_civ {
        vItemSpace = 65;
        conditions = "";
        price = 240000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Raptorlu_civ {
        vItemSpace = 120;
        conditions = "";
        price = 140000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class ML63lu_civ {
        vItemSpace = 65;
        conditions = "";
        price = 250000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Jonzie_Transit {
        vItemSpace = 160;
        conditions = "";
        price = 90000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class M5lu_civ {
        vItemSpace = 70;
        conditions = "";
        price = 350000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Wraithlu_civ {
        vItemSpace = 65;
        conditions = "";
        price = 150000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class Panameralu {
        vItemSpace = 65;
        conditions = "";
        price = 550000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    class AlessioR8 {
        vItemSpace = 65;
        conditions = "";
        price = 500000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };

    class AlessioC63 {
        vItemSpace = 64;
        conditions = "";
        price = 380000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };

    class CarlosG65 {
        vItemSpace = 120;
        conditions = "";
        price = 400000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };

    class CarlosSLK {
        vItemSpace = 64;
        conditions = "";
        price = 430000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }

        };
    };
    
    class fflu_civ {
        vItemSpace = 20;
        conditions = "";
        price = 350000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };

    class C_Van_02_transport_F {
        vItemSpace = 125;
        conditions = "";
        price = 120000;
        textures[] = {};
    };

    class AMG_Charge12 {
        vItemSpace = 40;
        conditions = "";
        price = 40000;
        textures[] = {};
    };
    class AMG_Suburban2015 {
        vItemSpace = 100;
        conditions = "";
        price = 90000;
        textures[] = {
            { "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "White", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)",
                "#(argb,8,8,3)color(1,1,1,1)"
            }, "" },
            { "Blue", "civ", {
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)",
                "#(argb,8,8,3)color(0,0.118,0.31,1)"
            }, "" },
            { "Light Blue", "civ", {
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)",
                "#(argb,8,8,3)color(0.078,0.357,0.808,1)"
            }, "" },
            { "Red", "civ", {
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)",
                "#(argb,8,8,3)color(0.557,0.004,0.004,1)"
            }, "" },
            { "Green", "civ", {
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)",
                "#(argb,8,8,3)color(0.047,0.2,0.063,1)"
            }, "" }
        };
    };
};
