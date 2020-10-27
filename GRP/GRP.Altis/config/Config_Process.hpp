/*
*   class:
*       MaterialsReq (Needed to process) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       MaterialsGive (Returned items) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       Text (Progess Bar Text) = Localised String
*       NoLicenseCost (Cost to process w/o license) = Scalar
*
*   Example for multiprocess:
*
*   class Example {
*       MaterialsReq[] = {{"cocaine_processed",1},{"heroin_processed",1}};
*       MaterialsGive[] = {{"diamond_cut",1}};
*       Text = "STR_Process_Example";
*       //ScrollText = "Process Example";
*       NoLicenseCost = 4000;
*   };
*/

class ProcessAction {
    class cornP {
        MaterialsReq[] = {{"corn",1}};
        MaterialsGive[] = {{"cornP",1}};
        Text = "STR_process_cornP";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class bimber {
        MaterialsReq[] = {{"cornP",1},{"drozdze",1},{"glass",1}};
        MaterialsGive[] = {{"bimber",1}};
        Text = "STR_process_bimber";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class whiskey {
        MaterialsReq[] = {{"zboze",1},{"drozdze",1},{"glass",1}};
        MaterialsGive[] = {{"whiskey",1}};
        Text = "STR_process_whiskey";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class beer {
        MaterialsReq[] = {{"chmiel",1},{"drozdze",1}};
        MaterialsGive[] = {{"beer",1}};
        Text = "STR_process_beer";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class jew {
        MaterialsReq[] = {{"silver",2},{"diamond_cut",1}};
        MaterialsGive[] = {{"jew",1}};
        Text = "STR_process_jew";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class silver {
        MaterialsReq[] = {{"silverU",1}};
        MaterialsGive[] = {{"silver",1}};
        Text = "STR_process_silver";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class wine {
        MaterialsReq[] = {{"grapes",1}};
        MaterialsGive[] = {{"wine",1}};
        Text = "STR_process_wine";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class oil {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class diamond {
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamond";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };

    class heroin {
        MaterialsReq[] = {{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"heroin_processed",1}};
        Text = "STR_Process_Heroin";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 1750;
    };

    class copper {
        MaterialsReq[] = {{"copper_unrefined",1}};
        MaterialsGive[] = {{"copper_refined",1}};
        Text = "STR_Process_Copper";
        //ScrollText = "Refine Copper";
        NoLicenseCost = 750;
    };

    class iron {
        MaterialsReq[] = {{"iron_unrefined",1}};
        MaterialsGive[] = {{"iron_refined",1}};
        Text = "STR_Process_Iron";
        //ScrollText = "Refine Iron";
        NoLicenseCost = 1120;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        //ScrollText = "Melt Sand into Glass";
        NoLicenseCost = 650;
    };

    class salt {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_Salt";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 450;
    };

    class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 1500;
    };

    class marijuana {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        //ScrollText = "Harvest Marijuana";
        NoLicenseCost = 500;
    };

    class cement {
        MaterialsReq[] = {{"rock",1}};
        MaterialsGive[] = {{"cement",1}};
        Text = "STR_Process_Cement";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 350;
    };
};
