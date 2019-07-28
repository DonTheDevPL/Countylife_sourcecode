#include "player_sys.sqf"
class cl_phone_itemsmenu {
    idd = 9995;
    name= "cl_phone_itemsmenu";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
        
        class cl_phone_frame: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\Phone_Frame.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
        };
        
        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\inv\inventory.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
        };
        
    };
    class Controls
    {
        
        class cl_phone_mainscreen: cl_phone_base_RscButtonMenu
        {
            idc = 1609;
            onButtonClick = "closeDialog 0;";
            x = 0.483333 * safezoneW + safezoneX;
			y = 0.636111 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.025 * safezoneH;
			tooltip = "Home"; //--- ToDo: Localize;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
        };
        class cl_phone_return: cl_phone_base_RscButtonMenu
        {
            idc = 1610;
            onButtonClick = "closeDialog 0; call life_fnc_p_OpenMenu;";

            x = 0.444792 * safezoneW + safezoneX;
			y = 0.635186 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.025 * safezoneH;
			tooltip = "Go Back"; //--- ToDo: Localize;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
        };

        class Lock_B: cl_phone_base_RscButtonMenu
		{
			idc = 1611;
			x = 0.526042 * safezoneW + safezoneX;
			y = 0.636111 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.025 * safezoneH;
			tooltip = "Lock"; //--- ToDo: Localize;
			action = "closeDialog 0;";
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
		};
        

        class cl_phone_giveitem: cl_phone_base_RscButtonMenu
        {
            idc = 2400;
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "[] call life_fnc_giveItem;";
        };
        class cl_phone_useitem: cl_phone_base_RscButtonMenu
        {
            idc = 2401;
            x = 0.479375 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "[] call life_fnc_useItem;";
        };
       
        class cl_phone_dropitem: cl_phone_base_RscButtonMenu
        {
            idc = 2402;
            x = 0.520625 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "[] call life_fnc_removeItem;";
        };
        class cl_phone_my_virtitems: Life_RscListBox
        {
            idc = 2005;
            sizeEx = 0.030;
            x = 0.437708 * safezoneW + safezoneX;
            y = 0.338778 * safezoneH + safezoneY;
            w = 0.113437 * safezoneW;
            h = 0.198 * safezoneH;
        };

        class iNearPlayers: Life_RscCombo
        {
            idc = 2023;
            x = 0.439672 * safezoneW + safezoneX;
            y = 0.59988 * safezoneH + safezoneY;
            w = 0.115729 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class cl_phone_itemammount: Life_RscEdit
        {
            idc = item_edit;
            text = "1";
            sizeEx = 0.030;
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.588 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
}; 