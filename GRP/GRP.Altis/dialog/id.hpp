#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

#include "common_id.hpp"

class player_show_id
{
        idd = 1210;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration =  10;
        fadein =  0.3;
        fadeout =  0.3;
        name = "player_show_id";
    class controls 
    {
            class id_picture: ID_RscPicture
                {
                    idc = 1200;
                    text = "\GRP\data\dowod.paa";
                    x = 0.721719 * safezoneW + safezoneX;
                    y = 0.00500001 * safezoneH + safezoneY;
                    w = 0.242344 * safezoneW;
                    h = 0.396 * safezoneH;
                };
                class name: ID_RscText
                {
                    idc = 1000;
                    text = ""; //--- ToDo: Localize;
                    x = 0.860937 * safezoneW + safezoneX;
                    y = 0.159 * safezoneH + safezoneY;
                    w = 0.139219 * safezoneW;
                    h = 0.022 * safezoneH;
                    sizeEx = 1 * GUI_GRID_H;
                };
                class occupation: ID_RscText
                {
                    idc = 1001;
                    text = ""; //--- ToDo: Localize;
                    x = 0.824844 * safezoneW + safezoneX;
                    y = 0.181 * safezoneH + safezoneY;
                    w = 0.12375 * safezoneW;
                    h = 0.022 * safezoneH;
                    sizeEx = 1 * GUI_GRID_H;
                };
            };
};

class player_show_badge
{
        idd = 1310;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration =  10;
        fadein =  0.3;
        fadeout =  0.3;
        name = "player_show_badge";
    class controls 
    {
            class badge_picture: ID_RscPicture
                {
                    idc = 1300;
                    text = "\GRP\data\so_badge.paa";
                    x = 0.721719 * safezoneW + safezoneX;
                    y = 0.00500001 * safezoneH + safezoneY;
                    w = 0.242344 * safezoneW;
                    h = 0.396 * safezoneH;
                };
                class badge_name: ID_RscText
                {
                    idc = 1301;
                    text = ""; //--- ToDo: Localize;
                    x = 0.860937 * safezoneW + safezoneX;
                    y = 0.159 * safezoneH + safezoneY;
                    w = 0.139219 * safezoneW;
                    h = 0.022 * safezoneH;
                    sizeEx = 1 * GUI_GRID_H;
                };
                /*
                class badge_occupation: ID_RscText
                {
                    idc = 1302;
                    text = ""; //--- ToDo: Localize;
                    x = 0.824844 * safezoneW + safezoneX;
                    y = 0.181 * safezoneH + safezoneY;
                    w = 0.12375 * safezoneW;
                    h = 0.022 * safezoneH;
                    sizeEx = 1 * GUI_GRID_H;
                };
                */
            };
};