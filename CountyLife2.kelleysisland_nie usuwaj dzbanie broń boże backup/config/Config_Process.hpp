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
        NoLicenseCost = 500;
    };

    class heroin {
        MaterialsReq[] = {{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"heroin_processed",1}};
        Text = "STR_Process_Heroin";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 1000;
    };

    class heroin_packed {
        MaterialsReq[] = {{"heroin_processed",5}};
        MaterialsGive[] = {{"heroin_packed",1}};
        Text = "STR_MAR_packing";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 1000;
    };

    class copper {
        MaterialsReq[] = {{"copper_unrefined",1}};
        MaterialsGive[] = {{"copper_refined",1}};
        Text = "STR_Process_Copper";
        //ScrollText = "Refine Copper";
        NoLicenseCost = 500;
    };

    class iron {
        MaterialsReq[] = {{"iron_unrefined",1}};
        MaterialsGive[] = {{"iron_refined",1}};
        Text = "STR_Process_Iron";
        //ScrollText = "Refine Iron";
        NoLicenseCost = 500;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        //ScrollText = "Melt Sand into Glass";
        NoLicenseCost = 500;
    };

    class salt {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_Salt";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 500;
    };

    class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 1000;
    };

    class cocaine_packed {
        MaterialsReq[] = {{"cocaine_processed", 5}};
        MaterialsGive[] = {{"cocaine_packed",1}};
        Text = "STR_MAR_packing";
        NoLicenseCost = 1000;
    };

    class marijuana {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        //ScrollText = "Harvest Marijuana";
        NoLicenseCost = 1000;
    };

    class marijuana_packed {
        MaterialsReq[] = {{"marijuana", 5}};
        MaterialsGive[] = {{"marijuana_packed",1}};
        Text = "STR_MAR_packing";
        NoLicenseCost = 1000;
    };

    class cement {
        MaterialsReq[] = {{"rock",1}};
        MaterialsGive[] = {{"cement",1}};
        Text = "STR_Process_Cement";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 500;
    };

    class amfa {
        MaterialsReq[] = {{"amina", 1},{"efedryna", 1}};
        MaterialsGive[] = {{"amfa",1}};
        Text = "STR_MAR_amfa";
        NoLicenseCost = 1000;
    };

    class amfa_Packed {
        MaterialsReq[] = {{"amfa", 5}};
        MaterialsGive[] = {{"amfa_Packed",1}};
        Text = "STR_MAR_packing";
        NoLicenseCost = 1000;
    };

    class meta {
        MaterialsReq[] = {{"amfa", 1},{"efedryna", 1}};
        MaterialsGive[] = {{"meta",1}};
        Text = "STR_MAR_meta";
        NoLicenseCost = 1000;
    };

    class meta_Packed {
        MaterialsReq[] = {{"meta", 5}};
        MaterialsGive[] = {{"meta_Packed",1}};
        Text = "STR_MAR_packing";
        NoLicenseCost = 1000;
    };

    class MDMA {
        MaterialsReq[] = {{"meta", 1},{"amina", 1}};
        MaterialsGive[] = {{"MDMA",2}};
        Text = "STR_MAR_MDMA";
        NoLicenseCost = 500;
    };

    class beer {
        MaterialsReq[] = {{"hop", 1},{"yeast", 1}};
        MaterialsGive[] = {{"beer",1}};
        Text = "STR_MAR_beer";
        NoLicenseCost = 500;
    };

    class whiskey {
        MaterialsReq[] = {{"barley", 1},{"yeast", 1}};
        MaterialsGive[] = {{"whiskey",1}};
        Text = "STR_MAR_whiskey";
        NoLicenseCost = 500;
    };

    class moonshine {
        MaterialsReq[] = {{"corn", 1},{"yeast", 1}};
        MaterialsGive[] = {{"moonshine",1}};
        Text = "STR_MAR_moonshine";
        NoLicenseCost = 600;
    };
};
