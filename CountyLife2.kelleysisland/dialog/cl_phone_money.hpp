#include "player_sys.sqf"
class cl_phone_money {
    idd = 9993;
    name= "cl_phone_money";
    movingEnable = false;
    enableSimulation = true;
    class controlsBackground {

        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\cl_phone_money.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
        };
    };
    class Controls {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Lugyki)
        ////////////////////////////////////////////////////////

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
        class moneyDrop: cl_phone_base_RscButtonMenu
        {
            idc = 2001;
            x = 0.476302 * safezoneW + safezoneX;
            y = 0.513778 * safezoneH + safezoneY;
            w = 0.0480729 * safezoneW;
            h = 0.0818518 * safezoneH;
            onButtonClick = "[] call life_fnc_giveMoney";
        };
        class NearPlayers: Life_RscCombo
        {
            idc = 2022;
            x = 0.427812 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class moneyStatusInfo: Life_RscStructuredText
        {
            idc = 2015;
            SizeEx = 0.020;
            text = "";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.134062 * safezoneW;
            h = 0.121 * safezoneH;
        };
        class moneyEdit: Life_RscEdit
        {
            idc = 2018;
            text = "1";
            x = 0.427812 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};
