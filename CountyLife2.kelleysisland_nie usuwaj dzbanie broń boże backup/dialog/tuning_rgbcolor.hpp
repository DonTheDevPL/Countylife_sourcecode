class mav_tuning_dialog_rgbcolor {
    idd = 5200;
    movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    class controls {
		class Life_RscText_1000: Life_RscText
		{
			idc = -1;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.268125 * safezoneW;
			h = 0.286 * safezoneH;
			colorText[] = {};
			colorBackground[] = {0.12,0.14,0.16,0.8};
		};
		class Life_RscSlider_1900: Life_RscSlider
		{
			idc = 0;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class Life_RscText_1001: Life_RscText
		{
			idc = -1;
			text = "Red"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class Life_RscText_1002: Life_RscText
		{
			idc = -1;
			text = "Green"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class Life_RscSlider_1901: Life_RscSlider
		{
			idc = 1;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class Life_RscSlider_1902: Life_RscSlider
		{
			idc = 2;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class Life_RscText_1003: Life_RscText
		{
			idc = -1;
			text = "Blue"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class Life_RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 3;
			text = "APPLY COLOR"; //--- ToDo: Localize;
			x = 0.151437 * safezoneW + safezoneX;
			y = 0.6562 * safezoneH + safezoneY;
			w = 0.152625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class Life_RscButtonMenu_2401: Life_RscButtonMenu
		{
			idc = 4;
			text = "ABORT"; //--- ToDo: Localize;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.6562 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};