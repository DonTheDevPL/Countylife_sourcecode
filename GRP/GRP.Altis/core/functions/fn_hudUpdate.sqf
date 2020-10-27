#include "..\..\script_macros.hpp"

//---------------------------------
//By Repentz 
//---------------------------------


#define INFINITE 1e+1000
#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_FOOD_RING 3200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_WATER_RING 3201
#define IDC_LIFE_BAR_HEALTH 2202
#define IDC_LIFE_BAR_HEALTH_RING 3202
#define IDC_LIFE_BAR_Speaker 3007
#define IDC_LIFE_BAR_SeatBelt 4203

disableSerialization;
if(isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};

//[LIFE_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;

if(!isNil "life_seatbelt") then {
    if ( vehicle player != player ) then {
        if(life_seatbelt) then {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "\GRP\data\seatbeltOn.paa";
        } else {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "\GRP\data\seatbeltOff.paa";
        };
    } else {
        LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "";
    };
};

if(!isNil "life_fadeSound") then
{
	if(life_fadeSound) then
	{
		LIFEctrl(IDC_LIFE_BAR_Speaker) ctrlSetText "\GRP\Data\earplugsY.paa";
	} else {
		LIFEctrl(IDC_LIFE_BAR_Speaker) ctrlSetText "\GRP\data\earplugsN.paa";
	};
};

if(!isNil "life_thirst") then
{
	if (life_thirst <= 100) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water0.paa";
	};

	if (life_thirst <= 90) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water1.paa";
	};

	if (life_thirst <= 80) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water2.paa";
	};

	if (life_thirst <= 70) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water3.paa";
	};

	if (life_thirst <= 60) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water4.paa";
	};

	if (life_thirst <= 50) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water5.paa";
	};

	if (life_thirst <= 40) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water6.paa";
	};

	if (life_thirst <= 30) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water7.paa";
	};

	if (life_thirst <= 20) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water8.paa";
	};

	if (life_thirst <= 10) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water9.paa";
	};

	if (life_thirst <= 0) then
	{
		LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "\GRP\data\water10.paa";
	};
};

if (damage player >= 0) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health0.paa";
};

if (damage player >= 0.01) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health1.paa";
};

if (damage player >= 0.02) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health2.paa";
};

if (damage player >= 0.03) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health3.paa";
};

if (damage player >= 0.07) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health4.paa";
};

if (damage player >= 0.13) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health5.paa";
};

if (damage player >= 0.2) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health6.paa";
};

if (damage player >= 0.3) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health7.paa";
};

if (damage player >= 0.4) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health8.paa";
};

if (damage player >= 0.7) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health9.paa";
};

if (damage player >= 1) then
{
	LIFEctrl(IDC_LIFE_BAR_HEALTH_RING) ctrlSetText "\GRP\data\health10.paa";
};

if(!isNil "life_hunger") then
{
	if (life_hunger <= 100) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food0.paa";
	};

	if (life_hunger <= 90) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food1.paa";
	};

	if (life_hunger <= 80) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food2.paa";
	};

	if (life_hunger <= 70) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food3.paa";
	};

	if (life_hunger <= 60) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food4.paa";
	};

	if (life_hunger <= 50) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food5.paa";
	};

	if (life_hunger <= 40) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food6.paa";
	};

	if (life_hunger <= 30) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food7.paa";
	};

	if (life_hunger <= 20) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food8.paa";
	};

	if (life_hunger <= 10) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food9.paa";
	};

	if (life_hunger <= 0) then
	{
		LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "\GRP\data\food1.paa";
	};
};
[] execVM "core\scripts\custHud.sqf";