//TimeExp
//Author: TheWolek
sleep 600; //do zmiany pozniej (5 min aktualnie)
if(playerside == civilian) then {
	["TimePlayed"] spawn mav_ttm_fnc_addExp;
	[]spawn life_fnc_TimeExp;
};
