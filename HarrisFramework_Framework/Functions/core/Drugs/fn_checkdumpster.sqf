//Author: TheWolek
HRP_fnc_checkdumpster ={
	_load = cursorObject getVariable "loot";
	["Szukam","Moze znajde cos co mi sie przyda...",true] spawn HRP_fnc_Notifications;
	player playmovenow "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 4;
	if (_load > 0 ) then {
		_MethArr = ["W_pseudo","W_metyl","W_kolba","W_desk"];
		_DrugArr = ["W_Weed","W_cocaineSeeds","W_MushroomSeeds","W_HeroinSeeds","W_weedSeeds","W_weedBag"];
		_SyfArr = ["CG_WaterCustom02_Item_i","CG_TacBacCustom01_Item_i","CG_TacBacCustom07_Item_i","CG_WaterCustom04_Item_i","CG_Water_Item_i"];
		
		_methloot = selectRandom _MethArr;
		_drugloot = selectRandom _drugArr;
		_syfloot = selectRandom _syfarr;
		_syfloot2 = selectRandom _syfarr;

		player addItem _methloot;
		player addItem _drugloot;
		player addItem _syfloot;
		player addItem _syfloot2;
		["Sukces", "Znalazles cos ciekawego", true] spawn HRP_fnc_Notifications;
		cursorObject setVariable ["loot", 0, true];
	} else {
		["Error", "Nic nie znalazles", true] spawn HRP_fnc_Notifications;
	};

	
};
