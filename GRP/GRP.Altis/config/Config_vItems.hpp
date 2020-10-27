/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*/
class VirtualShops {
    //Virtual Shops
    class market {
        name = "STR_Shops_Market";
        side = "";
        conditions = "";
        items[] = {"waterBottle", "rabbit", "apple", "drozdze", "redgull", "bandages", "tbacon", "pickaxe", "toolkit", "fuelFull", "peach", "storagesmall", "storagebig"};
    };

    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "bandages", "morphine", "pawulon", "medkit", "toolkit", "fuelFull", "peach", "defibrillator" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        conditions = "license_civ_rebel || license_civ_mafia || license_civ_kartel";
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "lockpick", "lom", "bandages", "zipties", "blindfold", "pickaxe", "toolkit", "fuelFull", "peach", "blastingcharge", "drugTable" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "lockpick", "zipties", "blindfold", "pickaxe", "toolkit", "fuelFull", "peach"};
    };

    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        conditions = "";
        items[] = { "turtle_soup", "turtle_raw" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        conditions = "";
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        conditions = "";
        items[] = { "coffee", "donuts", "redgull", "toolkit", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        conditions = "license_civ_mafia || license_civ_kartel";
        items[] = { "cocaine_processed", "heroin_processed", "marijuana", "meth" };
    };

    class drugdealer_bieda {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        conditions = "";
        items[] = { "marijuana" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        conditions = "";
        items[] = { "oil_processed", "pickaxe", "fuelFull" };
    };

    class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "civ";
        conditions = "";
        items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
    };

    class glass {
        name = "STR_Shops_Glass";
        side = "civ";
        conditions = "";
        items[] = { "glass" };
    };

    class iron  {
        name = "STR_Shops_Minerals";
        side = "civ";
        conditions = "";
        items[] = { "iron_refined", "copper_refined" };
    };

    class diamond {
        name = "STR_Shops_Diamond";
        side = "civ";
        conditions = "";
        items[] = { "diamond_uncut", "diamond_cut" };
    };

    class salt {
        name = "STR_Shops_Salt";
        side = "civ";
        conditions = "";
        items[] = { "salt_refined" };
    };

    class cement {
        name = "STR_Shops_Cement";
        side = "civ";
        conditions = "";
        items[] = { "cement" };
    };

    class wine {
        name = "STR_MAR_wine_trader";
        side = "civ";
        conditions = "";
        items[] = { "wine" };
    };

    class silver {
        name = "STR_MAR_silver_trader";
        side = "civ";
        conditions = "";
        items[] = { "silver" };
    };

    class jew {
        name = "STR_MAR_jew_trader";
        side = "civ";
        conditions = "";
        items[] = { "jew" };
    };

    class bar {
        name = "STR_MAR_bar";
        side = "";
        conditions = "";
        items[] = { "beer", "whiskey", "bimber", "beer_b", "whiskey_b" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        conditions = "";
        items[] = { "goldbar" };
    };

    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        conditions = "";
        items[] = { "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit", "apple", "redgull", "bandages", "morphine", "toolkit", "goldbar", "fuelFull"};
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
    //Virtual Items
    
    class eq1 {
        variable = "eq1";
        displayName = "STR_Item_eq1";
        weight = 5;
        buyPrice = 500000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };
    
    class lom {
        variable = "lom";
        displayName = "STR_Item_lom";
        weight = 15;
        buyPrice = 50000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\lom.paa";
    };

    class medkit {
        variable = "medkit";
        displayName = "STR_Item_medkit";
        weight = 15;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "\a3\weapons_f\items\data\UI\gear_medkit_ca.paa";
    };
    //Misc
    class drugTable {
        variable = "drugTable";
        displayName = "STR_Item_drugTable";
        weight = 15;
        buyPrice = 35000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "";
        //icon = "\GRP\icons\ziptie.paa";
    };//here

    class pseudo {
        variable = "pseudo";
        displayName = "STR_Item_pseudo";
        weight = 15;
        buyPrice = 20000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\pseudo.paa";
    };

    class amfetamina {
        variable = "amfetamina";
        displayName = "STR_Item_amfetamina";
        weight = 15;
        buyPrice = 20000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\amfetamina.paa";
    };

    class pawulon {
        variable = "pawulon";
        displayName = "STR_Item_pawulon";
        weight = 0;
        buyPrice = 100;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\pawulon.paa";
    };

    class morphine {
        variable = "morphine";
        displayName = "STR_Item_morphine";
        weight = 0;
        buyPrice = 100;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "\GRP\icons\morphine.paa";
    };

    class bandages {
        variable = "bandages";
        displayName = "STR_Item_bandages";
        weight = 0;
        buyPrice = 50;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "\GRP\icons\ico_bandages.paa";
    };

    class zipties {
        variable = "zipties";
        displayName = "STR_Item_ZipTies";
        weight = 0;
        buyPrice = 1500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\ziptie.paa";
    };
	
	class blindfold {
        variable = "blindfold";
        displayName = "STR_Item_Blindfold";
        weight = 0;
        buyPrice = 1000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "\GRP\icons\blindfold.paa";
    };

    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_pickaxe.paa";
    };

    class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 400;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_defibrillator.paa";
    };

    class toolkit {
        variable = "toolkit";
        displayName = "STR_Item_Toolkit";
        weight = 4;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "\a3\weapons_f\items\data\UI\gear_toolkit_ca.paa";
    };

    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_fuelEmpty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 5;
        buyPrice = 1000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 10;
        buyPrice = 2500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 1500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 10;
        buyPrice = -1;
        sellPrice = 95000;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\bag.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 15;
        buyPrice = 250000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\laptop.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 250000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_boltCutter.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 2500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 75000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 150000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_storageBig.paa";
    };

    //Mined Items
    class meth {
        variable = "meth";
        displayName = "STR_Item_meth";
        weight = 6;
        buyPrice = -1;
        sellPrice = 8000;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\meta.paa";
    };

    class corn {
        variable = "corn";
        displayName = "STR_Item_corn";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\kukurydza.paa";
    };

    class cornP {
        variable = "cornP";
        displayName = "STR_Item_cornP";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\zacier.paa";
    };
    /*  rzeczy do alkoholi */
    class bimber {
        variable = "bimber";
        displayName = "STR_Item_bimber";
        weight = 3;
        buyPrice = -1;
        sellPrice = 2250;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\bimber_beczka.paa";
    };

    class zboze {
        variable = "zboze";
        displayName = "STR_Item_zboze";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\zboze.paa";
    };

    class whiskey {
        variable = "whiskey";
        displayName = "STR_Item_whiskey";
        weight = 4;
        buyPrice = -1;
        sellPrice = 1400;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\whisky_beczka.paa";
    };
    class whiskey_b {
        variable = "whiskey_b";
        displayName = "STR_Item_whiskey_b";
        weight = 3;
        buyPrice = 1400;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\whisky.paa";
    };

    class drozdze {
        variable = "drozdze";
        displayName = "STR_Item_drozdze";
        weight = 1;
        buyPrice = 10;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\drozdze.paa";
    };

    class chmiel {
        variable = "chmiel";
        displayName = "STR_Item_chmiel";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\chmiel.paa";
    };

    class beer {
        variable = "beer";
        displayName = "STR_Item_beer";
        weight = 3;
        buyPrice = -1;
        sellPrice = 700;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\piwo_beczka.paa";
    };
    class beer_b {
        variable = "beer_b";
        displayName = "STR_Item_beer_b";
        weight = 3;
        buyPrice = 700;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\piwo.paa";
    };

    class jew {
        variable = "jew";
        displayName = "STR_Item_jew";
        weight = 6;
        buyPrice = -1;
        sellPrice = 4500;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\jew.paa";
    };

    class silverU {
        variable = "silverU";
        displayName = "STR_Item_silverU";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
        //icon = "GRP\icons\ico_grapes.paa";
    };

    class silver {
        variable = "silver";
        displayName = "STR_Item_silver";
        weight = 3;
        buyPrice = -1;
        sellPrice = 1800;
        illegal = false;
        edible = -1;
        icon = "";
        //icon = "GRP\icons\ico_grapes.paa";
    };

    class grapes {
        variable = "grapes";
        displayName = "STR_Item_grapes";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
        //icon = "GRP\icons\ico_grapes.paa";
    };

    class wine {
        variable = "wine";
        displayName = "STR_Item_wine";
        weight = 3;
        buyPrice = -1;
        sellPrice = 800;
        illegal = false;
        edible = -1;
        ico = "";
        //icon = "GRP\icons\ico_wine.paa";
    };

    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 7;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3200;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_oilProcessed.paa";
    };

    class copper_unrefined {
        variable = "copperUnrefined";
        displayName = "STR_Item_CopperOre";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_copperOre.paa";
    };

    class copper_refined {
        variable = "copperRefined";
        displayName = "STR_Item_CopperIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 480;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_copper.paa";
    };

    class iron_unrefined {
        variable = "ironUnrefined";
        displayName = "STR_Item_IronOre";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_ironOre.paa";
    };

    class iron_refined {
        variable = "ironRefined";
        displayName = "STR_Item_IronIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 570;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_iron.paa";
    };

    class salt_unrefined {
        variable = "saltUnrefined";
        displayName = "STR_Item_Salt";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_saltUnprocessed.paa";
    };

    class salt_refined {
        variable = "saltRefined";
        displayName = "STR_Item_SaltR";
        weight = 1;
        buyPrice = -1;
        sellPrice = 800;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_saltProcessed.paa";
    };

    class sand {
        variable = "sand";
        displayName = "STR_Item_Sand";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_sand.paa";
    };

    class glass {
        variable = "glass";
        displayName = "STR_Item_Glass";
        weight = 1;
        buyPrice = -1;
        sellPrice = 220;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_glass.paa";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 4;
        buyPrice = -1;
        sellPrice = 750;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 2;
        buyPrice = -1;
        sellPrice = 2125;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_diamondCut.paa";
    };

    class rock {
        variable = "rock";
        displayName = "STR_Item_Rock";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_rock.paa";
    };

    class cement {
        variable = "cement";
        displayName = "STR_Item_CementBag";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1950;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_cement.paa";
    };

    //Drugs
    class heroin_unprocessed {
        variable = "heroinUnprocessed";
        displayName = "STR_Item_HeroinU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_heroinUnprocessed.paa";
        processedItem = "heroin_processed";
    };

    class heroin_processed {
        variable = "heroinProcessed";
        displayName = "STR_Item_HeroinP";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3500;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_heroinProcessed.paa";
    };

    class cannabis {
        variable = "cannabis";
        displayName = "STR_Item_Cannabis";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_cannabis.paa";
        processedItem = "marijuana";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_Item_Marijuana";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1550;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_marijuana.paa";
    };

    class cocaine_unprocessed {
        variable = "cocaineUnprocessed";
        displayName = "STR_Item_CocaineU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_cocaineUnprocessed.paa";
        processedItem = "cocaine_processed";
    };

    class cocaine_processed {
        variable = "cocaineProcessed";
        displayName = "STR_Item_CocaineP";
        weight = 3;
        buyPrice = -1;
        sellPrice = 4200;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_cocaineProcessed.paa";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 100;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 10;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 10;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_waterBottle.paa";
    };

    //Food
    class apple {
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 1;
        buyPrice = 100;
        sellPrice = -1;
        illegal = false;
        edible = 10;
        icon = "GRP\icons\ico_apple.paa";
    };

    class peach {
        variable = "peach";
        displayName = "STR_Item_Peach";
        weight = 1;
        buyPrice = 100;
        sellPrice = 80;
        illegal = false;
        edible = 10;
        icon = "GRP\icons\ico_peach.paa";
    };

    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 100;
        sellPrice = -1;
        illegal = false;
        edible = 40;
        icon = "GRP\icons\ico_tBacon.paa";
    };

    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 10;
        sellPrice = -1;
        illegal = false;
        edible = 30;
        icon = "GRP\icons\ico_donuts.paa";
    };

    class rabbit_raw {
        variable = "rabbitRaw";
        displayName = "STR_Item_RabbitRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_rabbitRaw.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = 150;
        sellPrice = -1;
        illegal = false;
        edible = 20;
        icon = "GRP\icons\ico_rabbit.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_salemaRaw.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 1;
        buyPrice = 75;
        sellPrice = -1;
        illegal = false;
        edible = 30;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_ornateRaw.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 1;
        buyPrice = 175;
        sellPrice = -1;
        illegal = false;
        edible = 25;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_mackerelRaw.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = 250;
        sellPrice = -1;
        illegal = false;
        edible = 30;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_tunaRaw.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 3;
        buyPrice = 1250;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_mulletRaw.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = 600;
        sellPrice = -1;
        illegal = false;
        edible = 80;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_catsharkRaw.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 3;
        buyPrice = 750;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_cookedFish.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = true;
        edible = -1;
        icon = "GRP\icons\ico_turtleRaw.paa";
    };

    class turtle_soup {
        variable = "turtleSoup";
        displayName = "STR_Item_TurtleSoup";
        weight = 2;
        buyPrice = -1;
        sellPrice = 750;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_turtleSoup.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_wholeChickenRaw.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 1;
        buyPrice = 115;
        sellPrice = -1;
        illegal = false;
        edible = 65;
        icon = "GRP\icons\ico_wholeChicken.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_chickenDrumstickRaw.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 115;
        buyPrice = 90;
        sellPrice = -1;
        illegal = false;
        edible = 45;
        icon = "GRP\icons\ico_chickenDrumstick.paa";
    };

    class sheep_raw {
        variable = "sheepRaw";
        displayName = "STR_Item_SheepRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_lambChopRaw.paa";
    };

    class sheep {
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 2;
        buyPrice = 155;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_lambChop.paa";
    };

    class goat_raw {
        variable = "goatRaw";
        displayName = "STR_Item_GoatRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 115;
        illegal = false;
        edible = -1;
        icon = "GRP\icons\ico_muttonLegRaw.paa";
    };

    class goat {
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 2;
        buyPrice = 175;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "GRP\icons\ico_muttonLeg.paa";
    };
};
