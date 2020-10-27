class Life_atm_management {
    idd = 2700;
    name= "life_atm_menu";
    movingEnable = 0;
    enableSimulation = 1;

    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by TheWolek, v1.063, #Nimuru)
    ////////////////////////////////////////////////////////
	class controls
	{
        class Life_RscTitleBackground: Life_RscText
        {
            idc = -1;

            x = 0.355625 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.299062 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
        };
        class MainBackground: Life_RscText
        {
            idc = -1;

            x = 0.355625 * safezoneW + safezoneX;
            y = 0.412 * safezoneH + safezoneY;
            w = 0.299062 * safezoneW;
            h = 0.231 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
        class CashTitle: Life_RscStructuredText
        {
            idc = 2701;

            x = 0.365937 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.077 * safezoneH;
            colorBackground[] = {0,0,0,0.4};
        };
        class Title: Life_RscTitle
        {
            idc = -1;

            text = "Bank Account Management"; //--- ToDo: Localize;
            x = 0.355625 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0.95,0.95,0.95,1};
        };
        class WithdrawButton: Life_RscButtonMenu
        {
            onButtonClick = "[] call life_fnc_bankWithdraw";

            idc = 1004;
            text = "Withdraw"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class DepositButton: Life_RscButtonMenu
        {
            onButtonClick = "[] call life_fnc_bankDeposit";

            idc = 1005;
            text = "Deposit"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class moneyEdit: Life_RscEdit
        {
            idc = 2702;

            text = "1"; //--- ToDo: Localize;
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class PlayerList: Life_RscCombo
        {
            idc = 2703;

            x = 0.474219 * safezoneW + safezoneX;
            y = 0.533 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class TransferButton: Life_RscButtonMenu
        {
            onButtonClick = "[] call life_fnc_bankTransfer";

            idc = 1008;
            text = "Transfer"; //--- ToDo: Localize;
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class GangWithdraw: TransferButton
        {
            idc = 2705;
            onButtonClick = "[] call life_fnc_gangWithdraw";

            text = "Withdraw: Gang"; //--- ToDo: Localize;
            x = 0.572187 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class GangDeposit: TransferButton
        {
            idc = 2706;
            onButtonClick = "[] call life_fnc_gangDeposit";

            text = "Deposit: Gang"; //--- ToDo: Localize;
            x = 0.572187 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
        };
        class CloseButtonKey: Life_RscButtonMenu
        {
            onButtonClick = "closeDialog 0;";

            idc = 1011;
            text = "Close"; //--- ToDo: Localize;
            x = 0.577344 * safezoneW + safezoneX;
            y = 0.588 * safezoneH + safezoneY;
            w = 0.0670312 * safezoneW;
            h = 0.033 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.5,0,0,1};
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};