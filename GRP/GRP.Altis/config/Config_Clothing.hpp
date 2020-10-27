/*
*    ARRAY FORMAT:
*        0: STRING (Classname)
*        1: STRING (Display Name, leave as "" for default)
*        2: SCALAR (Price)
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*   Clothing classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
*   Backpacks/remaining classnames can be found here (TIP: Search page for "pack"): https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EMPTY
*
*/
class Clothing {
    class bruce {
        title = "STR_Shops_C_Bruce";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Poloshirt_stripped", "", 125, "" },
            { "U_C_Poloshirt_redwhite", "", 150, "" },
            { "U_C_Poloshirt_salmon", "", 175, "" },
            { "U_C_Poloshirt_blue", "", 250, "" },
            { "U_C_Poloshirt_burgundy", "", 275, "" },
            { "U_C_Poloshirt_tricolour", "", 350, "" },
            { "U_C_Poor_2", "", 250, "" },
            { "U_IG_Guerilla2_2", "", 400, "" },
            { "U_IG_Guerilla3_1", "", 435, "" },
            { "U_OrestesBody", "", 400, "" },
            { "U_IG_Guerilla2_3", "", 400, "" },
            { "U_C_HunterBody_grn", "", 300, "" },
            { "U_C_WorkerCoveralls", "", 200, "" },
            { "U_NikosBody", "", 400, "" },
            { "U_NikosAgedBody", $STR_C_Civ_Niko, 500, "" },
            { "U_C_Man_casual_1_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_2_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_3_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_4_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_5_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_6_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_1_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_2_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_3_F", "", 5000, "" }, //Apex DLC
			{ "TRYK_shirts_Floral1", "", 200, "" },
			{ "TRYK_shirts_Floral2", "", 200, "" },
			{ "TRYK_shirts_Floral3", "", 200, "" },
			{ "TRYK_shirts_Floral4", "", 200, "" },
			{ "TRYK_shirts_Floral6", "", 200, "" },
			{ "TRYK_shirts_Floral8", "", 200, "" },
			{ "TRYK_shirts_Plaid1", "", 200, "" },
			{ "TRYK_shirts_Plaid2", "", 200, "" },
			{ "TRYK_shirts_Plaid3", "", 200, "" },
			{ "TRYK_shirts_Plaid4", "", 200, "" },
			{ "TRYK_shirts_Plaid5", "", 200, "" },
			{ "TRYK_shirts_Plaid6", "", 200, "" },
			{ "TRYK_U_B_BLK_tan_Rollup_CombatUniform", "", 250, "" },
			{ "TRYK_U_B_wh_blk_Rollup_CombatUniform", "", 250, "" },
			{ "TRYK_U_B_wh_tan_Rollup_CombatUniform", "", 250, "" },
			{ "TRYK_shirts_DENIM_BK", "", 350, "" },
			{ "TRYK_shirts_DENIM_BL", "", 350, "" },
			{ "TRYK_shirts_DENIM_R", "", 350, "" },
			{ "TRYK_shirts_DENIM_RED2", "", 350, "" },
			{ "TRYK_shirts_DENIM_WH", "", 350, "" },
			{ "TRYK_shirts_DENIM_od_Sleeve", "", 350, "" },
			{ "TRYK_shirts_DENIM_BL_Sleeve", "", 350, "" },
			{ "TRYK_shirts_DENIM_R_Sleeve", "", 350, "" },
			{ "TRYK_shirts_DENIM_RED2_Sleeve", "", 350, "" },
			{ "TRYK_shirts_DENIM_WH_Sleeve", "", 350, "" },
			{ "TRYK_shirts_BLK_PAD_BK", "", 350, "" },
			{ "TRYK_shirts_PAD_BL", "", 350, "" },
			{ "TRYK_shirts_BLK_PAD_BLW", "", 350, "" },
			{ "TRYK_shirts_OD_PAD_BLU3", "", 350, "" },
			{ "TRYK_shirts_BLK_PAD", "", 350, "" },
			{ "TRYK_shirts_BLK_PAD_RED2", "", 350, "" },
			{ "TRYK_U_pad_hood_Blod", "", 350, "" },
			{ "TRYK_U_pad_hood_Cl_blk", "", 350, "" },
			{ "TRYK_U_nohoodPcu_gry", "", 350, "" },
			{ "TRYK_U_pad_hood_odBK", "", 350, "" },
			{ "TRYK_U_denim_hood_blk", "", 350, "" },
			{ "TRYK_U_denim_hood_nc", "", 350, "" },
			{ "TRYK_U_denim_jersey_blk", "", 350, "" },
			{ "TRYK_U_denim_jersey_blu", "", 350, "" },
			{ "TRYK_T_camo_Wood_BG", "", 350, "" },
			{ "TRYK_T_camo_wood_marpat", "", 350, "" },
			{ "TRYK_U_B_PCUHsW5", "", 350, "" },
			{ "TRYK_U_B_PCUHsW2", "", 350, "" },
			{ "TRYK_U_B_PCUHsW", "", 350, "" },
			{ "TRYK_U_B_PCUHsW6", "", 350, "" },
			{ "TRYK_U_B_PCUHsW4", "", 350, "" },
			{ "TRYK_U_B_ARO1_BLK_CombatUniform", "", 550, "" },
			{ "TRYK_U_B_ARO1_CBR_R_CombatUniform", "", 550, "" },
			{ "TRYK_U_B_ARO1_GR_CombatUniform", "", 550, "" },
			{ "TRYK_U_B_ARO1_GRY_CombatUniform", "", 550, "" },
			{ "TRYK_C_AOR2_T", "", 550, "" },
			{ "TRYK_U_B_PCUHsW3", "", 550, "" },
			{ "TRYK_U_B_PCUHsW7", "", 550, "" },
			{ "TRYK_U_B_BLKOCP_R_CombatUniformTshirt", "", 550, "" },
			{ "TRYK_U_B_BLKTANR_CombatUniformTshirt", "", 550, "" },
			{ "TRYK_U_B_BLTAN_T", "", 550, "" },
			{ "TRYK_U_B_BLK3CD", "", 550, "" },
			{ "TRYK_U_B_BLKTAN", "", 550, "" },
			{ "TRYK_U_B_BLK_OD", "", 550, "" },
			{ "TRYK_U_B_OD_BLK_2", "", 550, "" },
			{ "TRYK_U_B_ODTAN", "", 550, "" },
			{ "TRYK_U_B_BLK_TAN_2", "", 550, "" },
			{ "TRYK_U_B_fleece", "", 550, "" },
			{ "TRYK_U_B_GRTANR_CombatUniformTshirt", "", 550, "" },
			{ "TRYK_OVERALL_SAGE_BLKboots_nk_blk2", "", 550, "" },
			{ "TRYK_OVERALL_SAGE", "", 550, "" },
			{ "TRYK_U_B_OD_OD_R_CombatUniform", "", 550, "" },
			{ "TRYK_U_Bts_PCUs", "", 550, "" },
			{ "TRYK_U_Bts_UCP_PCUs", "", 550, "" },
			{ "TRYK_U_B_PCUHs", "", 550, "" },
			{ "TRYK_U_B_PCUODHs", "", 550, "" },
			{ "TRYK_U_B_PCUGs_BLK_R", "", 550, "" },
			{ "TRYK_U_B_PCUGs_BLK", "", 550, "" },
			{ "TRYK_U_B_PCUGs_gry", "", 550, "" },
			{ "EF_HM_B1", "", 250, "" },
			{ "EF_HM_BL1", "", 250, "" },
			{ "EF_HM_SG1", "", 250, "" },
			{ "EF_HM_B2", "", 250, "" },
			{ "EF_HM_BL2", "", 250, "" },
			{ "EF_M_jkt22", "", 250, "" },
			{ "EF_M_jkt1", "", 250, "" },
			{ "EF_M_jkt2_3", "", 250, "" },
			{ "EF_M_jkt1_3", "", 250, "" },
			{ "EF_M_jkt2_4", "", 250, "" },
			{ "EF_HM_LPBW", "", 250, "" },
			{ "EF_HM_LPB", "", 250, "" },
			{ "EF_HM_LPBW2", "", 250, "" },
			{ "EF_HM_LPB2", "", 250, "" },
			{ "EF_HM_LPBL2", "", 250, "" }			
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 120, "" },
            { "H_Bandanna_surfer", "", 130, "" },
            { "H_Bandanna_khk", "", 145, "" },
            { "H_Cap_blu", "", 150, "" },
            { "H_Cap_grn", "", 150, "" },
            { "H_Cap_grn_BI", "", 150, "" },
            { "H_Cap_oli", "", 150, "" },
            { "H_Cap_red", "", 150, "" },
            { "H_Cap_tan", "", 150, "" },
            { "H_Helmet_Skate", "", 150, "" }, //Apex DLC
            { "H_Bandanna_gry", "", 150, "" },
            { "H_Bandanna_sgg", "", 160, "" },
            { "H_Bandanna_cbr", "", 165, "" },
            { "H_BandMask_blk", $STR_C_Civ_BandMask, 300, "" },
            { "H_Booniehat_tan", "", 425, "" },
            { "H_Booniehat_grn", "", 425, "" },
			{ "TRYK_H_headsetcap_blk_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_od_Glasses", "", 100, "" },
			{ "TRYK_R_CAP_BLK", "", 100, "" },
			{ "TRYK_R_CAP_TAN", "", 100, "" },
			{ "TRYK_R_CAP_OD_US", "", 100, "" },
			{ "TRYK_r_cap_blk_Glasses", "", 100, "" },
			{ "TRYK_r_cap_od_Glasses", "", 100, "" },
			{ "TRYK_r_cap_tan_Glasses", "", 100, "" },
			{ "TRYK_UA_CAP2R", "", 100, "" },
			{ "TRYK_UA_CAP_GR2R", "", 100, "" },
			{ "TRYK_UA_CAP_tan2R", "", 100, "" },
			{ "TRYK_UA_CAP_U2R", "", 100, "" },
			{ "TRYK_UA_CAP2", "", 100, "" },
			{ "TRYK_UA_CAP_GR2", "", 100, "" },
			{ "TRYK_UA_CAP_tan2", "", 100, "" },
			{ "TRYK_UA_CAP_U2", "", 100, "" },
			{ "EF_wig_DHB", "", 50, "" },
			{ "EF_Long_wig_B", "", 50, "" },
			{ "EF_Punk_wig_B", "", 50, "" },
			{ "EF_wig_SB", "", 50, "" },
			{ "EF_wig_VSB", "", 50, "" },
			{ "EF_Punk_wig_SB3", "", 50, "" },
			{ "EF_Punk_wig_SB", "", 50, "" },
			{ "EF_Long_wig_BLE", "", 50, "" },
			{ "EF_Punk_wig_BLE", "", 50, "" },
			{ "EF_wig_SBLE", "", 50, "" },
			{ "EF_wig_VSBLE", "", 50, "" },
			{ "EF_Punk_wig_SBLE3", "", 50, "" },
			{ "EF_Punk_wig_SBLE", "", 50, "" },
			{ "EF_Long_wig_BL", "", 50, "" },
			{ "EF_Punk_wig_BL", "", 50, "" },
			{ "EF_wig_SBL", "", 50, "" },
			{ "EF_wig_VSBL", "", 50, "" },
			{ "EF_Punk_wig_SBL3", "", 50, "" },
			{ "EF_Punk_wig_SBL", "", 50, "" },
			{ "EF_wig_VSSV", "", 50, "" },
			{ "EF_wig_SSV", "", 50, "" },
			{ "EF_Punk_wig_SV", "", 50, "" },
			{ "EF_Long_wig_SV", "", 50, "" },
			{ "EF_Punk_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_SGL3", "", 50, "" },
			{ "EF_wig_VSGL", "", 50, "" },
			{ "EF_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_GL", "", 50, "" },
			{ "EF_Long_wig_GL", "", 50, "" },
			{ "EF_Punk_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_SBW3", "", 50, "" },
			{ "EF_wig_VSBW", "", 50, "" },
			{ "EF_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_BW", "", 50, "" },
			{ "EF_Long_wig_BW", "", 50, "" },
			{ "EF_wig_DHBR", "", 50, "" },
			{ "H_Beret_blk", "", 100, "" },
			{ "H_Booniehat_dgtl", "", 100, "" },
			{ "H_Cap_blk_ION", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Shades_Green", "", 20, "" },
            { "G_Shades_Red", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Greenblack", "", 25, "" },
            { "G_Sport_Red", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
            { "G_Aviator", "", 100, "" },
            { "G_Combat", "", 125, "" },
            { "G_Lady_Mirror", "", 150, "" },
            { "G_Lady_Dark", "", 150, "" },
            { "G_Lady_Blue", "", 150, "" },
            { "G_Balaclava_oli", "", 100, "" },
            { "G_Balaclava_TI_tna_F", "", 100, "" },
            { "G_Balaclava_blk", "", 100, "" },
            { "G_Bandanna_beast", "", 100, "" },
            { "G_Bandanna_blk", "", 100, "" },
            { "TRYK_Shemagh_WH", "", 100, "" },
            { "TRYK_Shemagh_G", "", 100, "" },
            { "TRYK_Shemagh", "", 100, "" },
            { "TRYK_kio_balaclava_BLK", "", 100, "" },
            { "TRYK_kio_balaclavas", "", 100, "" },
            { "TRYK_kio_balaclava_WH", "", 100, "" },
            { "G_Bandanna_khk", "", 250, "" },
            { "G_Bandanna_oli", "", 250, "" },
            { "G_Bandanna_tan", "", 250, "" },
            { "G_Bandanna_blk", "", 250, "" },
            { "TRYK_Shemagh", "", 250, "" },
			{ "TRYK_Beard", "", 50, "" },
			{ "TRYK_Beard_BW", "", 50, "" },
			{ "TRYK_Beard_BK", "", 50, "" },
			{ "TRYK_Beard_Gr", "", 50, "" },
			{ "TRYK_Beard2", "", 50, "" },
			{ "TRYK_Beard_BW2", "", 50, "" },
			{ "TRYK_Beard_BK2", "", 50, "" },
			{ "TRYK_Beard_Gr2", "", 50, "" },
			{ "TRYK_Beard3", "", 50, "" },
			{ "TRYK_Beard_BW3", "", 50, "" },
			{ "TRYK_Beard_BK3", "", 50, "" },
			{ "TRYK_Beard_Gr3", "", 50, "" },
			{ "TRYK_Beard4", "", 50, "" },
			{ "TRYK_Beard_BW4", "", 50, "" },
			{ "TRYK_Beard_BK4", "", 50, "" },
			{ "TRYK_Beard_Gr4", "", 50, "" }
			
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "TAC_BP_buttB_B", "", 500, "" },
			{ "TAC_BP_buttB_Khaki", "", 500, "" },
			{ "TAC_MTAP_BK2", "", 500, "" },
			{ "TAC_MTAP_CY2", "", 500, "" },
			{ "TAC_BP_KAR_B", "", 500, "" },
            { "B_OutdoorPack_blk", "", 500, "" },
            { "B_AssaultPack_khk", "", 2000, "" },
            { "B_AssaultPack_dgtl", "", 2000, "" },
            { "B_AssaultPack_rgr", "", 2000, "" },
            { "B_AssaultPack_sgg", "", 2000, "" },
            { "B_AssaultPack_blk", "", 2000, "" },
            { "B_AssaultPack_cbr", "", 2000, "" },
            { "B_AssaultPack_mcamo", "", 2000, "" },
            { "B_AssaultPack_tna_f", "", 2000, "" }, //Apex DLC
            { "B_TacticalPack_oli", "", 2500, "" },
            { "B_Kitbag_mcamo", "", 3500, "" },
            { "B_Kitbag_sgg", "", 3500, "" },
            { "B_Kitbag_cbr", "", 3500, "" },
            { "B_FieldPack_blk", "", 5000, "" },
            { "B_FieldPack_ocamo", "", 5000, "" },
            { "B_FieldPack_oucamo", "", 5000, "" },
            { "B_FieldPack_ghex_f", "", 5000, "" }, //Apex DLC
            { "B_Bergen_sgg", "", 6500, "" },
            { "B_Bergen_mcamo", "", 6500, "" },
            { "B_Bergen_rgr", "", 6500, "" },
            { "B_Bergen_blk", "", 6500, "" },
            { "B_Carryall_ocamo", "", 7500, "" },
            { "B_Carryall_oucamo", "", 7500, "" },
            { "B_Carryall_mcamo", "", 7500, "" },
            { "B_Carryall_oli", "", 7500, "" },
            { "B_Carryall_khk", "", 7500, "" },
            { "B_Carryall_cbr", "", 7500, "" },
            { "TRYK_B_Alicepack", "", 7500, "" },
            { "TRYK_B_Coyotebackpack", "", 6500, "" },
            { "TRYK_B_Coyotebackpack_OD", "", 6500, "" },
			{ "koilbp_20", "", 500, "" },
			{ "koilbp_19", "", 500, "" },
			{ "koilADC", "", 500, "" },
			{ "koilbp_2", "", 500, "" },
			{ "koilaiden", "", 500, "" },
			{ "koilbender_1", "", 500, "" },
			{ "koilbender_2", "", 500, "" },
			{ "koilbp_10", "", 500, "" },
			{ "koilbp_11", "", 500, "" },
			{ "koilbp_6", "", 500, "" },
			{ "koilbp_5", "", 500, "" },
			{ "koilbp_12", "", 500, "" },
			{ "koilbp_18", "", 500, "" },
			{ "koilbp_17", "", 500, "" },
			{ "koilbp_7", "", 500, "" },
			{ "koilturtles_1", "", 500, "" },
			{ "koildarth", "", 500, "" },
			{ "koilsponge_1", "", 500, "" },
			{ "koilspeckators", "", 500, "" },
			{ "koilsmashing", "", 500, "" },
			{ "koilsparta_1", "", 500, "" },
			{ "koilbp_16", "", 500, "" },
			{ "koilcat", "", 500, "" },
			{ "koilpumpkin_1", "", 500, "" },
			{ "koilbp_15", "", 500, "" },
			{ "koilpanda", "", 500, "" },
			{ "koilbp_14", "", 500, "" },
			{ "koilbp_13", "", 500, "" },
			{ "koilbp_1", "", 500, "" },
			{ "kaelmonty2", "", 500, "" },
			{ "kaelmonty", "", 500, "" },
			{ "kaelmario", "", 500, "" },
			{ "koiljoker_1", "", 500, "" },
			{ "koilbp_9", "", 500, "" },
			{ "koilhulk_1", "", 500, "" },
			{ "koilgucci", "", 500, "" },
			{ "koilgraf_3", "", 500, "" },
			{ "koilgraf_2", "", 500, "" },
			{ "koilgraf_1", "", 500, "" },
			{ "koilgoonsquad", "", 500, "" },
			{ "koilkatie", "", 500, "" },
			{ "koilbp_4", "", 500, "" },
			{ "koilbp_8", "", 500, "" },
			{ "koileminem_1", "", 500, "" },
			{ "koileagle", "", 500, "" },
			{ "koilcint_1", "", 500, "" },
			{ "koilbp_3", "", 500, "" }
        };
    };

