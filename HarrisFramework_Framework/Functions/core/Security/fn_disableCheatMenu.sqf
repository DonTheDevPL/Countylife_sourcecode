HRP_fnc_disableCheatMenu = {

    {
        _x displayAddEventHandler [ "KeyDown", { _this call {

                _key = _this select 1;

                _shift = _this select 2;

                if ( _key isEqualTo 74 && { _shift } ) exitWith {

                    if ( !( userInputDisabled ) ) then {

                        disableUserInput true;

                        if ( userInputDisabled ) then {

                            disableUserInput false;

                        };

                    };

                    _msg = format ["%1 (%2) just attempted to use the Hack Menu", (player getVariable "playerName"), getPlayerUID player];

                    _test = 10;
                    while {_test > 0} do 
                    {
                        diag_log _msg;
                        _test = _test - 1;
                    };

                    true

                };

            };

        }];

    } forEach allDisplays;
};