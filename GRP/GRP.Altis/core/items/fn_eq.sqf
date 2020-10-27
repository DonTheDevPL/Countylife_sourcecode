_type = _this select 0;
switch (_type) do {
	//testowy
	case 0: { 
		removeAllitems player;
		removeUniform player;
		removeVest player;

		player addUniform "grp_so_khaki_sergeant";
		player addVest "TAC_Sheriff_BA_OD";
	};
};