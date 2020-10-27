class cl_phone_sms {
    idd = 3000;
    name= "cl_phone_sms";
    movingEnable = false;
    enableSimulation = true;
    onLoad = "[] spawn life_fnc_cellphone";    

    class controlsBackground {

        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\Cl_Client\phone\cl_phone_sms.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
        };
    };
    class Controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Fexyxe)
        ////////////////////////////////////////////////////////
        class cl_phone_mainscreen: cl_phone_base_RscButtonMenu
        {
            idc = 1609;
            onButtonClick = "closeDialog 0;";

            x = 0.487083 * safezoneW + safezoneX;
            y = 0.731 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.044 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
        };
        class cl_phone_return: cl_phone_base_RscButtonMenu
        {
            idc = 1610;
            onButtonClick = "closeDialog 0; call life_fnc_p_OpenMenu;";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.73563 * safezoneH + safezoneY;
            w = 0.0257812 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
        };
        class TextMsgButton: cl_phone_base_RscButtonMenu
        {
            idc = 2400;
            x = 0.427812 * safezoneW + safezoneX;
            y = 0.532889 * safezoneH + safezoneY;
            w = 0.0438021 * safezoneW;
            h = 0.0781481 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_textmsg";
        };
        class TextCopButton: cl_phone_base_RscButtonMenu
        {
            idc = 3016;
            x = 0.478854 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0438542 * safezoneW;
            h = 0.0788519 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_textcop";
        };
        class EMSRequest: cl_phone_base_RscButtonMenu
        {
            idc = 2402;
            x = 0.529375 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0438542 * safezoneW;
            h = 0.0788519 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_emsrequest";
        };
        class AdminMsgAllButton: cl_phone_base_RscButtonMenu
        {
            idc = 3020;
            text = "SMS DO WSZYSTKICH"; //--- ToDo: Localize;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.641148 * safezoneH + safezoneY;
            w = 0.103385 * safezoneW;
            h = 0.0274445 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_adminmsgall";
        };
        class textEdit: Life_RscEdit
        {
            idc = 3003;
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.274926 * safezoneH + safezoneY;
            w = 0.136145 * safezoneW;
            h = 0.236074 * safezoneH;
        };
        class PlayerList: Life_RscCombo
        {
            idc = 3004;
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.135624 * safezoneW;
            h = 0.022 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};