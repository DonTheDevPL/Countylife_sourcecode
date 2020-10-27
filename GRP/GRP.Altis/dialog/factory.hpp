class Factory{
    idd = 5000;
    movingEnable = 0;
    enableSimulation = 1;
    class controls {
        class SelectBTN: Life_RscButtonMenu
        {
            idc = 5001;
            text = "Select"; //--- ToDo: Localize;
            x = 0.498969 * safezoneW + safezoneX;
            y = 0.6144 * safezoneH + safezoneY;
            w = 0.0433333 * safezoneW;
            h = 0.032074 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            onButtonClick = "closeDialog 0; []spawn life_fnc_startFactory;";
        };
        class List: Life_RscListbox
        {
            idc = 5002;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.187 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
        class CloseBTN: Life_RscButtonMenu
        {
            idc = 5003;
            text = "Close"; //--- ToDo: Localize;
            x = 0.449572 * safezoneW + safezoneX;
            y = 0.61484 * safezoneH + safezoneY;
            w = 0.0433333 * safezoneW;
            h = 0.032074 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            onButtonClick = "closeDialog 0;";
        };
    };
};
