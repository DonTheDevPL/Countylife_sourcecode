class DeathScreen {
    idd = 7300;
    name = "Life_Death_Screen";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground { };

    class Controls {
        class MedicsOnline: Life_RscText
        {
            idc = 7304;

            text = "Medics Online: 1"; //--- ToDo: Localize;
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.038 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RespawnBtn: Life_RscButtonMenu
        {
            idc = 7302;
            onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";

            text = "Respawn"; //--- ToDo: Localize;
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.104 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.7};
        };
        class MedicBtn: Life_RscButtonMenu
        {
            idc = 7303;
            onButtonClick = "[] call life_fnc_requestMedic;";

            text = "Request Medic"; //--- ToDo: Localize;
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.137 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.7};
        };
        class respawnTime: Life_RscText
        {
            idc = 7301;

            text = ""; //--- ToDo: Localize;
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.071 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
        };
    };
};