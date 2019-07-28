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
            text = "\CL_Client\phone\Phone_Frame.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
        };

        class RscPicture_1201: cl_phone_base_RscPicture
		{
			idc = 1201;
			text = "\CL_Client\phone\bank\bankApp.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
		};
    };
    class Controls {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Lugyki)
        ////////////////////////////////////////////////////////
        /////////////////////////////////////////
        //              NAV BUTTONS
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
			idc = 1603;
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
        /////////////////////////////////////////
        //              MONEY BUTTONS

        class moneyDrop: cl_phone_base_RscButtonMenu
        {
            idc = 2001;
            x = 0.513906 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.025 * safezoneH;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "[] call life_fnc_giveMoney";
        };
        class NearPlayers: Life_RscCombo
        {
            idc = 2022;
            x = 0.433854 * safezoneW + safezoneX;
			y = 0.569444 * safezoneH + safezoneY;
			w = 0.12125 * safezoneW;
			h = 0.025 * safezoneH;
        };
        class moneyStatusInfo: Life_RscStructuredText
        {
            idc = 2015;
            text = "";
            x = 0.448231 * safezoneW + safezoneX;
			y = 0.40034 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
        };
		
		class cashStatusInfo: Life_RscStructuredText
		{
			idc = 2016;
			text = "";
			x = 0.445312 * safezoneW + safezoneX;			
			y = 0.425926 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		
        class moneyEdit: Life_RscEdit
        {
            idc = 2018;
            text = "1";
            x = 0.434114 * safezoneW + safezoneX;
			y = 0.523963 * safezoneH + safezoneY;
			w = 0.12125 * safezoneW;
			h = 0.025 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};
