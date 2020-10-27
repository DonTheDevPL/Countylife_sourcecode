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
            text = "\CL_Client\phone\cl_phone_keychain.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
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
		class cl_phone_givekey: cl_phone_base_RscButtonMenu
		{
			idc = 2400;
			x = 0.429895 * safezoneW + safezoneX;
			y = 0.513778 * safezoneH + safezoneY;
			w = 0.0470828 * safezoneW;
			h = 0.0807037 * safezoneH;
			onButtonClick = "[] call life_fnc_keyGive";
		};
		class cl_phone_dropkey: cl_phone_base_RscButtonMenu
		{
			idc = 2401;
			x = 0.52375 * safezoneW + safezoneX;
			y = 0.512852 * safezoneH + safezoneY;
			w = 0.0470828 * safezoneW;
			h = 0.0807037 * safezoneH;
			onButtonClick = "[] call life_fnc_keyDrop";
		};
		class KeyChainList: Life_RscListbox
		{
			idc = 2701;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.176 * safezoneH;
		};
		class NearPlayers: Life_RscCombo
		{
			idc = 2702;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.144844 * safezoneW;
			h = 0.022 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};		