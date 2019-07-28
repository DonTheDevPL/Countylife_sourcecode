#include "player_sys.sqf"

class playerSettings {
    idd = playersys_DIALOG;
    movingEnable = 1;
    enableSimulation = 1;
    //onLoad = "[] spawn life_fnc_witaj;";

    class controlsBackground {
        /*
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = -1;
            x = 0.1;
            y = 0.2;
            w = 0.8;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0.1;
            y = 0.2 + (11 / 250);
            w = 0.8;
            h = 0.6 - (22 / 250);
        };

        class Title: Life_RscTitle {
            colorBackground[] = {0, 0, 0, 0};
            idc = -1;
            text = "$STR_PM_Title";
            x = 0.1;
            y = 0.2;
            w = 0.8;
            h = (1 / 25);
        };
        */

        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\Phone_Frame.paa";
            x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
        };
        
        /*
        class moneyStatusInfo: Life_RscStructuredText {
            idc = 2015;
            sizeEx = 0.020;
            text = "";
            x = 0.105;
            y = 0.30;
            w = 0.3;
            h = 0.6;
        };
        
        class PlayersName: Life_RscTitle {
            idc = carry_weight;
            style = 1;
            text = "";
        };
        */
    };

    class controls {

        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Zubana)
        ////////////////////////////////////////////////////////

        class Back_B: cl_phone_base_RscButtonMenu
		{
			idc = 2334;
			action = "closeDialog 0;";
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};

			x = 0.444828 * safezoneW + safezoneX;
			y = 0.63508 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.0249999 * safezoneH;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			tooltip = "Go Back"; //--- ToDo: Localize;
		};
		class home_B: cl_phone_base_RscButtonMenu
		{
			idc = 2323;
			action = "closeDialog 0;";
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};

			x = 0.483294 * safezoneW + safezoneX;
			y = 0.63618 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.0249999 * safezoneH;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			tooltip = "Home"; //--- ToDo: Localize;
		};
		class Lock_B: cl_phone_base_RscButtonMenu
		{
			idc = 6569;
			action = "closeDialog 0;";
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};

			x = 0.526091 * safezoneW + safezoneX;
			y = 0.63618 * safezoneH + safezoneY;
			w = 0.02125 * safezoneW;
			h = 0.0249999 * safezoneH;
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			tooltip = "Lock"; //--- ToDo: Localize;
		};

        class background_P: cl_phone_base_RscPicture
		{
			idc = 7565;

			text = "\CL_Client\phone\main\background1.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};

        class rectangleSTATIC_P: cl_phone_base_RscPicture
		{
			idc = 7566;

			text = "\CL_Client\phone\main\RectangleSTATIC.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};

        //////////////////////////////////////////////////
        //                  VISUALS                     //
        //////////////////////////////////////////////////

		//inv
        class ADT_P: cl_phone_base_RscPicture
		{
			idc = 7567;

			text = "\CL_Client\phone\main\inv.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		class bank_P: cl_phone_base_RscPicture
		{
			idc = 7578;

			text = "\CL_Client\phone\main\BankingIcon.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		class contacts_P: cl_phone_base_RscPicture
		{
			idc = 7579;

			text = "\CL_Client\phone\main\licenses.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		//gang
		class maps_P: cl_phone_base_RscPicture
		{
			idc = 7580;

			text = "\CL_Client\phone\main\gang.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		class messsages_P: cl_phone_base_RscPicture
		{
			idc = 7581;

			text = "\CL_Client\phone\main\MessageIcon.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		//sync
		class news_P: cl_phone_base_RscPicture
		{
			idc = 7582;

			text = "\CL_Client\phone\main\download.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		//contacts / callmenu
		class phone_P: cl_phone_base_RscPicture
		{
			idc = 7583;

			text = "\CL_Client\phone\main\PhoneIcon.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;

		};
		class settings_P: cl_phone_base_RscPicture
		{
			idc = 7584;

			text = "\CL_Client\phone\main\SettingsIcon.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		class Job_P: cl_phone_base_RscPicture
		{
			idc = 7585;

			text = "\CL_Client\phone\main\jobMarketIcon.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};
		//keychain
		class Taxi_P: cl_phone_base_RscPicture
		{
			idc = 7586;

			text = "\CL_Client\phone\main\keychain.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.520001 * safezoneH;
		};

        //////////////////////////////////////////////
        //              BUTTONS                     //
        //////////////////////////////////////////////

        //Settings
        class cl_phone_settings: cl_phone_base_RscButtonMenu
        {
            idc = 1600;
            x = 0.427604 * safezoneW + safezoneX;
			y = 0.341666 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "[] call life_fnc_settingsMenu;";
        };
        //MSG
        class cl_phone_message: cl_phone_base_RscButtonMenu
        {
            idc = 1601;
            x = 0.514583 * safezoneW + safezoneX;
			y = 0.581481 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.05 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; createDialog ""cl_phone_sms"";";
        };

        class cl_phone_items: cl_phone_base_RscButtonMenu
        {
            idc = 1602;
            x = 0.530729 * safezoneW + safezoneX;
			y = 0.269445 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; call life_fnc_ItemsMenu;";
        };
        class cl_phone_keychain: cl_phone_base_RscButtonMenu
        {
            idc = 1603;
            colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};

			x = 0.530937 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; createDialog ""cl_phone_keychain"";";
        };
        //Bank
        class cl_phone_bankacc: cl_phone_base_RscButtonMenu
        {
            idc = 1604;
            x = 0.496355 * safezoneW + safezoneX;
			y = 0.269444 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; call life_fnc_MoneyMenu;";
        };
        //gang
        class cl_phone_gangs: cl_phone_base_RscButtonMenu
        {
            idc = 1615;
            x = 0.461979 * safezoneW + safezoneX;
			y = 0.269445 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "hint ""Opcja niedostępna"";";
        };
		//sync
        class cl_phone_sync: cl_phone_base_RscButtonMenu
        {
            idc = 1606;
            x = 0.461979 * safezoneW + safezoneX;
			y = 0.341667 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "[] call SOCK_fnc_syncData;";
        };
        //licenses
        class cl_phone_licenses: cl_phone_base_RscButtonMenu
        {
            idc = 1607;
            x = 0.427812 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.065 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; call life_fnc_licenseMenu;";
        };
        
        class cl_phone_contacts: cl_phone_base_RscButtonMenu
        {
            idc = 1608;
            x = 0.440625 * safezoneW + safezoneX;
			y = 0.582408 * safezoneH + safezoneY;
			w = 0.03425 * safezoneW;
			h = 0.05 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorActive[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
  			colorShadow[] = {0,0,0,0};
   			colorBorder[] = {0,0,0,0};
            onButtonClick = "closeDialog 0; call life_fnc_CallMenu; hint 'czy to jest zielona sluchawka?';";
        };
        
        /*
        //class cl_phone_adminMenu: cl_phone_base_RscButton
        class cl_phone_adminMenu: cl_phone_base_RscButtonMenu
        {
            idc = 4079;
            //text = "Admin Menu"; //--- ToDo: Localize;
            onButtonClick = "closeDialog 0; createDialog ""life_admin_menu"";";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.033 * safezoneH;
        };   
        class cl_phone_adminMenu_ico: RscPicture
        {
            idc = 4069;
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.055 * safezoneH;
            text = "\CL_Client\phone\cl_admin.paa";
        };   
       // class ButtonPlaceables: cl_phone_base_RscButton
        class ButtonPlaceables: cl_phone_base_RscButtonMenu
        {
            idc = 4071;
            //text = "Barierki"; //--- ToDo: Localize;
            onButtonClick = "[] spawn life_fnc_placeablesMenu; closeDialog 0;";  
            x = 0.510312 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class ButtonPlaceables_ico: RscPicture
        {
            idc = 4070;
            text = "\CL_Client\phone\cl_barrier.paa"; //--- ToDo: Localize; 
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class cl_phone_WantedMenu: cl_phone_base_RscButtonMenu
        {
            idc = 4080;
            //text = "Wanted Menu"; //--- ToDo: Localize;
            onButtonClick = "closeDialog 0; call life_fnc_wantedMenu;";
            x = 0.530937 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
        };   
        class cl_phone_WantedMenu_ico: RscPicture
        {
            idc = 4081;
            x = 0.525781 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.055 * safezoneH;
            text = "\CL_Client\phone\cl_wanted.paa";
        };
        
        class cl_phone_clock: cl_phone_base_RscText
        {
            idc = 9950;
            text = ""; //--- ToDo: Localize;
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.137656 * safezoneW;
            h = 0.121 * safezoneH;
            sizeEx = 0.2;
        };
        class cl_phone_date: cl_phone_base_RscText
        {
            idc = 9949;
            text = ""; //--- ToDo: Localize;
            x = 0.45875 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.055 * safezoneH;
            sizeEx = 0.06;
        };
		*/
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////

    };        
};