    class cop {
        title = "STR_Shops_C_Police";
        conditions = "";
        side = "cop";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "grp_so_khaki_deputyI", "", 10, "call life_coplevel >= 1" },
			{ "grp_so_khaki_deputyII", "", 10, "call life_coplevel >= 2" },
            { "grp_so_khaki_deputyIII", "", 100, "call life_coplevel >= 3" },
            { "grp_so_khaki_sergeant", "", 100, "call life_coplevel >= 4" },
			{ "grp_so_tan_masterSergeant", "", 100, "call life_coplevel >= 5" },
			{ "grp_so_tan_lieutenant", "", 100, "call life_coplevel >= 6" },
			{ "grp_so_tan_capitan", "", 100, "call life_coplevel >= 7" },
			{ "grp_so_tan_divisionChief", "", 100, "call life_coplevel >= 8" },
            { "grp_so_tan_underSheriff", "", 10, "call life_coplevel >= 9" },
			{ "grp_so_tan_Sheriff", "", 10, "call life_coplevel >= 10" },
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_police", "", 25, "" },
            { "H_Booniehat_mcamo", "", 120, "" },
			{ "H_MilCap_tna_F", "", 100, "" },
            { "m_sheriffhat", "", 75, "call life_coplevel >= 5" },
            { "H_Beret_blk_POLICE", "", 50, "" },
            { "H_MilCap_mcamo", "", 100, "" },
            { "H_MilCap_gen_F", "", 100, "" }, 
            { "H_MilCap_tna_F", "", 100, "" }, 
            { "H_MilCap_oucamo", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Squares", "", 10, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Sport_Blackred", "", 20, "" },
            { "G_Sport_Checkered", "", 20, "" },
            { "G_Sport_Blackyellow", "", 20, "" },
            { "G_Sport_BlackWhite", "", 20, "" },
            { "G_Shades_Black", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Combat", "", 55, "" },
            { "G_Aviator", "", 100, "" },
            { "G_Lady_Mirror", "", 150, "" },
            { "G_Lady_Dark", "", 150, "" },
            { "G_Lady_Blue", "", 150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "grp_dragonfire_so_vest2", "", 100, "call life_coplevel >= 1" },
            { "grp_dragonfire_so_vest3", "", 100, "call life_coplevel >= 2" },
            //{ "TAC_Sheriff_BA_OD", "Kamizelka Odblaskowa", 100, "call life_coplevel >= 1" }, 
			{ "TAC_PBDFG2C_B_1", "", 100, "call life_coplevel >= 4" }, 
            { "grp_sheriff_hv_1", "", 100, "call life_coplevel >= 5" }, 
            { "grp_sheriff_hv_2", "", 100, "call life_coplevel >= 5" }, 
			{ "TAC_PBDFG2CPSRF_RG_1", "", 100, "call life_coplevel >= 7" }, 
			{ "TAC_PBDFG2SACSRF_RG_1", "", 100, "call life_coplevel >= 9" }, 
            { "VSM_MBSS_PACA_WTF", "", 100, "call life_coplevel >= 10" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			//{ "TRYK_B_Carryall_blk", "Niewidzialny Plecak WIP", 50, "" },
			{ "D_EF_BLT_M1", "Pas", 50, "" },
			{ "D_EF_BLT_M1B", "Pas z odznaka", 50, "" }
        };
    };

