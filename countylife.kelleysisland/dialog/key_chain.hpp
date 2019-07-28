class cl_phone_keychain {
    idd = 2700;
    name= "cl_phone_keychain";
    movingEnable = false;
    enableSimulation = true;
    onLoad = "[] spawn life_fnc_keyMenu;";	

    class controlsBackground {
		
        class cl_phone_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\keychain\keychain.paa";
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
		// GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Hyqife)
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
		
	
		class cl_phone_givekey: cl_phone_base_RscButtonMenu
		{
			idc = 2400;
			x = 0.446562 * safezoneW + safezoneX;
			y = 0.571185 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.0192223 * safezoneH;
			onButtonClick = "[] call life_fnc_keyGive";
		};

		class cl_phone_dropkey: cl_phone_base_RscButtonMenu
		{
			idc = 2401;
			x = 0.49927 * safezoneW + safezoneX;
			y = 0.574889 * safezoneH + safezoneY;
			w = 0.0444786 * safezoneW;
			h = 0.0149628 * safezoneH;
			onButtonClick = "[] call life_fnc_keyDrop";
		};

		class KeyChainList: Life_RscListbox
		{
			idc = 2701;
			x = 0.432969 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.187 * safezoneH;
		};

		class NearPlayers: Life_RscCombo
		{
			idc = 2702;
			x = 0.434011 * safezoneW + safezoneX;
			y = 0.529889 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};		