#include "player_sys.sqf"

class playerSettings {
    idd = playersys_DIALOG;
    movingEnable = 1;
    enableSimulation = 1;
    onLoad = "[] spawn life_fnc_witaj;";

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
            text = "\CL_Client\phone\cl_phone.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
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
        class cl_phone_settings: cl_phone_base_RscButtonMenu
        {
            idc = 1600;
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "[] call life_fnc_settingsMenu;";
        };
        class cl_phone_message: cl_phone_base_RscButtonMenu
        {
            idc = 1601;
            x = 0.486042 * safezoneW + safezoneX;
            y = 0.64763 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "closeDialog 0; createDialog ""cl_phone_sms"";";
        };
        class cl_phone_items: cl_phone_base_RscButtonMenu
        {
            idc = 1602;
            x = 0.535052 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "closeDialog 0; call life_fnc_ItemsMenu;";
        };
        class cl_phone_keychain: cl_phone_base_RscButtonMenu
        {
            idc = 1603;
            x = 0.531979 * safezoneW + safezoneX;
            y = 0.564148 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "closeDialog 0; createDialog ""cl_phone_keychain"";";
        };
        class cl_phone_bankacc: cl_phone_base_RscButtonMenu
        {
            idc = 1604;
            x = 0.482968 * safezoneW + safezoneX;
            y = 0.566926 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "closeDialog 0; call life_fnc_MoneyMenu;";
        };
        class cl_phone_gangs: cl_phone_base_RscButtonMenu
        {
            idc = 1615;
            x = 0.435573 * safezoneW + safezoneX;
            y = 0.575148 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "hint ""Opcja niedostępna"";";
        };
        class cl_phone_sync: cl_phone_base_RscButtonMenu
        {
            idc = 1606;
            x = 0.529895 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "[] call SOCK_fnc_syncData;";
        };
        class cl_phone_licenses: cl_phone_base_RscButtonMenu
        {
            idc = 1607;
            x = 0.479375 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "closeDialog 0; call life_fnc_licenseMenu;";
        };
        class cl_phone_contacts: cl_phone_base_RscButtonMenu
        {
            idc = 1608;
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.0257812 * safezoneW;
            h = 0.066 * safezoneH;
            onButtonClick = "closeDialog 0; call life_fnc_CallMenu;";
        };
        class cl_phone_hello_message: cl_phone_base_RscText
        {
            idc = 9969;
            text = ""; //--- ToDo: Localize; 
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.258 * safezoneH + safezoneY;
            w = 0.137187 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class cl_phone_mainscreen: cl_phone_base_RscButtonMenu
        {
            idc = 1609;
            x = 0.487083 * safezoneW + safezoneX;
            y = 0.731 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.044 * safezoneH;
            onButtonClick = "closeDialog 0;";
        };
        class cl_phone_return: cl_phone_base_RscButtonMenu
        {
            idc = 1610;
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.73563 * safezoneH + safezoneY;
            w = 0.0257812 * safezoneW;
            h = 0.033 * safezoneH;
            onButtonClick = "closeDialog 0;";
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
        */
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
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////

    };        
};
