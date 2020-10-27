class life_weapon_shop {
    idd = 38400;
    movingEnable = 0;
    enableSimulation = 1;

    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by TheWolek, v1.063, #Covepy)
    ////////////////////////////////////////////////////////
	class controls
	{
        class RscTitleBackground: Life_RscText
        {
            idc = -1;

            x = 0.335 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.366094 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
        };
        class MainBackground: Life_RscText
        {
            idc = -1;

            x = 0.335 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.366094 * safezoneW;
            h = 0.319 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
        class Title: Life_RscTitle
        {
            idc = 38401;

            x = 0.340156 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.132 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0.95,0.95,0.95,1};
        };
        class itemInfo: Life_RscStructuredText
        {
            idc = 38404;
            sizeEx = 0.035;
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.077 * safezoneH;
            colorBackground[] = {0,0,0,0.4};
        };
        class FilterList: Life_RscCombo
        {
            idc = 38402;
            onLBSelChanged = "_this call life_fnc_weaponShopFilter";

            x = 0.561875 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class itemList: Life_RscListBox
        {
            idc = 38403;
            onLBSelChanged = "_this call life_fnc_weaponShopSelection";
            sizeEx = 0.035;
            x = 0.340156 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.216563 * safezoneW;
            h = 0.264 * safezoneH;
            colorBackground[] = {0,0,0,0.4};
        };
        class ButtonBuySell: Life_RscButtonMenu
        {
            idc = 38405;
            onButtonClick = "[] spawn life_fnc_weaponShopBuySell; true";

            text = "Buy"; //--- ToDo: Localize;
            x = 0.592812 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0.7,0,0.8};
        };
        class ButtonClose: Life_RscButtonMenu
        {
            onButtonClick = "closeDialog 0;";

            idc = 1007;
            text = "Close"; //--- ToDo: Localize;
            x = 0.572187 * safezoneW + safezoneX;
            y = 0.599 * safezoneH + safezoneY;
            w = 0.108281 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.5,0,0,1};
        };
        class ButtonMags: Life_RscButtonMenu
        {
            idc = 38406;
            onButtonClick = "_this call life_fnc_weaponShopMags; _this call life_fnc_weaponShopFilter";

            text = "Magazines"; //--- ToDo: Localize;
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0.8};
        };
        class ButtonAccs: Life_RscButtonMenu
        {
            idc = 38407;
            onButtonClick = "_this call life_fnc_weaponShopAccs; _this call life_fnc_weaponShopFilter";

            text = "Accessories"; //--- ToDo: Localize;
            x = 0.628906 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0.8};
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};