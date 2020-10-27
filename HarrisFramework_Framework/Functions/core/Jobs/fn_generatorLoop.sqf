/*
	Author: Ben Harris
	Description: Sound Loop for Generator / Processing Unit
*/

HRP_fnc_generatorLoop = {
	params["_pos"];
	while {true} do
	{
		if !(_playSound) exitWith {};
		playSound3D ["HarrisFramework_Client2\Sounds\Generator.wav", _pos];
		sleep 5;
	};	
};

