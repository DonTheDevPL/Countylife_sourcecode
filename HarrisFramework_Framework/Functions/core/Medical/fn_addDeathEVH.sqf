/*
	Author: Ben Harris
	Description: Adds Damage Eventhandler
*/

	HRP_fnc_addDeathEVH = {
			player addEventHandler["HandleDamage",{
			_damage = _this select 2;
			_person = _this select 6;
			_returnDamage = _damage;

			if (currentWeapon _person == "DDOPP_X26" || currentWeapon _person == "DDOPP_X26_bi") exitWith {
				[_person] spawn HRP_fnc_tazed;
				_returnDamage = 0;
				_returnDamage;
			};

			if (currentWeapon _person in HRP_noDamageWeapons && (player distance _person > 3)) exitWith {
				_returnDamage = 0;
				_returnDamage;
			};

			_vehicle = vehicle _person;
			if ( _vehicle isKindOf "Car" || _vehicle isKindOf "Boat" ) then	{
				_speed = speed _vehicle;
				[] spawn KK_fnc_forceRagdoll;
				if(_speed < 25) then { _returnDamage = 0; };
				if(_speed < 50) then { _returnDamage = 0.1; };
				if(_speed > 49) then { _returnDamage = _speed / 100; };
			};

			if (!(player getVariable "unconscious") && _damage >= 0.99 && alive player) then {
				player allowDamage false;
				godMode = false;
				[_person]spawn HRP_fnc_respawnMenu;
				_returnDamage = 0;
				player setVariable ["tf_unable_to_use_radio", true];
				player setVariable ["tf_voiceVolume", 0, true];

				player setVariable ["cuffed", false, true];
				player setVariable ["Shackled", false, true];

				player setVariable ["tied", false, true];

				//[player,_killer,1,format["%1 zabil %2 z dystansu %3 uzywajac %4",_NameKiller, name player, _killDistance, _killweapon],_killweapon,_killDistance] remoteExec ["Server_fnc_actionLog",2];

				if (vehicle player != player) then {
				_count = 0;
				{
					if (_x getVariable "ems" > 0) then {
						_count = _count + 1;
					};
				} forEach allPlayers;

					if (_count > 2) then {
						[vehicle player] call HRP_fnc_createFire;
					};
				};
			};

			if (HRP_Dead) then {
				_returnDamage = 0;
			};

			_returnDamage;
		}];
	};