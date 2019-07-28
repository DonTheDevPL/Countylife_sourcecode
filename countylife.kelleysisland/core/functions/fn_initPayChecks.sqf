#include "..\..\script_macros.hpp"
/*
	File: fn_initPayChecks.sqf
        Author: ScarsoLP
	Description:
	Changes The Player(s) paycheck depending on what rank/level they are in the Police/NHS/Donator. 
        Also changes the palyer(s) paycheck depending on what licenses they have.
*/

/* Changes The Paycheck Depending On Levels */

switch (playerSide) do
{
	case west:
	{
		switch(FETCH_CONST(life_coplevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;};
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 100;}; 
			case 3: {life_paycheck = life_paycheck + 200;}; 
			case 4: {life_paycheck = life_paycheck + 300;}; 
			case 5: {life_paycheck = life_paycheck + 400;}; 
			case 6: {life_paycheck = life_paycheck + 500;}; 
			case 7: {life_paycheck = life_paycheck + 600;};
		};

		if((license_cop_aia) || (license_cop_swat) || (license_cop_dtu)) then{
			life_paycheck = life_paycheck + 30;
		};
	};

	case independent:
	{
		switch(FETCH_CONST(life_mediclevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 100;}; 
			case 3: {life_paycheck = life_paycheck + 200;};
			case 4: {life_paycheck = life_paycheck + 300;};
			case 5: {life_paycheck = life_paycheck + 400;};
		};
	};
	
	case civilian:
	{
		if((license_civ_JD_L) || (license_civ_JD_P)) then {
			life_paycheck = life_paycheck + 50;
		};

		if(license_civ_JD_J) then {
			life_paycheck = life_paycheck + 90;
		};
	};
};