    class dive {
        title = "STR_Shops_C_Diving";
        conditions = "license_civ_dive";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_Wetsuit", "", 2000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Diving", "", 500, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_RebreatherB", "", 5000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        conditions = "license_civ_gun";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_Rangemaster_belt", "", 4900, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class czarny_rynek {
        title = "STR_Shops_C_Czarny_Rynek";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "U_BG_Guerrilla_6_1", "", 1000, "" },
			{ "U_BG_Guerrilla1_1", "", 1000, "" },
			{ "U_BG_Guerrilla2_2", "", 1000, "" },
			{ "U_BG_Guerrilla2_1", "", 1000, "" },
			{ "U_BG_Guerrilla2_3", "", 1000, "" },
			{ "U_I_C_Soldier_Para_2_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_3_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_1_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_4_F", "", 1000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "TRYK_H_Helmet_ACU", "", 15000, "" },
			{ "TRYK_H_Helmet_WOOD", "", 15000, "" },
			{ "TRYK_H_Helmet_CC", "", 15000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
			{ "TRYK_Shemagh_WH", "", 25, "" },
			{ "TRYK_Shemagh_G", "", 25, "" },
			{ "TRYK_Shemagh", "", 25, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "TAC_El_RRV1_Coyote", "", 30000, "" },
			{ "TAC_El_RRV1_B", "", 30000, "" },
			{ "TAC_V_tacSVD_BK", "", 4000, "" },
			{ "TAC_V_tacSVD_OD", "", 4000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "B_Carryall_oli", "", 5000, "" },
			{ "TRYK_B_Coyotebackpack_OD", "", 5000, "" },
			{ "TRYK_B_Alicepack", "", 5000, "" }
        };
    };

