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
            text = "\CL_Client\information\main.paa";
            x = 0.108125 * safezoneW + safezoneX;
			y = -0.182 * safezoneH + safezoneY;
			w = 0.75 * safezoneW;
			h = 1.4 * safezoneH;
        };
    };
    class Controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Debumi)
        ////////////////////////////////////////////////////////

        class Life_Licenses: cl_phone_base_RscStructuredText
        {
            idc = 2014;
            text = "";
            x = 0.2525 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
   			sizeEx = 0.03;            
        };
        class Wallet_T: cl_phone_base_RscStructuredText
		{
			idc = 1000;
			text = "500000"; //--- ToDo: Localize;
			x = 0.253021 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			//sizeEx = 0.03;
		};
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};