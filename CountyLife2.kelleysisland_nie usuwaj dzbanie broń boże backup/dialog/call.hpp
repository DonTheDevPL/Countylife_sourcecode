
class cl_phone_call {
    idd = 5337;
    name= "cl_phone_call";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {

        class cl_phone_call_screen: cl_phone_base_RscPicture
        {
            idc = 1200;
            text = "\CL_Client\phone\cl_phone_call.paa";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.737 * safezoneH;
        };
    };


    class Controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Don Kappaelli, v1.063, #Jacoru)
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
        class cl_phone_call_button: cl_phone_base_RscButtonMenu
        {
            idc = 1600;
            x = 0.474219 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.11463 * safezoneH;
            onButtonClick = "[] spawn life_fnc_CallSomebody;";
        };
        class cl_phone_answer_button: cl_phone_base_RscButtonMenu
        {
            idc = -1;
            x = 0.437082 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.099 * safezoneH;
            onButtonClick = "[] spawn life_fnc_trycall;";
        };
        class cl_phone_hangup_button: cl_phone_base_RscButtonMenu
        {
            idc = -1;
            x = 0.517031 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.099 * safezoneH;
            onButtonClick = "[] spawn life_fnc_tryhangup;";
        };
        class PlayerListCall: Life_RscListBox
        {
            idc = 5338;
            x = 0.432866 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.13927 * safezoneW;
            h = 0.176 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };    
};