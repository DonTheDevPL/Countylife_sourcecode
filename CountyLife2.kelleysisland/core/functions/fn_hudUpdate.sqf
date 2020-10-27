#include "..\..\script_macros.hpp"
/*
    File: fn_hudUpdate.sqf
    Author: Daniel Stuart

    Description:
    Updates the HUD when it needs to.
    
    #
    #	Edited: David
    #
*/

    if (isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};
    LIFEctrl(1101) progressSetPosition (life_hunger / 100);
    //LIFEctrl(1103) progressSetPosition (1 - (damage player));
    LIFEctrl(1102) progressSetPosition (life_thirst / 100);
    LIFEctrl(1100) progressSetPosition (1 - (getFatigue player));

    if(!isNil "life_seatbelt") then {
        if ( vehicle player != player ) then {
            if(life_seatbelt) then {
                LIFEctrl(4203) ctrlSetText "\CL_Client\icons\cl_seatbeltOn.paa";
            } else {
                LIFEctrl(4203) ctrlSetText "\CL_Client\icons\cl_seatbeltOff.paa";
            };
        } else {
            LIFEctrl(4203) ctrlSetText "";
        };
    };

    if(callInProgress) then {
        LIFEctrl(4204) ctrlSetText "\CL_Client\icons\cl_callinprogress.paa";
    } else {
        LIFEctrl(4204) ctrlSetText "";
    };

    if(soundVolume isEqualTo 0.1) then {
        LIFEctrl(4205) ctrlSetText "\CL_Client\icons\cl_earplugs.paa";
    } else {
        LIFEctrl(4205) ctrlSetText "";
    };

    //Text
	/*
    LIFEctrl(1107) ctrlSetStructuredText parseText format["<t>%1</t>", round(((1 - (getFatigue player)) * 100))];
    LIFEctrl(1105) ctrlSetStructuredText parseText format["<t>%1</t>", round((life_thirst / 100) * 100)];
    LIFEctrl(1106) ctrlSetStructuredText parseText format["<t>%1</t>", round((life_hunger / 100) * 100)];
    LIFEctrl(1104) ctrlSetStructuredText parseText format["<t>%1</t>", round(((1 - (damage player)) * 100))];
	*/