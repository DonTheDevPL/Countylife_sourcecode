class shops_menu {
    idd = 2400;
    name= "shops_menu";
    movingEnable = 0;
    enableSimulation = 1;
	class controls
	{
       ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by TheWolek, v1.063, #Nipyxu)
        ////////////////////////////////////////////////////////

        class Life_RscTitleBackground: Life_RscText
        {
            idc = -1;

            x = 0.309219 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.381563 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
        };
        class MainBackground: Life_RscText
        {
            idc = -1;

            x = 0.309219 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.381563 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
        class vasText: Life_RscText
        {
            idc = -1;

            text = "Shop Inventory"; //--- ToDo: Localize;
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.154687 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class vasgText: Life_RscText
        {
            idc = -1;

            text = "Your Inventory"; //--- ToDo: Localize;
            x = 0.551562 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class itemList: Life_RscListBox
        {
            idc = 2401;
            text = "";
			sizeEx = 0.030;
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.154687 * safezoneW;
            h = 0.242 * safezoneH;
            colorBackground[] = {0,0,0,0.4};
        };
        class pItemlist: Life_RscListBox
        {
            idc = 2402;
            text = "";
			sizeEx = 0.030;
            x = 0.551562 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.242 * safezoneH;
            colorBackground[] = {0,0,0,0.4};
        };
        class Title: Life_RscTitle
        {
            idc = 2403;

            x = 0.309219 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.324844 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0.95,0.95,0.95,1};
        };
        class buyEdit: Life_RscEdit
        {
            idc = 2404;

            text = "1"; //--- ToDo: Localize;
            x = 0.355625 * safezoneW + safezoneX;
            y = 0.632 * safezoneH + safezoneY;
            w = 0.0721875 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class sellEdit: Life_RscEdit
        {
            idc = 2405;

            text = "1"; //--- ToDo: Localize;
            x = 0.5825 * safezoneW + safezoneX;
            y = 0.632 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class ButtonAddG: Life_RscButtonMenu
        {
            onButtonClick = "[] spawn life_fnc_virt_buy;";
            idc = 1010;

            text = "Buy Item"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.6,0.2,0,1};
        };
        class ButtonRemoveG: Life_RscButtonMenu
        {
            onButtonClick = "[] call life_fnc_virt_sell";
            idc = 1011;

            text = "Sell Item"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0.5,0,1};
        };
        class ButtonClose: Life_RscButtonMenu
        {
            onButtonClick = "closeDialog 0;";
            idc = 1012;

            text = "Close"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.5,0,0,1};
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////


    };
};