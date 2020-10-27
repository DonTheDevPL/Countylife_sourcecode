#include "player_sys.sqf"
class cl_phone_itemsmenu {
    idd = 9995;
    name= "cl_phone_itemsmenu";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {

        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\cl_phone_items.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
        };
    };
    class Controls
    {
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
        class cl_phone_giveitem: cl_phone_base_RscButtonMenu
        {
            idc = 2400;
            x = 0.430416 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "[] call life_fnc_giveItem;";
        };
        class cl_phone_useitem: cl_phone_base_RscButtonMenu
        {
            idc = 2401;
            x = 0.486041 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "[] call life_fnc_useItem;";
        };
        class cl_phone_dropitem: cl_phone_base_RscButtonMenu
        {
            idc = 2402;
            x = 0.540729 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "[] call life_fnc_removeItem;";
        };
        class cl_phone_my_virtitems: Life_RscListBox
        {
            idc = 2005;
            sizeEx = 0.030;
            x = 0.429375 * safezoneW + safezoneX;
            y = 0.236 * safezoneH + safezoneY;
            w = 0.14125 * safezoneW;
            h = 0.231 * safezoneH;
        };
        class iNearPlayers: Life_RscCombo
        {
            idc = 2023;
            x = 0.429895 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.142292 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class cl_phone_itemammount: Life_RscEdit
        {
            idc = item_edit;
            text = "1";
            sizeEx = 0.030;
            x = 0.430416 * safezoneW + safezoneX;
            y = 0.505556 * safezoneH + safezoneY;
            w = 0.14125 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
}; 