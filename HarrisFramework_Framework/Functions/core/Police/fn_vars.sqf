//fn_vars.sqf

//_crate = _this select 0;
//params["_crate"];
HRP_fnc_vars = {
	//cursorObject;
	//_licenses = player getVariable "licenses";

	//Headgears
	_availableHeadgear = [
		"M_sheriffhat",
		"TRYK_H_headsetcap_Glasses",
		"TRYK_H_headsetcap_blk_Glasses",
		"TRYK_R_CAP_BLK",
		"TRYK_r_cap_blk_Glasses"
	];

	if ((player getvariable "cop") > 2) then {
		_availableHeadgear2 = [
			"TRYK_H_woolhat",
			"TRYK_H_woolhat_br"
		];
		_availableHeadgear = _availableHeadgear + _availableHeadgear2;
	};
	if ((player getvariable "cop") > 4) then {
		_availableHeadgear2 = [

		];
		_availableHeadgear = _availableHeadgear + _availableHeadgear2;
	};

	//Googles / Glasses
	_availableGoggles = [
		"G_Aviator",
		"G_Shades_Black",
		"G_Squares",
		"G_Spectacles",
		"G_Spectacles_Tinted"
	];

	if ((player getvariable "cop") > 2) then {
		_availableGoggles2 = [

		];
		_availableGoggles = _availableGoggles + _availableGoggles2;
	};

	//Uniforms
	_availableUniforms = [
		"prp_hoodie_srf_blue",
		"prp_hoodie_blue_jeans",
		"prp_hoodie_srf_blue_command",
		"prp_hoodie_blue_command_jeans",
		"prp_hoodie_srf_green",
		"prp_hoodie_green_jeans",
		"prp_hoodie_srf_green_command",
		"prp_hoodie_green_command_jeans",
		"prp_hoodie_dtu1",
		"prp_hoodie_dtu1_jeans",
		"prp_hoodie_dtu2",
		"prp_hoodie_dtu2_jeans",
		"prp_hoodie_dtu3",
		"prp_hoodie_dtu3_jeans",
		"prp_hoodie_sert_1",
		"prp_hoodie_sert_1_jeans"

	];

	if ((player getvariable "cop") > 4) then {
		_availableUniforms2 = [

		];
		_availableUniforms = _availableUniforms + _availableUniforms2;
	};

	//Vests
	_availableVests = [
		"prp_sheriff_vest",
		"prp_sheriff_vest_cb",
		"prp_sert_vest",
		"prp_sert_vest_leader",
		"prp_sert_vest_op",
		"prp_aiad_vest"

	];

	if ((player getvariable "cop") > 4) then {
		_availableVests2 = [

		];
		_availableVests = _availableVests + _availableVests2;
	};

	//Backpacks
	_availableBackpacks = [
		"D_EF_BLT_M1",
		"D_EF_BLT_M1B"

	];

	//Magazines
	_availableMagazine = [
		"RH_15Rnd_9x19_M9", //Beretta
		"RH_20Rnd_57x28_FN", //fn57
		"KA_17Rnd_9x19_Mag", //G17
		"RH_17Rnd_9x19_g17", //G19
		"RH_12Rnd_45cal_usp" //usp
	];

	if ((player getvariable "cop") > 2) then {
		_availableMagazine2 = [
			"hlc_30Rnd_9x19_B_MP5",
			"hlc_30rnd_556x45_EPR_G36"
		];
		_availableMagazine = _availableMagazine + _availableMagazine2;
	};

	if ((player getvariable "cop") > 6) then {
		_availableMagazine3 = [
			"30Rnd_556x45_Stanag",
			"KA_CS5_10rnd_Mk316_SPR_mag"
		];
		_availableMagazine = _availableMagazine + _availableMagazine3;
	};

	//Weapons
	_availableWeapons = [
		"RH_m9",
		"RH_fn57",
		"KA_Glock_17_Single",
		"RH_g19",
		"RH_usp"
	];

	if ((player getvariable "cop") > 2) then {
		_availableWeapons2 = [
			"hlc_smg_mp5a3",
			"hlc_rifle_G36C",
			"hlc_rifle_G36K1KSK"
		];
		_availableWeapons = _availableWeapons + _availableWeapons2;
	};

	if ((player getvariable "cop") > 6) then {
		_availableWeapons3 = [
			"hlc_rifle_RU5562",
			"KA_CS5"
		];
		_availableWeapons = _availableWeapons + _availableWeapons3;
	};

	//Attachments
	_availableAttachments = [
		"optic_Holosight_smg_blk_F",
		"optic_Holosight_blk_F",
		"KA_Eotech553",
		"KA_Rakurs"
	];

	if ((player getvariable "cop") > 4) then {
		_availableAttachments2 = [

		];
		_availableAttachments = _availableAttachments + _availableAttachments2;
	};

	//SERT
	/*
	if("SERT_License" in (player getvariable "licenses")) then {
		
		_availableUniformsSERT = [
			"VSM_Multicam_Crye_od_pants_Camo",
			"VSM_Multicam_Crye_od_shirt_Camo",
			"VSM_Multicam_Crye_Camo",
			"TRYK_U_B_OD_OD_CombatUniform"
		];

		_availableVestsSERT = [
			"VSM_CarrierRig_Operator_Multicam",
			"VSM_CarrierRig_Breacher_Multicam",
			"VSM_CarrierRig_Operator_OGA_OD",
			"VSM_CarrierRig_Breacher_OGA_OD"
		];

		_availableHeadgearSERT = [
			"VSM_Black_OPS_2",
			"VSM_OGA_OD_OPS_2",
			"VSM_BackwardsHat_Peltor_US",
			"VSM_BackwardsHat_Peltor_OD",
			"TRYK_Kio_Balaclava"
		];

		_availableGogglesSERT = [
			"TRYK_kio_balaclava_ESS",
			"G_Bandanna_shades",
			"G_Bandanna_beast",
			"G_Bandanna_blk",
			"TRYK_US_ESS_Glasses_BLK"
		];

		_availableWeaponsSERT = [
			"hlc_smg_mp5N",
			"hlc_smg_mp5sd5",
			"hlc_rifle_G36C"
		];

		_availableMagazineSERT = [
			"hlc_30Rnd_9x19_B_MP5",
			"hlc_30Rnd_9x19_SD_MP5"
		];
		_availableWeapons = _availableWeapons + _availableWeaponsSERT;
		_availableMagazine = _availableMagazine + _availableMagazineSERT;
		_availableUniforms = _availableUniforms + _availableUniformsSERT;
		_availableVests = _availableVests + _availableVestsSERT;
		_availableHeadgear = _availableHeadgear + _availableHeadgearSERT;
		_availableGoggles = _availableGoggles + _availableGogglesSERT;

		//LVL 5
		if (player getVariable "cop" > 4) then {
			_availableUniformsSERT2 = [
				"VSM_Multicam_od_pants_Camo",
				"VSM_Multicam_tan_pants_Camo",
				"VSM_Multicam_od_shirt_Camo",
				"VSM_Multicam_Camo"
			];

			_availableVestsSERT2 = [
				"VSM_FAPC_Operator_Multicam",
				"VSM_FAPC_Breacher_Multicam",
				"VSM_LBT6094_operator_Multicam",
				"VSM_LBT6094_breacher_Multicam"
			];

			_availableHeadgearSERT2 = [
				"CPE_SWAT_FAST_1"
			];

			_availableGogglesSERT2 = [
				"G_Bandanna_aviator"
			];

			_availableWeaponsSERT2 = [
				"hlc_rifle_RU5562"
			];

			_availableMagazineSERT2 = [
				"30Rnd_556x45_Stanag"
			];

			_availableWeapons = _availableWeapons + _availableWeaponsSERT2;
			_availableMagazine = _availableMagazine + _availableMagazineSERT2;
			_availableUniforms = _availableUniforms + _availableUniformsSERT2;
			_availableVests = _availableVests + _availableVestsSERT2;
			_availableHeadgear = _availableHeadgear + _availableHeadgearSERT2;
			_availableGoggles = _availableGoggles + _availableGogglesSERT2;
		};

		//LVL 6
		if (player getvariable "cop" > 5) then {
			_availableWeaponsSERT3 = [
				"KA_CS5"
			];
			_availableMagazineSERT3 = [
				"KA_CS5_10rnd_Mk316_SPR_mag"
			];
			_availableWeapons = _availableWeapons + _availableWeaponsSERT3;
			_availableMagazine = _availableMagazine + _availableMagazineSERT3;
		};

		//LVL 8
		if (player getVariable "cop" > 7) then {
			_availableWeaponsSERT4 = [
				"KA_DSR50"
			];
			_availableMagazineSERT4 = [
				"KA_DSR50_3Rnd_M17_Tracer_Mag"
			];

			_availableWeapons = _availableWeapons + _availableWeaponsSERT4;
			_availableMagazine = _availableMagazine + _availableMagazineSERT4;

			_availableAttachmentsSERT = [
				"optic_DMS"
			];
			_availableAttachments = _availableAttachments + _availableAttachmentsSERT;
		};
		
	};
	*/

	//Items
	_availableItems = [
		"ItemMap",
		"ItemGPS",
		"itemCompass",
		"Binocular",
		"CG_Water_Item_i",
		"CG_TacBac_Item_i",
		"CG_TacBacCustom01_Item_i",
		"ToolKit",
		"W_Bandage",
		"W_legshackles",
		"W_handcuff",
		"tf_anprc152",
		"W_cuffkeys"
	];

	[cursorObject,((backpackCargo cursorObject) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
	[cursorObject,((itemCargo cursorObject) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests + _availableAttachments + _availableItems)] call BIS_fnc_addVirtualItemCargo;
	[cursorObject,((magazineCargo cursorObject) + _availableMagazine)] call BIS_fnc_addVirtualMagazineCargo;
	[cursorObject,((weaponCargo cursorObject) + _availableWeapons)] call BIS_fnc_addVirtualWeaponCargo;
	["AmmoboxInit",[cursorObject,false,{true}]] spawn BIS_fnc_arsenal;
};
