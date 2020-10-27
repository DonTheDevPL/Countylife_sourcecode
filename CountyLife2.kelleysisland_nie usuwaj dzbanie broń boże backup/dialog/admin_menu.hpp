class life_admin_menu {
    idd = 2900;
    name= "life_admin_menu";
    movingEnable = 0;
    enableSimulation = 1;
    //onLoad = "";

    class controlsBackground {
        class AdminMenuRscFrame_1800: Life_RscFrame
        {
            idc = 1800;
            x = 0.005 * safezoneW + safezoneX;
            y = 0.00500001 * safezoneH + safezoneY;
            w = 0.232031 * safezoneW;
            h = 0.99 * safezoneH;
        };

        class AdminMenuFrame_1801: Life_RscFrame
        {
            idc = 1801;
            x = 0.891875 * safezoneW + safezoneX;
            y = 0.00500001 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.99 * safezoneH;
        };
    };

    class controls {

        class PlayerList_Admin: Life_RscListbox
        {
            idc = 2902;
            onLBSelChanged = "[_this] spawn life_fnc_adminQuery";
            x = 0.0153125 * safezoneW + safezoneX;
            y = 0.016 * safezoneH + safezoneY;
            w = 0.211406 * safezoneW;
            h = 0.605 * safezoneH;
        };
        class PlayerBInfo: Life_RscStructuredText
        {
            idc = 2903;
            x = 0.0153125 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.211406 * safezoneW;
            h = 0.33 * safezoneH;
        };

        class Life_RscButtonMenu_2402: Life_RscButtonMenu
        {
            idc = -1;
            text = $STR_Admin_GetID;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.027 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
            onButtonClick = "[] call life_fnc_adminGetID;";            
        };
        class Life_RscButtonMenu_2403: Life_RscButtonMenu
        {
            idc = 2904;
            onButtonClick = "createDialog ""Life_Admin_Compensate"";";
            text = $STR_Admin_Compensate;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.071 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2404: Life_RscButtonMenu
        {
            idc = 2905;
            onButtonClick = "[] call life_fnc_adminSpectate;";
            text = $STR_Admin_Spectate;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.115 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2405: Life_RscButtonMenu
        {
            idc = 2906;
            onButtonClick = "[] call life_fnc_adminTeleport; hint 'Select where you would like to teleport';";
            text = $STR_Admin_Teleport;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.159 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2401: Life_RscButtonMenu
        {
            idc = 2907;
            onButtonClick = "[] call life_fnc_adminTpHere;";
            text = $STR_Admin_TpHere;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.203 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2406: Life_RscButtonMenu
        {
            idc = 2908;
            onButtonClick = "[] call life_fnc_adminGodMode;";
            text = $STR_Admin_God;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2407: Life_RscButtonMenu
        {
            idc = 2909;
            onButtonClick = "[] call life_fnc_adminFreeze;";
            text = $STR_Admin_Freeze;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2408: Life_RscButtonMenu
        {
            idc = 2910;
            onButtonClick = "[] spawn life_fnc_adminMarkers;closeDialog 0;";
            text = $STR_Admin_Markers;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2409: Life_RscButtonMenu
        {
            onButtonClick = "life_vehicles set [count life_vehicles, cursorTarget];";
            idc = 2911;
            text ="Klucz do twojego serca Kippo";
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.555 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2410: Life_RscButtonMenu
        {
            idc = 2912;
            onButtonClick = "[] call life_fnc_adminrevive;";
            text = "Revive Target"; //--- ToDo: Localize;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2400: Life_RscButtonMenu
        {
            idc = -1;
            text = "CLOSE"; //--- ToDo: Localize;
            x = 0.907344 * safezoneW + safezoneX;
            y = 0.951 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
            onButtonClick = "closeDialog 0;";
        };
        class Life_RscButtonMenu_2411: Life_RscButtonMenu
        {
            idc = 2913;
            onButtonClick = "cursorObject setDamage 1;";
            text = "Kill"; //--- ToDo: Localize;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2412: Life_RscButtonMenu
        {
            idc = 2913;
            text = "HEAL"; //--- ToDo: Localize;
            onButtonClick = "cursorObject setDamage 0;";  
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.467 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Life_RscButtonMenu_2413: Life_RscButtonMenu
        {
            idc = 2914;
            
            text = "Arsenal"; //--- ToDo: Localize;
            x = 0.902187 * safezoneW + safezoneX;
            y = 0.511 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
            onButtonClick = "['Open',true ] spawn BIS_fnc_arsenal;";
        };
        class Life_RscText_1000: Life_RscText
        {
            idc = 1000;
            text = "Admin Menu dla opornych here "; //--- ToDo: Localize;
            x = 0.371094 * safezoneW + safezoneX;
            y = 0.016 * safezoneH + safezoneY;
            w = 0.314531 * safezoneW;
            h = 0.066 * safezoneH;
            sizeEx = 0.07 * safezoneH;
        };

    };
};