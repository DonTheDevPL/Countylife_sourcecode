#include "player_sys.sqf"
class cl_phone_license {
    idd = 9996;
    name= "cl_phone_license";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {

        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\cl_phone_clear.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
        };
    };
    class Controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Debumi)
        ////////////////////////////////////////////////////////

        class cl_phone_licenseheader: cl_phone_base_RscText
        {
            text = "Licencje";
            idc = -1;
            x = 0.429844 * safezoneW + safezoneX;
            y = 0.258 * safezoneH + safezoneY;
            w = 0.130886 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class cl_phone_mainscreen: cl_phone_base_RscButtonMenu
        {
            idc = 1609;
            onButtonClick = "closeDialog 0;";

            x = 0.487109 * safezoneW + safezoneX;
            y = 0.731 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.044 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
        };
        class cl_phone_return: cl_phone_base_RscButtonMenu
        {
            idc = 1610;
            onButtonClick = "closeDialog 0; call life_fnc_p_OpenMenu;";

            x = 0.438125 * safezoneW + safezoneX;
            y = 0.73562 * safezoneH + safezoneY;
            w = 0.0257812 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
        };
        class Licenses_Menu: cl_phone_base_RscControlsGroup
        {
            idc = -1;
            x = 0.431354 * safezoneW + safezoneX;
            y = 0.28462 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.44 * safezoneH;
            class Controls
            {
                class Life_Licenses: cl_phone_base_RscStructuredText
                {
                    idc = 2014;
                    sizeEx = 0.020;
                    text = "";
                    x = 0;
					y = 0;
					w = 0.27; h = 0.65;
                };    
            };
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};