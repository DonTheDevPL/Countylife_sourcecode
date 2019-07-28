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
            text = "\Cl_Client\phone\Message\sendMessage2.paa";
            x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
        };

        class cl_phone_Frame: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\Phone_Frame.paa";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.155375 * safezoneW;
			h = 0.52 * safezoneH;
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

        class Admin_P: cl_phone_base_RscPicture
        {
            idc = 3021;
            text = "\CL_Client\phone\message\wszyscy.paa";
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
            x = 0.44552 * safezoneW + safezoneX;
            y = 0.603445 * safezoneH + safezoneY;
            w = 0.0429684 * safezoneW;
            h = 0.0144816 * safezoneH;
        };


        class TextMsgButton: cl_phone_base_RscButtonMenu
        {
            idc = 2400;
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.101614 * safezoneW;
            h = 0.0244444 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_textmsg";
        };

        class TextCopButton: cl_phone_base_RscButtonMenu
        {
            idc = 3016;
            x = 0.5 * safezoneW + safezoneX;
            y = 0.577 * safezoneH + safezoneY;
            w = 0.044375 * safezoneW;
            h = 0.0195926 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_textcop";
        };

        class EMSRequest: cl_phone_base_RscButtonMenu
        {
            idc = 2402;
            x = 0.444167 * safezoneW + safezoneX;
            y = 0.576259 * safezoneH + safezoneY;
            w = 0.044323 * safezoneW;
            h = 0.020037 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_emsrequest";
        };

        class AdminMsgAllButton: cl_phone_base_RscButtonMenu
        {
            idc = 3020;
            text = ""; //--- ToDo: Localize;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0};
            x = 0.44552 * safezoneW + safezoneX;
            y = 0.603445 * safezoneH + safezoneY;
            w = 0.0429684 * safezoneW;
            h = 0.0144816 * safezoneH;
            onButtonClick = "[] call TON_fnc_cell_adminmsgall";
        };

        class text: Life_RscEdit
        {
            idc = 3003;
            x = 0.430886 * safezoneW + safezoneX;
            y = 0.361037 * safezoneH + safezoneY;
            w = 0.130415 * safezoneW;
            h = 0.126815 * safezoneH;
        };

        class PlayerList: Life_RscCombo
        {
            idc = 3004;
            x = 0.450521 * safezoneW + safezoneX;
            y = 0.324926 * safezoneH + safezoneY;
            w = 0.0955193 * safezoneW;
            h = 0.0229259 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};