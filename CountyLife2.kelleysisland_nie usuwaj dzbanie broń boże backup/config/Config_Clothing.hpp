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
* OGÓLNIE BERYK NIE UMIE PISAĆ KONFIGÓW WIĘC POZDRO
*/
class Clothing {
    class bruce {
        title = "STR_Shops_C_Bruce";
        conditions = "";
        side = "civ";
        uniforms[] = {
			{ "cg_bb1", "", 100, "" },
			{ "cg_condoms1", "", 100, "" },
			{ "cg_deeznuts1", "", 100, "" },
			{ "cg_ea1", "", 100, "" },
			{ "cg_gameover1", "", 100, "" },
			{ "cg_got1", "", 100, "" },
			{ "cg_homer1", "", 100, "" },
			{ "cg_joker1", "", 100, "" },
			{ "cg_lsd1", "", 100, "" },
			{ "cg_mtv1", "", 100, "" },
			{ "cg_nike1", "", 100, "" },
			{ "cg_pepsi1", "", 100, "" },
			{ "cg_strippers1", "", 100, "" },
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
			{ "EF_HM_LPBL2", "", 250, "" },
			{ "kw_yuri_jogging_2", "", 250, "" },
			{ "kw_yuri_jogging_1", "", 250, "" },
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
			{ "KAEL_SUITS_BR_F16", "", 750, "" },
			{ "KAEL_SUITS_BR_F17", "", 750, "" },
			{ "KAEL_SUITS_BR_F18", "", 750, "" },
			{ "KAEL_SUITS_BR_F19", "", 750, "" },
			{ "KAEL_SUITS_BR_F20", "", 750, "" },
			{ "KAEL_SUITS_BR_F22", "", 750, "" },
			{ "KAEL_SUITS_BR_F15", "", 750, "" },
			{ "EF_suit_1", "", 750, "" },
			{ "EF_suit_2", "", 750, "" },
			{ "EF_suit_3", "", 750, "" },
			{ "EF_suit_4", "", 750, "" },
			{ "EF_suit_5", "", 750, "" },
			{ "EF_suit_6", "", 750, "" },
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
			{ "hood_space", "", 500, "" },
			{ "hood_gucci_brr", "", 350, "" },
			{ "hood_nike_blk", "", 350, "" },
			{ "hood_nike_wh", "", 350, "" },
			{ "hood_tri", "", 350, "" },
			{ "hood_supreme", "", 1000, "" },
			{ "hood_gucci_beg", "", 2000, "" },
			{ "hood_gucci_blk", "", 2000, "" }
        };
        headgear[] = {
			{ "H_ALFR_Dallas_Mask", "", 350, "" },
			{ "calot_pn", "", 350, "" },
			{ "kw_gangster_hat", "", 350, "" },
			{ "calot_gn", "", 350, "" },
			{ "kw_horsehead", "", 350, "" },
			{ "kw_horsehead_blk", "", 350, "" },
			{ "kw_horsehead_pnk", "", 350, "" },
			{ "kw_Legoman", "", 350, "" },
			{ "Masque_Alien1", "", 350, "" },
			{ "Masque_Anonymous", "", 350, "" },
			{ "Masque_Arnold", "", 350, "" },
			{ "Masque_Bonnie", "", 350, "" },
			{ "Masque_Chains", "", 350, "" },
			{ "Masque_Chuck", "", 350, "" },
			{ "Masque_Clover", "", 350, "" },
			{ "Masque_Fish", "", 350, "" },
			{ "Masque_forceAlpha", "", 350, "" },
			{ "Masque_Hockey", "", 350, "" },
			{ "Masque_Hoxton", "", 350, "" },
			{ "Masque_Metalhead", "", 350, "" },
			{ "Masque_Optimiste", "", 350, "" },
			{ "Masque_Orc", "", 350, "" },
			{ "Masque_Religieuse", "", 350, "" },
			{ "Masque_Santa", "", 350, "" },
			{ "Masque_speedRunner", "", 350, "" },
			{ "Masque_Unic", "", 350, "" },
			{ "H_ALFR_Metal_Facemask_sand", "", 350, "" },
			{ "H_ALFR_Metal_Facemask_blk", "", 350, "" },
			{ "H_ALFR_PaintballMsk", "", 350, "" },
			{ "H_ALFR_Metal_Gasmask_RU_fuckyou", "", 350, "" },
			{ "H_ALFR_Sheep_Mask", "", 350, "" },
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
			{ "H_Cap_blk_ION", "", 100, "" },
			{ "H_Cap_police", "", 100, "" },
			{ "H_Cap_surfer", "", 100, "" },
			{ "EF_BNE_BK", "", 100, "" },
			{ "EF_BNE_BR", "", 100, "" },
			{ "EF_BNE_R", "", 100, "" },
			{ "EF_BNE_W", "", 100, "" },
			{ "EF_HAT_BK", "", 100, "" },
			{ "EF_HAT_BW", "", 100, "" },
			{ "EF_HAT_CL", "", 100, "" },
			{ "Payday_GeneralO", "", 100, "" },
			{ "H_ALFR_Samurai_Mask", "", 100, "" },
			{ "santahat", "", 100, "" },
			{ "H_Booniehat_oli", "", 100, "" },
			{ "H_StrawHat", "", 100, "" },
			{ "H_StrawHat_dark", "", 100, "" },
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
			{ "TRYK_UA_CAP_U2", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Balaclava_oli", "", 100, "" },
            { "G_Balaclava_TI_tna_F", "", 100, "" },
            { "Masque_Solitaire", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_8", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_3", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_1", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_2", "", 100, "" },
            { "H_ALFR_SkiMask_8", "", 100, "" },
            { "H_ALFR_SkiMask_3", "", 100, "" },
            { "H_ALFR_SkiMask_1", "", 100, "" },
            { "H_ALFR_SkiMask_2", "", 100, "" },
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
			{ "NONE", $STR_C_Remove_goggles, 0, "" },
            { "EF_SHF_BK", "", 2000, "" },
            { "EF_SHF_BW", "", 2000, "" },
            { "EF_SHF_PK", "", 2000, "" },
            { "EF_SH_BK", "", 2000, "" },
            { "EF_SH_BW", "", 2000, "" }
        };
        backpacks[] = {
			{ "TAC_BP_buttB_B", "", 500, "" },
			{ "TAC_BP_buttB_Khaki", "", 500, "" },
			{ "TAC_MTAP_BK2", "", 500, "" },
			{ "TAC_MTAP_CY2", "", 500, "" },
			{ "TAC_BP_KAR_B", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_BLK", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_OD", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_WH", "", 500, "" },
			{ "TRYK_B_Carryall_blk", "", 500, "" },
			{ "TRYK_B_Carryall_wh", "", 500, "" },
			{ "TRYK_B_Kitbag_blk", "", 500, "" },
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

	class dtu {
        title = "STR_Shops_C_Bruce";
        conditions = "license_cop_dtu";
        side = "cop";
        uniforms[] = {
			{ "cg_bb1", "", 100, "" },
			{ "cg_condoms1", "", 100, "" },
			{ "cg_deeznuts1", "", 100, "" },
			{ "cg_ea1", "", 100, "" },
			{ "cg_gameover1", "", 100, "" },
			{ "cg_got1", "", 100, "" },
			{ "cg_homer1", "", 100, "" },
			{ "cg_joker1", "", 100, "" },
			{ "cg_lsd1", "", 100, "" },
			{ "cg_mtv1", "", 100, "" },
			{ "cg_nike1", "", 100, "" },
			{ "cg_pepsi1", "", 100, "" },
			{ "cg_strippers1", "", 100, "" },
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
			{ "EF_HM_LPBL2", "", 250, "" },
			{ "kw_yuri_jogging_2", "", 250, "" },
			{ "kw_yuri_jogging_1", "", 250, "" },
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
			{ "KAEL_SUITS_BR_F16", "", 750, "" },
			{ "KAEL_SUITS_BR_F17", "", 750, "" },
			{ "KAEL_SUITS_BR_F18", "", 750, "" },
			{ "KAEL_SUITS_BR_F19", "", 750, "" },
			{ "KAEL_SUITS_BR_F20", "", 750, "" },
			{ "KAEL_SUITS_BR_F22", "", 750, "" },
			{ "KAEL_SUITS_BR_F15", "", 750, "" },
			{ "EF_suit_1", "", 750, "" },
			{ "EF_suit_2", "", 750, "" },
			{ "EF_suit_3", "", 750, "" },
			{ "EF_suit_4", "", 750, "" },
			{ "EF_suit_5", "", 750, "" },
			{ "EF_suit_6", "", 750, "" },
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
			{ "hood_space", "", 500, "" },
			{ "hood_gucci_brr", "", 350, "" },
			{ "hood_nike_blk", "", 350, "" },
			{ "hood_nike_wh", "", 350, "" },
			{ "hood_tri", "", 350, "" },
			{ "hood_supreme", "", 1000, "" },
			{ "hood_gucci_beg", "", 2000, "" },
			{ "hood_gucci_blk", "", 2000, "" }
        };
        headgear[] = {
			{ "H_ALFR_Dallas_Mask", "", 350, "" },
			{ "calot_pn", "", 350, "" },
			{ "kw_gangster_hat", "", 350, "" },
			{ "kw_horsehead", "", 350, "" },
			{ "kw_horsehead_blk", "", 350, "" },
			{ "kw_horsehead_pnk", "", 350, "" },
			{ "kw_Legoman", "", 350, "" },
			{ "Masque_Alien1", "", 350, "" },
			{ "Masque_Anonymous", "", 350, "" },
			{ "Masque_Arnold", "", 350, "" },
			{ "Masque_Bonnie", "", 350, "" },
			{ "Masque_Chains", "", 350, "" },
			{ "Masque_Chuck", "", 350, "" },
			{ "Masque_Clover", "", 350, "" },
			{ "Masque_Fish", "", 350, "" },
			{ "Masque_forceAlpha", "", 350, "" },
			{ "Masque_Hockey", "", 350, "" },
			{ "Masque_Hoxton", "", 350, "" },
			{ "Masque_Metalhead", "", 350, "" },
			{ "Masque_Optimiste", "", 350, "" },
			{ "Masque_Orc", "", 350, "" },
			{ "Masque_Religieuse", "", 350, "" },
			{ "Masque_Santa", "", 350, "" },
			{ "Masque_speedRunner", "", 350, "" },
			{ "Masque_Unic", "", 350, "" },
			{ "H_ALFR_Metal_Facemask_blk", "", 350, "" },
			{ "H_ALFR_PaintballMsk", "", 350, "" },
			{ "H_ALFR_Metal_Gasmask_RU_fuckyou", "", 350, "" },
			{ "H_ALFR_Sheep_Mask", "", 350, "" },
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
			{ "H_Cap_blk_ION", "", 100, "" },
			{ "H_Cap_police", "", 100, "" },
			{ "H_Cap_surfer", "", 100, "" },
			{ "EF_BNE_BK", "", 100, "" },
			{ "EF_BNE_BR", "", 100, "" },
			{ "EF_BNE_R", "", 100, "" },
			{ "EF_BNE_W", "", 100, "" },
			{ "EF_HAT_BK", "", 100, "" },
			{ "EF_HAT_BW", "", 100, "" },
			{ "EF_HAT_CL", "", 100, "" },
			{ "Payday_GeneralO", "", 100, "" },
			{ "H_Booniehat_oli", "", 100, "" },
			{ "H_StrawHat", "", 100, "" },
			{ "H_StrawHat_dark", "", 100, "" },
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
			{ "TRYK_UA_CAP_U2", "", 100, "" }
			
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            
            { "G_Balaclava_oli", "", 100, "" },
            { "G_Balaclava_TI_tna_F", "", 100, "" },
            { "G_Balaclava_blk", "", 100, "" },
            { "Masque_Solitaire", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_8", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_3", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_1", "", 100, "" },
            { "H_ALFR_SkiMask_Glasses_2", "", 100, "" },
            { "H_ALFR_SkiMask_8", "", 100, "" },
            { "H_ALFR_SkiMask_3", "", 100, "" },
            { "H_ALFR_SkiMask_1", "", 100, "" },
            { "H_ALFR_SkiMask_2", "", 100, "" },
            { "TRYK_kio_balaclava_BLK", "", 100, "" },
            { "TRYK_kio_balaclavas", "", 100, "" },
            { "TRYK_kio_balaclava_WH", "", 100, "" },
            { "G_Bandanna_khk", "", 250, "" },
            { "G_Bandanna_oli", "", 250, "" },
            { "G_Bandanna_tan", "", 250, "" },
            { "G_Bandanna_blk", "", 250, "" }
        };
        vests[] = {
			{ "NONE", $STR_C_Remove_goggles, 0, "" },
            { "EF_SHF_BK", "", 2000, "" },
            { "EF_SHF_BW", "", 2000, "" },
            { "EF_SHF_PK", "", 2000, "" },
            { "EF_SH_BK", "", 2000, "" },
            { "EF_SH_BW", "", 2000, "" }
        };
        backpacks[] = {
			{ "TAC_BP_buttB_B", "", 500, "" },
			{ "TAC_BP_buttB_Khaki", "", 500, "" },
			{ "TAC_MTAP_BK2", "", 500, "" },
			{ "TAC_MTAP_CY2", "", 500, "" },
			{ "TAC_BP_KAR_B", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_BLK", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_OD", "", 500, "" },
			{ "TRYK_B_Coyotebackpack_WH", "", 500, "" },
			{ "TRYK_B_Carryall_blk", "", 500, "" },
			{ "TRYK_B_Carryall_wh", "", 500, "" },
			{ "TRYK_B_Kitbag_blk", "", 500, "" },
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
			{ "cl_AIA_Chief", "", 100, "call life_coplevel >= 3 && license_cop_aia" },
			{ "cl_AIA_Deputy", "", 100, "call life_coplevel >= 2 && license_cop_aia" },
			{ "cl_AIA_Inspector", "", 100, "call life_coplevel >= 2 && license_cop_aia" },
			{ "cl_AIA_probie", "", 100, "call life_coplevel >= 1 && license_cop_aia" },

			{ "cl_DTU_Captain", "", 100, "call life_coplevel >= 3 && license_cop_dtu" },
			{ "cl_DTU_Lieutenant", "", 100, "call life_coplevel >= 3 && license_cop_dtu" },
			{ "cl_DTU_Officer1", "", 100, "call life_coplevel >= 2 && license_cop_dtu" },
			{ "cl_DTU_Officer2", "", 100, "call life_coplevel >= 2 && license_cop_dtu" },
			{ "cl_DTU_Officer3", "", 100, "call life_coplevel >= 2 && license_cop_dtu" },
			{ "cl_DTU_Probie", "", 100, "call life_coplevel >= 1 && license_cop_dtu" },

			{ "cl_SO_Sheriff", "", 100, "call life_coplevel >= 7" },
			{ "cl_SO_Deputy_Sheriff", "", 100, "call life_coplevel >= 7" },
			{ "cl_SO_Assistant", "", 100, "call life_coplevel >= 7" },
			{ "cl_SO_Colonel", "", 100, "call life_coplevel >= 6" },
			{ "cl_SO_Major", "", 100, "call life_coplevel >= 5" },
			{ "cl_SO_Captain", "", 100, "call life_coplevel >= 4" },
			{ "cl_SO_Lieutenant", "", 100, "call life_coplevel >= 4" },
			{ "cl_SO_Lieutenant_SERT", "", 100, "call life_coplevel >= 4 && license_cop_swat" },
			{ "cl_SO_Sergeant_FC", "", 100, "call life_coplevel >= 3" },
			{ "cl_SO_Sergeant_FC_SERT", "", 100, "call life_coplevel >= 3 && license_cop_swat" },
			{ "cl_SO_Staff_Sergeant", "", 100, "call life_coplevel >= 3" },
			{ "cl_SO_Staff_Sergeant_SERT", "", 100, "call life_coplevel >= 3 && license_cop_swat" },
			{ "cl_SO_Sergeant", "", 100, "call life_coplevel >= 3" },
			{ "cl_SO_Sergeant_SERT", "", 100, "call life_coplevel >= 3 && license_cop_swat" },
			{ "cl_SO_Corporal", "", 100, "call life_coplevel >= 2" },
			{ "cl_SO_Corporal_SERT", "", 100, "call life_coplevel >= 2 && license_cop_swat" },
			{ "cl_SO_Senior_Deputy", "", 100, "call life_coplevel >= 2" },
			{ "cl_SO_Deputy", "", 100, "call life_coplevel >= 1" },
			{ "cl_SO_Probie", "", 100, "call life_coplevel >= 1" },
			{ "EF_HMSRF_1", "", 250, "call life_coplevel >= 3" },
			{ "EF_HMSRF_2", "", 250, "call life_coplevel >= 3" },
			{ "cl_hoodie_srf_command_jeans", "", 250, "call life_coplevel >= 3" },
			{ "cl_hoodie_srf_jeans", "", 250, "call life_coplevel >= 3" },
			{ "cl_hoodie_srf_command_den", "", 250, "call life_coplevel >= 3" },
			{ "cl_hoodie_srf_den", "", 250, "call life_coplevel >= 3" },

			{ "EF_FEM_4_2G", "", 100, "call life_coplevel >= 1" },
			{ "EF_FEM_3_3G", "", 100, "call life_coplevel >= 1" },

			{ "hoodie_dtu_2", "", 100, "call life_coplevel >= 1 && license_cop_dtu" },
			{ "TRYK_dtu_1", "", 100, "call life_coplevel >= 1 && license_cop_dtu" },
			{ "hoodie_dtu_1", "", 100, "call life_coplevel >= 1 && license_cop_dtu" },
			{ "hoodie_dtu_3", "", 100, "call life_coplevel >= 1 && license_cop_dtu" },
			{ "TRYK_U_pad_hood_odBK", "", 350, "license_cop_dtu" },
			{ "TRYK_U_denim_hood_blk", "", 350, "license_cop_dtu" },
			{ "TRYK_U_denim_hood_nc", "", 350, "license_cop_dtu" },
			{ "CL_SERT_UNIFORM", "", 350, "license_cop_swat" },
			{ "CL_SERT_UNIFORM2", "", 350, "license_cop_swat" }

        };
        headgear[] = {
			{ "cl_aia_beret", "", 100, "call life_coplevel >= 1" },
			{ "cl_aia_beret_chief", "", 100, "call life_coplevel >= 3" },
			{ "cl_dtu_cap_1", "", 100, "call life_coplevel >= 1" },
			{ "cl_dtu_cap_2", "", 100, "call life_coplevel >= 1" },
			{ "cl_dtu_beret_com", "", 100, "call life_coplevel >= 3" },
			{ "cl_dtu_beret", "", 100, "call life_coplevel >= 1" },
			{ "cl_so_com1", "", 100, "call life_coplevel >= 4" },
			{ "cl_so_com", "", 100, "call life_coplevel >= 4" },
			{ "cl_capblack1", "", 100, "call life_coplevel >= 1" },
			{ "cl_capgray", "", 100, "call life_coplevel >= 1" },
			{ "cl_caplightgray", "", 100, "call life_coplevel >= 1" },
			{ "TRYK_H_PASGT_OD", "", 100, "call life_coplevel >= 1" },
			{ "TRYK_H_PASGT_BLK", "", 100, "call life_coplevel >= 1" },
			{ "kw_Campaign_Hat_Light", "", 100, "call life_coplevel >= 1" },
			{ "kw_Campaign_Hat_Tan", "", 100, "call life_coplevel >= 1" },
			{ "kw_Campaign_Hat_Washedout", "", 100, "call life_coplevel >= 1" }
        };
        goggles[] = {
			{ "B_Balaclava_blk", "", 50, "call life_coplevel >= 1" },
			{ "G_Balaclava_blk", "", 50, "call life_coplevel >= 1" },
			{ "B_Balaclava_oli", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_aviator", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_beast", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_blk", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_khk", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_oli", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_shades", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_sport", "", 50, "call life_coplevel >= 1" },
			{ "G_Bandanna_tan", "", 50, "call life_coplevel >= 1" },
			{ "G_aviator", "", 50, "call life_coplevel >= 1" },
			{ "TAC_SF10", "", 100, "call life_coplevel >= 1" }
			
        
		};
        vests[] = {
			{ "D_AIA_V", "", 200, "call life_coplevel >= 2 && license_cop_aia" },
			{ "cl_tac_aia", "", 200, "call life_coplevel >= 1" },
			{ "cl_vest_aia_deputy", "", 200, "call life_coplevel >= 2 && license_cop_aia" },
			{ "cl_vest_aia_inspector", "", 200, "call life_coplevel >= 2 && license_cop_aia" },
			{ "cl_vest_aia_krzysiek", "", 200, "call life_coplevel >= 3 && license_cop_aia" },
			{ "cl_vest_aia_Probie", "", 200, "call life_coplevel >= 1 && license_cop_aia" },
			{ "cl_vest_dtu_commander", "", 200, "call life_coplevel >= 3 && license_cop_dtu" },
			{ "cl_vest_dtu_commander_Ulany", "", 200, "call life_coplevel >= 3 && license_cop_dtu" },
			{ "cl_vest_dtu_officer", "", 200, "call life_coplevel >= 2 && license_cop_dtu" },
			{ "cl_vest_dtu_probie", "", 200, "call life_coplevel >= 1 && license_cop_dtu" },
			{ "cl_vest_so", "", 200, "call life_coplevel >= 1" },
			{ "cl_vest_so_mcdonnel", "", 200, "call life_coplevel >= 5" },
			{ "cl_vest_so_assistant_sheriff", "", 200, "call life_coplevel >= 5" },
			{ "cl_vest_so_undersheriff", "", 200, "call life_coplevel >= 5" },
			{ "cl_vest_don_command", "", 200, "call life_coplevel >= 4"},
			{ "cl_vest_pd_command_michael", "", 200, "call life_coplevel >= 5"},
			{ "CL_SERT_VEST", "", 200, "license_cop_swat" },
			{ "CL_SERT_VEST2", "", 200, "license_cop_swat" },
			{ "TAC_V_tacv1_SRF", "", 200, "call life_coplevel >= 1" },
			{ "TAC_PBDFG2CPSRF_RG_1", "", 200, "call life_coplevel >= 2" },
			{ "TAC_Sheriff_BA_OD", "", 200, "call life_coplevel >= 3" },
			{ "EF_SH_BK", "", 50, "call life_coplevel >= 2" },
			{ "EF_SH_BW", "", 50, "call life_coplevel >= 2" },
			{ "TAC_V_racv1LC_SRF", "", 200, "call life_coplevel >= 2" },
			{ "EF_BS", "", 200, "call life_coplevel >= 2" }
            
        };
        backpacks[] = {
			{ "D_EF_BLT_M1", "", 100, "call life_coplevel >= 1" },
			{ "D_EF_BLT_M1B", "", 100, "call life_coplevel >= 1" }
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

    class gang_clothing {
        title = "STR_Shops_C_Gang";
        conditions = "";
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
            { "V_Rangemaster_belt", "", 1900, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        conditions = "";
        side = "med";
        uniforms[] = {
			{ "Division_F", "", 100, "call life_mediclevel >= 1" },
			{ "Deputy_F", "", 100, "call life_mediclevel >= 1" },
			{ "Captains_F", "", 100, "call life_mediclevel >= 1" },
			{ "Captain_F", "", 100, "call life_mediclevel >= 1" },
			{ "Jcaptain_F", "", 100, "call life_mediclevel >= 1" },
			{ "lieutenantcom_F", "", 100, "call life_mediclevel >= 1" },
			{ "Lieutenant_F", "", 100, "call life_mediclevel >= 1" },
			{ "SLieutenant_F", "", 100, "call life_mediclevel >= 1" },
			{ "sparamedic_F", "", 100, "call life_mediclevel >= 1" },
			{ "paramedic_F", "", 100, "call life_mediclevel >= 1" },
			{ "Jparamedic_F", "", 100, "call life_mediclevel >= 1" },
			{ "probie_F", "", 100, "call life_mediclevel >= 1" },
			{ "EMSd", "", 100, "call life_mediclevel >= 1" },
			{ "EMSdep", "", 100, "call life_mediclevel >= 1" },
			{ "EMS", "", 100, "call life_mediclevel >= 1" },
			{ "EMSemt", "", 100, "call life_mediclevel >= 1" },
			{ "EMS_suit", "", 100, "call life_mediclevel >= 1" },
			{ "EMSsar", "", 100, "call life_mediclevel >= 1" },
			{ "kw_doctor_Uniform", "", 100, "call life_mediclevel >= 1" },
			{ "EF_F_DR", "", 100, "call life_mediclevel >= 1" },
			{ "kw_schutzanzug_Uniform", "Hazmat Uniform", 100, "call life_mediclevel >= 1" }

        };
        headgear[] = {
			{ "EF_Mcap_EMSB", "", 100, "call life_mediclevel >= 1" },
			{ "H_ALFR_Gasmask", "Maska Gazowa", 100, "call life_mediclevel >= 1" },
			{ "collier_cv", "", 100, "call life_mediclevel >= 1" }

        };
        goggles[] = {
			{ "Masque_Chirurgical", "", 100, "call life_mediclevel >= 1" },
			{ "G_Squares_Tinted", "", 100, "call life_mediclevel >= 1" },
			{ "G_Spectacles", "", 100, "call life_mediclevel >= 1" },
			{ "G_Aviator", "", 100, "call life_mediclevel >= 1" },
			{ "G_Sport_BlackWhite", "", 100, "call life_mediclevel >= 1" },
			{ "G_Spectacles_Tinted", "", 100, "call life_mediclevel >= 1" },
			{ "G_Sport_Blackred", "", 100, "call life_mediclevel >= 1" }
        };
        vests[] = {
			{ "rr_DivisionChief", "", 100, "call life_mediclevel >= 1" },
			{ "rr_DeputyChief", "", 100, "call life_mediclevel >= 1" },
			{ "rr_commandvest", "", 100, "call life_mediclevel >= 1" },
			{ "rr_EMS", "", 100, "call life_mediclevel >= 1" },
			{ "rr_EMSFTO", "", 100, "call life_mediclevel >= 1" },
			{ "rr_emtvest", "", 100, "call life_mediclevel >= 1" },
			{ "rr_paramedicvest", "", 100, "call life_mediclevel >= 1" },
			{ "rr_probievest", "", 100, "call life_mediclevel >= 1" },
			{ "rr_searchrescuevest", "", 100, "call life_mediclevel >= 1" },
			{ "EF_BLT_MEMS", "", 100, "call life_mediclevel >= 1" },
			{ "rr_emtvest", "", 100, "call life_mediclevel >= 1" },
			{ "rr_emtvest", "", 100, "call life_mediclevel >= 1" },
			{ "EF_BLT_MEMS", "", 100, "call life_mediclevel >= 1" }

        };
        backpacks[] = {
			{ "TAC_BP_Butt_B2M", "", 100, "call life_mediclevel >= 1" },
			{ "TAC_BP_Butt_B2M", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_BK", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_OD", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_ucp", "", 100, "call life_mediclevel >= 1" },
			{ "B_AssaultPack_blk", "", 100, "call life_mediclevel >= 1" },
			{ "SAC_SP", "", 500, "" }
        };
    };

	class fd_clothing {
        title = "STR_MAR_FD_Clothing_Shop";
        conditions = "";
        side = "med";
        uniforms[] = {
			{ "FDGAL", "", 100, "call life_mediclevel >= 1" },
			{ "FDGALas", "", 100, "call life_mediclevel >= 1" },
			{ "FDGALFD", "", 100, "call life_mediclevel >= 1" },
			{ "US_FireFighter_CombatUniformblack", "", 100, "call life_mediclevel >= 1" },
			{ "US_FireFighter_CombatUniform", "", 100, "call life_mediclevel >= 1" },
			{ "kw_schutzanzug_Uniform", "Hazmat Uniform", 100, "call life_mediclevel >= 1" },
			{ "EMS_suit", "", 100, "call life_mediclevel >= 1" }
        };
        headgear[] = {
			{ "H_ALFR_Gasmask", "Maska Gazowa", 100, "call life_mediclevel >= 1" },
			{ "US_FireFighter_HelmetBlack", "", 100, "call life_mediclevel >= 1" },
			{ "US_FireFighter_Helmet", "", 100, "call life_mediclevel >= 1" },
			{ "US_FireFighter_HelmetWhite", "", 100, "call life_mediclevel >= 1" }
        };
        goggles[] = {
			{ "US_FireFighter_ARI_Drager_Mask", "", 100, "call life_mediclevel >= 1" },
			{ "G_Squares_Tinted", "", 100, "call life_mediclevel >= 1" },
			{ "G_Spectacles", "", 100, "call life_mediclevel >= 1" },
			{ "G_Aviator", "", 100, "call life_mediclevel >= 1" },
			{ "G_Sport_BlackWhite", "", 100, "call life_mediclevel >= 1" },
			{ "G_Spectacles_Tinted", "", 100, "call life_mediclevel >= 1" },
			{ "G_Sport_Blackred", "", 100, "call life_mediclevel >= 1" }
        };
        vests[] = {
			{ "rr_FireChief", "", 100, "call life_mediclevel >= 1" },
			{ "rr_BattalionChief", "", 100, "call life_mediclevel >= 1" },
			{ "rr_Cadet", "", 100, "call life_mediclevel >= 1" },
			{ "rr_Captain", "", 100, "call life_mediclevel >= 1" },
			{ "rr_Engineer", "", 100, "call life_mediclevel >= 1" },
			{ "rr_FDFTO", "", 100, "call life_mediclevel >= 1" },
			{ "rr_firedep", "", 100, "call life_mediclevel >= 1" },
			{ "rr_Firefighter", "", 100, "call life_mediclevel >= 1" },
			{ "rr_FireMarshall", "", 100, "call life_mediclevel >= 1" },
			{ "rr_Lieutenant", "", 100, "call life_mediclevel >= 1" },
			{ "rr_searchrescuevest", "", 100, "call life_mediclevel >= 1" },
			{ "med_vest_rd", "", 100, "call life_mediclevel >= 1" }

        };
        backpacks[] = {
			{ "US_FireFighter_ARI_Drager", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_BK", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_OD", "", 100, "call life_mediclevel >= 1" },
			{ "TRYK_B_Medbag_ucp", "", 100, "call life_mediclevel >= 1" },
			{ "B_AssaultPack_blk", "", 100, "call life_mediclevel >= 1" }
        };
    };
	
    class reb {
        title = "STR_Shops_C_Rebel";
        conditions = "license_civ_mafia";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "TRYK_SUITS_BLK_F", "", 500, "" },
            { "EF_M_jkt2", "", 500, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_ShemagOpen_khk", "", 650, "" },
            { "EF_HAT_BK", "", 500, "" },
            { "TRYK_H_ghillie_top_green", "", 15000, "" },
            { "TRYK_H_ghillie_top", "", 15000, "" },
            { "TRYK_H_ghillie_over_green", "", 30000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
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
			{ "TAC_HGB_B", "", 5000, "" },
			{ "TRYK_V_ArmorVest_Delta", "", 70000, "" },
			{ "TRYK_V_ArmorVest_Delta2", "", 120000, "" },
			{ "TAC_Punisher_Vest_BK", "", 200000, "" },
			{ "TAC_V_Sheriff_BA_TB", "", 200000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_OutdoorPack_blk", "", 500, "" },
            { "TRYK_B_Carryall_blk", "", 500, "" },
            { "TRYK_B_Carryall_wood", "", 500, "" },
            { "B_AssaultPack_khk", "", 2000, "" },
            { "B_AssaultPack_dgtl", "", 2000, "" },
            { "B_AssaultPack_rgr", "", 2000, "" },
            { "B_AssaultPack_sgg", "", 2000, "" },
            { "B_AssaultPack_blk", "", 2000, "" },
            { "B_AssaultPack_cbr", "", 2000, "" },
            { "B_AssaultPack_mcamo", "", 2000, "" },
            { "B_TacticalPack_oli", "", 2500, "" },
            { "B_Kitbag_mcamo", "", 3500, "" },
            { "B_Kitbag_sgg", "", 3500, "" },
            { "B_Kitbag_cbr", "", 3500, "" },
            { "B_FieldPack_blk", "", 5000, "" },
            { "B_FieldPack_ocamo", "", 5000, "" },
            { "B_FieldPack_oucamo", "", 5000, "" },
            { "B_Bergen_sgg", "", 6500, "" },
            { "B_Bergen_mcamo", "", 6500, "" },
            { "B_Bergen_rgr", "", 6500, "" },
            { "B_Bergen_blk", "", 6500, "" },
            { "B_Carryall_ocamo", "", 7500, "" },
            { "B_Carryall_oucamo", "", 7500, "" },
            { "B_Carryall_mcamo", "", 7500, "" },
            { "B_Carryall_oli", "", 7500, "" },
            { "B_Carryall_khk", "", 7500, "" },
            { "B_Carryall_cbr", "", 7500, "" }
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        conditions = "";
        side = "civ";
        uniforms[] = {
			
            
        };
        headgear[] = {
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
			{ "H_Cap_blk_ION", "", 100, "" },
			{ "H_Cap_police", "", 100, "" },
			{ "H_Cap_surfer", "", 100, "" },
			{ "EF_BNE_BK", "", 100, "" },
			{ "EF_BNE_BR", "", 100, "" },
			{ "EF_BNE_R", "", 100, "" },
			{ "EF_BNE_W", "", 100, "" },
			{ "EF_HAT_BK", "", 100, "" },
			{ "EF_HAT_BW", "", 100, "" },
			{ "EF_HAT_CL", "", 100, "" },
			{ "Payday_GeneralO", "", 100, "" },
			{ "H_Booniehat_oli", "", 100, "" },
			{ "H_StrawHat", "", 100, "" },
			{ "H_StrawHat_dark", "", 100, "" },
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
			{ "TRYK_UA_CAP_U2", "", 100, "" }
            
        };
        goggles[] = {
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
            
        };
        backpacks[] = {
            
        };
    };

    class jd {
        title = "Justice Department";
        conditions = "license_civ_JD";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "KAEL_SUITS_BR_F15", "", 500, "" },
			{ "KAEL_SUITS_BR_F16", "", 500, "" },
			{ "KAEL_SUITS_BR_F17", "", 500, "" },
			{ "KAEL_SUITS_BR_F18", "", 500, "" },
			{ "KAEL_SUITS_BR_F19", "", 500, "" },
			{ "KAEL_SUITS_BR_F20", "", 500, "" },
			{ "KAEL_SUITS_BR_F21", "", 500, "" },
			{ "KAEL_SUITS_BR_F22", "", 500, "" },
			{ "KAEL_SUITS_BR_F23", "", 500, "" },
			{ "KAEL_SUITS_BR_F24", "", 500, "" },
			{ "KAEL_SUITS_BR_F25", "", 500, "" },
			{ "KAEL_SUITS_BR_F29", "", 500, "" },
			{ "KAEL_SUITS_BR_F30", "", 500, "" },
			{ "KAEL_SUITS_BR_F31", "", 500, "" },
			{ "KAEL_SUITS_BR_F32", "", 500, "" },
			{ "KAEL_SUITS_BR_F33", "", 500, "" },
			{ "KAEL_SUITS_BR_F34", "", 500, "" },
			{ "KAEL_SUITS_BR_F35", "", 500, "" }

        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "H_Hat_brown", "", 10, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "TRYK_V_Bulletproof_BLK", "", 3000, "license_civ_JD_J" },			
			{ "TRYK_V_Bulletproof", "", 3000, "license_civ_JD_P" }			
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "TAC_BP_Butt_B", "", 500, "" },		
			{ "TAC_BP_Butt2ACU", "", 500, "" }			
        };
    };

    class alfa_service_shop {
        title = "Alfa Service";
        conditions = "license_civ_alfa_service";
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
			{ "V_Safety_yellow_F", "", 50, "" },
			{ "V_DeckCrew_yellow_F", "", 50, "" },
			{ "V_DeckCrew_orange_F", "", 50, "" },
			{ "V_Pocketed_black_F", "", 50, "" },
			{ "V_Pocketed_coyote_F", "", 50, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
			{ "TAC_BP_KAR_B", "", 50, "" },
			{ "TAC_BP_Butt_B", "", 500, "" },		
			{ "TAC_BP_Butt2ACU", "", 500, "" }						
        };
    };		
};
