#include "common.hpp"

    class custHUD
    {
        idd = 1000000;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration =  99999;
        fadein =  0.1;
        fadeout =  0.1;
        name = "custHUD";
		onLoad = "with uiNameSpace do { custHUD = _this select 0 }";
        class controls 
            {
                class banktitle: Life_RscStructuredText
                {
                    idc = 1001;
                    text = "Bank"; //--- ToDo: Localize;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.819 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.011 * safezoneH;
                    colorBackground[] = {0.051,0.231,0.518,1};
                };
                class cashtitle: Life_RscStructuredText
                {
                    idc = 1002;
                    text = "Gotówka"; //--- ToDo: Localize;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.874 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.011 * safezoneH;
                    colorBackground[] = {0.051,0.231,0.518,1};
                };
                class bankbg: Life_RscText
                {
                    idc = 1004;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.83 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.044 * safezoneH;
                    colorBackground[] = {0,0,0,0.3};
                };
                class cashbg: Life_RscText
                {
                    idc = 1005;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.885 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.044 * safezoneH;
                    colorBackground[] = {0,0,0,0.3};
                };
                class bankcount: Life_RscStructuredText
                {
                    idc = 1103;
                    text = "";
                    x = 0.897031 * safezoneW + safezoneX;
                    y = 0.841 * safezoneH + safezoneY;
                    w = 0.0825 * safezoneW;
                    h = 0.022 * safezoneH;
                    colorBackground[] = {-1,-1,-1,0};
                };
                class cashcount: Life_RscStructuredText
                {
                    idc = 1104;
                    text = "";
                    x = 0.897031 * safezoneW + safezoneX;
                    y = 0.896 * safezoneH + safezoneY;
                    w = 0.0825 * safezoneW;
                    h = 0.022 * safezoneH;
                    colorBackground[] = {-1,-1,-1,0};
                };
                class playersbg: Life_RscText
                {
                    idc = 1003;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.044 * safezoneH;
                    colorBackground[] = {0,0,0,0.3};
                };
                class playercount: Life_RscStructuredText
                {
                    idc = 1105;
                    text = "";
                    x = 0.897031 * safezoneW + safezoneX;
                    y = 0.951 * safezoneH + safezoneY;
                    w = 0.0825 * safezoneW;
                    h = 0.022 * safezoneH;
                    colorBackground[] = {-1,-1,-1,0};
                };
                class Playerstitle: Life_RscStructuredText
                {
                    idc = 1006;
                    text = "Gracze"; //--- ToDo: Localize;
                    x = 0.891875 * safezoneW + safezoneX;
                    y = 0.929 * safezoneH + safezoneY;
                    w = 0.0928125 * safezoneW;
                    h = 0.011 * safezoneH;
                    colorBackground[] = {0.051,0.231,0.518,1};
                    //sizeEx = 0.9 * GUI_GRID_H;
                };
            };
		};