    class gang_clothing {
        title = "STR_Shops_C_Gang";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "U_I_C_Soldier_Para_2_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_3_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_1_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_4_F", "", 1000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "TRYK_H_Helmet_MARPAT_Wood", "", 8000, "" },
			{ "TRYK_H_Helmet_MARPAT_Desert2", "", 8000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "TAC_LBT_H2_Khaki", "", 25000, "" },
			{ "TAC_LBT_H4_OD", "", 25000, "" },
			{ "TAC_El_RRV1_B", "", 30000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "B_Carryall_oli", "", 5000, "" },
			{ "TRYK_B_Coyotebackpack_OD", "", 5000, "" },
			{ "TRYK_B_Alicepack", "", 5000, "" }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        conditions = "";
        side = "med";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_Rangemaster", $STR_C_EMS_uniforms, 50, "" },
			{ "U_C_Paramedic_01_F", "", 10, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_red", "", 10, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Blue", "", 10, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_Kitbag_sgg", $STR_C_EMS_backpacks, 3000, "" }
        };
    };

    class reb {
        title = "STR_Shops_C_Rebel";
        conditions = "license_civ_rebel";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_IG_Guerilla1_1", "", 1000, "" },
            { "U_I_G_Story_Protagonist_F", "", 1000, "" },
            { "U_I_G_resistanceLeader_F", "", 1000, "" },
            { "U_IG_leader", "", 1000, "" },
            { "TRYK_U_B_WDL_GRY_CombatUniform", "", 1000, "" },
            { "TRYK_U_B_NATO_UCP_GRY_CombatUniform", "", 1000, "" },
            { "TRYK_U_B_PCUODs	", "", 1000, "" },
			{ "U_BG_Guerrilla_6_1", "", 1000, "" },
			{ "U_BG_Guerrilla1_1", "", 1000, "" },
			{ "U_BG_Guerrilla2_2", "", 1000, "" },
			{ "U_BG_Guerrilla2_1", "", 1000, "" },
			{ "U_BG_Guerrilla2_3", "", 1000, "" },
			{ "U_I_C_Soldier_Para_2_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_3_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_1_F", "", 1000, "" },
			{ "U_I_C_Soldier_Para_4_F", "", 1000, "" },
			{ "TRYK_U_B_BLOD_T", "", 1000, "" },
			{ "TRYK_U_B_BLTAN_T", "", 1000, "" },
			{ "TRYK_U_B_C01_Tsirt", "", 1000, "" },
			{ "TRYK_U_B_WDL_GRY_CombatUniform", "", 1000, "" },
			{ "TRYK_U_B_NATO_UCP_GRY_CombatUniform", "", 1000, "" },
			{ "TRYK_U_B_PCUODs	", "", 1000, "" },
			{ "TRYK_U_B_AOR2_BLK_CombatUniform", "", 1000, "" },
			{ "TRYK_U_B_AOR2_GRY_CombatUniform", "", 1000, "" },
			{ "TRYK_U_B_AOR2_OD_CombatUniform", "", 1000, "" },
            { "TRYK_B_TRYK_3C_T", "", 1000, "" }
       
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 650, "" },
            { "H_ShemagOpen_khk", "", 800, "" },
            { "H_ShemagOpen_tan", "", 850, "" },
            { "H_Shemag_olive", "", 850, "" },
            { "H_HelmetO_ocamo", "", 8000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "TRYK_Shemagh_WH", "", 25, "" },
            { "TRYK_Shemagh_G", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "TRYK_Shemagh", "", 50, "" },
            { "G_Combat", "", 125, "" },
            { "G_Balaclava_blk", "", 150, "" },
            { "G_Balaclava_combat", "", 150, "" },
            { "G_Balaclava_lowprofile", "", 150, "" },
            { "G_Balaclava_oli", "", 150, "" },
            { "G_Bandanna_aviator", "", 150, "" },
            { "G_Bandanna_beast", "", 150, "" },
            { "G_Bandanna_blk", "", 150, "" },
            { "G_Bandanna_khk", "", 150, "" },
            { "G_Bandanna_oli", "", 150, "" },
            { "G_Bandanna_shades", "", 150, "" },
            { "G_Bandanna_sport", "", 150, "" },
            { "G_Bandanna_tan", "", 150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "TAC_LBT_H2_Khaki", "", 25000, "" },
			{ "TAC_LBT_H4_OD", "", 25000, "" },
			{ "TAC_El_RRV1_B", "", 30000, "" },
			{ "TAC_CR4_CY", "", 25000, "" },
			{ "TAC_CR4_B", "", 25000, "" },
            { "TAC_LBT_H2_B", "", 25000, "" },
            { "TAC_El_RRV1_Coyote", "", 25500, "" },
			{ "TAC_El_RRV1_B", "", 25500, "" },
			{ "TAC_V_tacSVD_BK", "", 10000, "" },
			{ "TAC_V_tacSVD_OD", "", 10000, "" },
			{ "TRYK_V_ArmorVest_Ranger_2", "", 25500, "" },
			{ "TAC_El_RRVCVH", "", 30000, "" },
            { "TAC_LBT_H4_OD", "", 30000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_OutdoorPack_blk", "", 200, "" },
            { "B_AssaultPack_khk", "", 200, "" },
            { "B_AssaultPack_dgtl", "", 200, "" },
            { "B_AssaultPack_rgr", "", 200, "" },
            { "B_AssaultPack_sgg", "", 200, "" },
            { "B_AssaultPack_blk", "", 200, "" },
            { "B_AssaultPack_cbr", "", 200, "" },
            { "B_AssaultPack_mcamo", "", 200, "" },
            { "B_TacticalPack_oli", "", 500, "" },
            { "B_Kitbag_mcamo", "", 500, "" },
            { "B_Kitbag_sgg", "", 500, "" },
            { "B_Kitbag_cbr", "", 500, "" },
            { "B_FieldPack_blk", "", 500, "" },
            { "B_FieldPack_ocamo", "", 500, "" },
            { "B_FieldPack_oucamo", "", 500, "" },
            { "B_Bergen_sgg", "", 500, "" },
            { "B_Bergen_mcamo", "", 500, "" },
            { "B_Bergen_rgr", "", 500, "" },
            { "B_Bergen_blk", "", 500, "" },
            { "B_Carryall_ocamo", "", 500, "" },
            { "B_Carryall_oucamo", "", 500, "" },
            { "B_Carryall_mcamo", "", 500, "" },
            { "B_Carryall_oli", "", 500, "" },
            { "B_Carryall_khk", "", 500, "" },
            { "B_Carryall_cbr", "", 500, "" }
        };
    };

    class kartel {
        title = "STR_MAR_kartel_clothing";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "HITMAN_47_SUIT", "", 2500, "" },
			{ "TRYK_U_B_wh_blk_Rollup_CombatUniform", "", 2500, "" },
			{ "KAEL_SUITS_BR_F12", "", 2500, "" },
			{ "KAEL_SUITS_BR_F13", "", 2500, "" },
			{ "TRYK_SUITS_BLK_F", "", 2500, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "H_Bandanna_camo", "", 120, "" },
            { "H_Bandanna_surfer", "", 130, "" },
            { "H_Bandanna_khk", "", 145, "" },
            { "H_Cap_blu", "", 150, "" },
            { "H_Cap_grn", "", 150, "" },
            { "H_Cap_grn_BI", "", 150, "" },
            { "H_Cap_oli", "", 150, "" },
            { "H_Cap_red", "", 150, "" },
            { "H_Cap_tan", "", 150, "" },
            { "H_Helmet_Skate", "", 150, "" }, //Apex DLC
            { "H_Bandanna_gry", "", 150, "" },
            { "H_Bandanna_sgg", "", 160, "" },
            { "H_Bandanna_cbr", "", 165, "" },
            { "H_BandMask_blk", $STR_C_Civ_BandMask, 300, "" },
            { "H_Booniehat_tan", "", 425, "" },
            { "H_Booniehat_grn", "", 425, "" },
			{ "TRYK_H_headsetcap_blk_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_od_Glasses", "", 100, "" },
			{ "TRYK_R_CAP_BLK", "", 100, "" },
			{ "TRYK_R_CAP_TAN", "", 100, "" },
			{ "TRYK_R_CAP_OD_US", "", 100, "" },
			{ "TRYK_r_cap_blk_Glasses", "", 100, "" },
			{ "TRYK_r_cap_od_Glasses", "", 100, "" },
			{ "TRYK_r_cap_tan_Glasses", "", 100, "" },
			{ "TRYK_UA_CAP2R", "", 100, "" },
			{ "TRYK_UA_CAP_GR2R", "", 100, "" },
			{ "TRYK_UA_CAP_tan2R", "", 100, "" },
			{ "TRYK_UA_CAP_U2R", "", 100, "" },
			{ "TRYK_UA_CAP2", "", 100, "" },
			{ "TRYK_UA_CAP_GR2", "", 100, "" },
			{ "TRYK_UA_CAP_tan2", "", 100, "" },
			{ "TRYK_UA_CAP_U2", "", 100, "" },
			{ "EF_wig_DHB", "", 50, "" },
			{ "EF_Long_wig_B", "", 50, "" },
			{ "EF_Punk_wig_B", "", 50, "" },
			{ "EF_wig_SB", "", 50, "" },
			{ "EF_wig_VSB", "", 50, "" },
			{ "EF_Punk_wig_SB3", "", 50, "" },
			{ "EF_Punk_wig_SB", "", 50, "" },
			{ "EF_Long_wig_BLE", "", 50, "" },
			{ "EF_Punk_wig_BLE", "", 50, "" },
			{ "EF_wig_SBLE", "", 50, "" },
			{ "EF_wig_VSBLE", "", 50, "" },
			{ "EF_Punk_wig_SBLE3", "", 50, "" },
			{ "EF_Punk_wig_SBLE", "", 50, "" },
			{ "EF_Long_wig_BL", "", 50, "" },
			{ "EF_Punk_wig_BL", "", 50, "" },
			{ "EF_wig_SBL", "", 50, "" },
			{ "EF_wig_VSBL", "", 50, "" },
			{ "EF_Punk_wig_SBL3", "", 50, "" },
			{ "EF_Punk_wig_SBL", "", 50, "" },
			{ "EF_wig_VSSV", "", 50, "" },
			{ "EF_wig_SSV", "", 50, "" },
			{ "EF_Punk_wig_SV", "", 50, "" },
			{ "EF_Long_wig_SV", "", 50, "" },
			{ "EF_Punk_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_SGL3", "", 50, "" },
			{ "EF_wig_VSGL", "", 50, "" },
			{ "EF_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_GL", "", 50, "" },
			{ "EF_Long_wig_GL", "", 50, "" },
			{ "EF_Punk_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_SBW3", "", 50, "" },
			{ "EF_wig_VSBW", "", 50, "" },
			{ "EF_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_BW", "", 50, "" },
			{ "EF_Long_wig_BW", "", 50, "" },
			{ "EF_wig_DHBR", "", 50, "" },
			{ "H_Beret_blk", "", 100, "" },
			{ "H_Booniehat_dgtl", "", 100, "" },
			{ "H_Cap_blk_ION", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Shades_Green", "", 20, "" },
            { "G_Shades_Red", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Greenblack", "", 25, "" },
            { "G_Sport_Red", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
            { "G_Aviator", "", 100, "" },
            { "G_Combat", "", 125, "" },
            { "G_Lady_Mirror", "", 150, "" },
            { "G_Lady_Dark", "", 150, "" },
            { "G_Lady_Blue", "", 150, "" },
            { "G_Balaclava_oli", "", 100, "" },
            { "G_Balaclava_TI_tna_F", "", 100, "" },
            { "G_Balaclava_blk", "", 100, "" },
            { "G_Bandanna_beast", "", 100, "" },
            { "G_Bandanna_blk", "", 100, "" },
            { "TRYK_Shemagh_WH", "", 100, "" },
            { "TRYK_Shemagh_G", "", 100, "" },
            { "TRYK_Shemagh", "", 100, "" },
            { "TRYK_kio_balaclava_BLK", "", 100, "" },
            { "TRYK_kio_balaclavas", "", 100, "" },
            { "TRYK_kio_balaclava_WH", "", 100, "" },
            { "G_Bandanna_khk", "", 250, "" },
            { "G_Bandanna_oli", "", 250, "" },
            { "G_Bandanna_tan", "", 250, "" },
            { "G_Bandanna_blk", "", 250, "" },
            { "TRYK_Shemagh", "", 250, "" },
			{ "TRYK_Beard", "", 50, "" },
			{ "TRYK_Beard_BW", "", 50, "" },
			{ "TRYK_Beard_BK", "", 50, "" },
			{ "TRYK_Beard_Gr", "", 50, "" },
			{ "TRYK_Beard2", "", 50, "" },
			{ "TRYK_Beard_BW2", "", 50, "" },
			{ "TRYK_Beard_BK2", "", 50, "" },
			{ "TRYK_Beard_Gr2", "", 50, "" },
			{ "TRYK_Beard3", "", 50, "" },
			{ "TRYK_Beard_BW3", "", 50, "" },
			{ "TRYK_Beard_BK3", "", 50, "" },
			{ "TRYK_Beard_Gr3", "", 50, "" },
			{ "TRYK_Beard4", "", 50, "" },
			{ "TRYK_Beard_BW4", "", 50, "" },
			{ "TRYK_Beard_BK4", "", 50, "" },
			{ "TRYK_Beard_Gr4", "", 50, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "TRYK_V_IOTV_BLK", "", 10000, "" },
			{ "TRYK_V_Bulletproof_BLK", "", 10000, "" },
			{ "S_VHO_OV_BLK_4", "", 10000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "TRYK_B_Carryall_blk", "", 1500, "" },
			{ "TAC_BP_Butt_B", "", 1500, "" },
			{ "TAC_LBT_LEGAB_BK", "", 1500, "" },
			{ "TAC_BP_KAR_B", "", 1500, "" }
        };
    };

    class mafia {
        title = "STR_MAR_mafia_clothing";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "HITMAN_47_SUIT", "", 2500, "" },
			{ "TRYK_U_B_wh_blk_Rollup_CombatUniform", "", 2500, "" },
			{ "KAEL_SUITS_BR_F12", "", 2500, "" },
			{ "KAEL_SUITS_BR_F13", "", 2500, "" },
			{ "TRYK_SUITS_BLK_F", "", 2500, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 120, "" },
            { "H_Bandanna_surfer", "", 130, "" },
            { "H_Bandanna_khk", "", 145, "" },
            { "H_Cap_blu", "", 150, "" },
            { "H_Cap_grn", "", 150, "" },
            { "H_Cap_grn_BI", "", 150, "" },
            { "H_Cap_oli", "", 150, "" },
            { "H_Cap_red", "", 150, "" },
            { "H_Cap_tan", "", 150, "" },
            { "H_Helmet_Skate", "", 150, "" }, //Apex DLC
            { "H_Bandanna_gry", "", 150, "" },
            { "H_Bandanna_sgg", "", 160, "" },
            { "H_Bandanna_cbr", "", 165, "" },
            { "H_BandMask_blk", $STR_C_Civ_BandMask, 300, "" },
            { "H_Booniehat_tan", "", 425, "" },
            { "H_Booniehat_grn", "", 425, "" },
			{ "TRYK_H_headsetcap_blk_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_Glasses", "", 100, "" },
			{ "TRYK_H_headsetcap_od_Glasses", "", 100, "" },
			{ "TRYK_R_CAP_BLK", "", 100, "" },
			{ "TRYK_R_CAP_TAN", "", 100, "" },
			{ "TRYK_R_CAP_OD_US", "", 100, "" },
			{ "TRYK_r_cap_blk_Glasses", "", 100, "" },
			{ "TRYK_r_cap_od_Glasses", "", 100, "" },
			{ "TRYK_r_cap_tan_Glasses", "", 100, "" },
			{ "TRYK_UA_CAP2R", "", 100, "" },
			{ "TRYK_UA_CAP_GR2R", "", 100, "" },
			{ "TRYK_UA_CAP_tan2R", "", 100, "" },
			{ "TRYK_UA_CAP_U2R", "", 100, "" },
			{ "TRYK_UA_CAP2", "", 100, "" },
			{ "TRYK_UA_CAP_GR2", "", 100, "" },
			{ "TRYK_UA_CAP_tan2", "", 100, "" },
			{ "TRYK_UA_CAP_U2", "", 100, "" },
			{ "EF_wig_DHB", "", 50, "" },
			{ "EF_Long_wig_B", "", 50, "" },
			{ "EF_Punk_wig_B", "", 50, "" },
			{ "EF_wig_SB", "", 50, "" },
			{ "EF_wig_VSB", "", 50, "" },
			{ "EF_Punk_wig_SB3", "", 50, "" },
			{ "EF_Punk_wig_SB", "", 50, "" },
			{ "EF_Long_wig_BLE", "", 50, "" },
			{ "EF_Punk_wig_BLE", "", 50, "" },
			{ "EF_wig_SBLE", "", 50, "" },
			{ "EF_wig_VSBLE", "", 50, "" },
			{ "EF_Punk_wig_SBLE3", "", 50, "" },
			{ "EF_Punk_wig_SBLE", "", 50, "" },
			{ "EF_Long_wig_BL", "", 50, "" },
			{ "EF_Punk_wig_BL", "", 50, "" },
			{ "EF_wig_SBL", "", 50, "" },
			{ "EF_wig_VSBL", "", 50, "" },
			{ "EF_Punk_wig_SBL3", "", 50, "" },
			{ "EF_Punk_wig_SBL", "", 50, "" },
			{ "EF_wig_VSSV", "", 50, "" },
			{ "EF_wig_SSV", "", 50, "" },
			{ "EF_Punk_wig_SV", "", 50, "" },
			{ "EF_Long_wig_SV", "", 50, "" },
			{ "EF_Punk_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_SGL3", "", 50, "" },
			{ "EF_wig_VSGL", "", 50, "" },
			{ "EF_wig_SGL", "", 50, "" },
			{ "EF_Punk_wig_GL", "", 50, "" },
			{ "EF_Long_wig_GL", "", 50, "" },
			{ "EF_Punk_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_SBW3", "", 50, "" },
			{ "EF_wig_VSBW", "", 50, "" },
			{ "EF_wig_SBW", "", 50, "" },
			{ "EF_Punk_wig_BW", "", 50, "" },
			{ "EF_Long_wig_BW", "", 50, "" },
			{ "EF_wig_DHBR", "", 50, "" },
			{ "H_Beret_blk", "", 100, "" },
			{ "H_Booniehat_dgtl", "", 100, "" },
			{ "H_Cap_blk_ION", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Shades_Green", "", 20, "" },
            { "G_Shades_Red", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Greenblack", "", 25, "" },
            { "G_Sport_Red", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
            { "G_Aviator", "", 100, "" },
            { "G_Combat", "", 125, "" },
            { "G_Lady_Mirror", "", 150, "" },
            { "G_Lady_Dark", "", 150, "" },
            { "G_Lady_Blue", "", 150, "" },
            { "G_Balaclava_oli", "", 100, "" },
            { "G_Balaclava_TI_tna_F", "", 100, "" },
            { "G_Balaclava_blk", "", 100, "" },
            { "G_Bandanna_beast", "", 100, "" },
            { "G_Bandanna_blk", "", 100, "" },
            { "TRYK_Shemagh_WH", "", 100, "" },
            { "TRYK_Shemagh_G", "", 100, "" },
            { "TRYK_Shemagh", "", 100, "" },
            { "TRYK_kio_balaclava_BLK", "", 100, "" },
            { "TRYK_kio_balaclavas", "", 100, "" },
            { "TRYK_kio_balaclava_WH", "", 100, "" },
            { "G_Bandanna_khk", "", 250, "" },
            { "G_Bandanna_oli", "", 250, "" },
            { "G_Bandanna_tan", "", 250, "" },
            { "G_Bandanna_blk", "", 250, "" },
            { "TRYK_Shemagh", "", 250, "" },
			{ "TRYK_Beard", "", 50, "" },
			{ "TRYK_Beard_BW", "", 50, "" },
			{ "TRYK_Beard_BK", "", 50, "" },
			{ "TRYK_Beard_Gr", "", 50, "" },
			{ "TRYK_Beard2", "", 50, "" },
			{ "TRYK_Beard_BW2", "", 50, "" },
			{ "TRYK_Beard_BK2", "", 50, "" },
			{ "TRYK_Beard_Gr2", "", 50, "" },
			{ "TRYK_Beard3", "", 50, "" },
			{ "TRYK_Beard_BW3", "", 50, "" },
			{ "TRYK_Beard_BK3", "", 50, "" },
			{ "TRYK_Beard_Gr3", "", 50, "" },
			{ "TRYK_Beard4", "", 50, "" },
			{ "TRYK_Beard_BW4", "", 50, "" },
			{ "TRYK_Beard_BK4", "", 50, "" },
			{ "TRYK_Beard_Gr4", "", 50, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "TRYK_V_IOTV_BLK", "", 10000, "" },
			{ "TRYK_V_Bulletproof_BLK", "", 10000, "" },
			{ "S_VHO_OV_BLK_4", "", 10000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "TRYK_B_Carryall_blk", "", 1500, "" },
			{ "TAC_BP_Butt_B", "", 1500, "" },
			{ "TAC_LBT_LEGAB_BK", "", 1500, "" },
			{ "TAC_BP_KAR_B", "", 1500, "" }
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Driver_1_black", "", 1500, "" },
            { "U_C_Driver_1_blue", "", 1500, "" },
            { "U_C_Driver_1_red", "", 1500, "" },
            { "U_C_Driver_1_orange", "", 1500, "" },
            { "U_C_Driver_1_green", "", 1500, "" },
            { "U_C_Driver_1_white", "", 1500, "" },
            { "U_C_Driver_1_yellow", "", 1500, "" },
            { "U_C_Driver_2", "", 3500, "" },
            { "U_C_Driver_1", "", 3600, "" },
            { "U_C_Driver_3", "", 3700, "" },
            { "U_C_Driver_4", "", 3700, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_RacingHelmet_1_black_F", "", 1000, "" },
            { "H_RacingHelmet_1_red_F", "", 1000, "" },
            { "H_RacingHelmet_1_white_F", "", 1000, "" },
            { "H_RacingHelmet_1_blue_F", "", 1000, "" },
            { "H_RacingHelmet_1_yellow_F", "", 1000, "" },
            { "H_RacingHelmet_1_green_F", "", 1000, "" },
            { "H_RacingHelmet_1_F", "", 2500, "" },
            { "H_RacingHelmet_2_F", "", 2500, "" },
            { "H_RacingHelmet_3_F", "", 2500, "" },
            { "H_RacingHelmet_4_F", "", 2500, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

   class swat {
        title = "STR_Shops_C_Swat";
        conditions = "";
        side = "cop";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "VSM_Multicam_Crye_grey_pants_Camo", "", 25, "" },
            { "VSM_Multicam_Crye_grey_shirt_Camo", "", 25, "" },
            { "VSM_Multicam_Crye_od_pants_Camo", "", 25, "" },
            { "VSM_Multicam_Crye_od_shirt_Camo", "", 25, "" },
			{ "VSM_Multicam_Crye_tan_pants_Camo", "", 25, "" },
			{ "VSM_Multicam_Crye_tan_shirt_Camo", "", 25, "" },
			{ "VSM_Multicam_Crye_Camo", "", 25, "" },
			{ "TRYK_U_B_BLKBLK_CombatUniform", "", 25, "" },
			{ "TRYK_U_B_BLKOCP_CombatUniform", "", 25, "" },
			{ "TRYK_U_B_PCUHsW7", "", 25, "" },
			{ "TRYK_U_B_PCUHsW3", "", 25, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "VSM_Multicam_Boonie", "", 10, "" },
            { "VSM_OPS_Multicam", "", 10, "" },
            { "VSM_Black_OPS", "", 10, "" },
            { "VSM_oga_OPS", "", 10, "" }, 
            { "VSM_OGA_OD_OPS", "", 10, "" },
            { "VSM_OPS_2_multicam", "", 10, "" },
            { "VSM_Black_OPS_2", "", 10, "" }, 
            { "VSM_OD_Spray_OPS_2", "", 10, "" }, 
			{ "VSM_OGA_OD_OPS_2", "", 10, "" },
            { "CPE_SWAT_FAST_2", "", 10, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "KA_MCU", "", 10, "" },
            { "G_Balaclava_blk", "", 20, "" },
            { "G_Bandanna_blk", "", 20, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "VSM_FAPC_Operator_Multicam", "", 80, "" },
            { "VSM_CarrierRig_Operator_Multicam", "", 10, "" },
            { "VSM_LBT6094_operator_Multicam", "", 10, "" }, 
            { "VSM_RAV_operator_Multicam", "", 10, "" },
            { "grp_msf_vest_3", "", 10, "" },
            { "grp_msf_vest_5", "", 10, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "TRYK_B_Carryall_blk", "Niewidzialny Plecak WIP", 50, "" }
        };
    };
};
