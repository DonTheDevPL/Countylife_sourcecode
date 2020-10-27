HRP_fnc_charMove = {
	while{CShop_Open} do { sleep 0.01; ShopCharacter setdir ((getdir ShopCharacter) + 2); };
};