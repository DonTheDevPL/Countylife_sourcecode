[] spawn
{

waitUntil {time > 10};
 
Init = true;
tempVar = "";
loggedIn = false;

adminVarName = vehicleVarName player;
 
if (adminVarName == "" or isNil "adminVarName") then
{
	adminVarName = format ["Admin_%1", getPlayerUID player];
	player SetVehicleVarName adminVarName;
	player Call Compile Format ["%1=_This; PublicVariable ""%1""", adminVarName];
};

 
/*
keyPressed = 
{
	private ["_key","_shift","_ctrl","_alt"];
	if (dialog) exitWith {false};\
 
	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
 
	if (not (_key == 62 && _shift && !_ctrl && !_alt)) exitWith {false};
 
	closeDialog 0;

	[] spawn JebacJimiego;
	true
};
 
[] spawn 
{
	waitUntil {sleep 0.5; !isNull (findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call keyPressed"];
};
*/
 
JebacJimiego = {
	hintSilent parseText format["<t size='1.3' color='#FF0000'>FeniiiX V2.4</t>"];
	player addAction ["<t color='#6800FF'>=== FeniiiX V2.4 Wersja Admin ===</t>"];
	player addAction ["<t color='#FB00FF'>=== Funkcje Life ===</t>","[]spawn MarlenkaBijeRafatusa;"];
	player addAction ["<t color='#FB00FF'>=== Respienie kasy ===</t>", "[]spawn PiesDoriana"];
//	player addAction ["<t color='#FB00FF'>=== To Potem Dodam #Zapisany He ===</t>","[]spawn RudolfPiesXD;"];
	player addAction ["<t color='#FB00FF'>=== Inne ===</t>", "[]spawn CiekaweRzeczy"];
	player addAction ["<t color='#FF0000'>=== Zamknij Menu ===</t>", "[]spawn DobraSpierdalajKurwaCweluJebany"];
	
};
 
RudolfPiesXD = {
	removeallactions player;
	player addAction ["<t color='#FB00FF'>Deagle + magi</t>", "[]spawn FeniiiX1111"];
	player addAction ["<t color='#FB00FF'>nie klikaj</t>", "[]spawn DorianIYunka"];
	player addAction ["<t color='#FB00FF'>Nie klikaj</t>", "[]spawn MonopolyyyXD"];
	player addAction ["<t color='#FB00FF'>FeniiiX Ls SET</t>", "[]spawn GohaMenelica"];
	player addAction ["<t color='#FF0000'>Menu Startowe</t>", "removeAllActions player; []spawn JebacJimiego"];
};
 
nigger_safes = {
    _amount = 100000 + (count currentcop * 1000);[_amount] call Client_fnc_addBank;
};
 
 
nigger_cdoors = {
    _cashadded = 100000 + (count currentcop * 1000);[_cashadded] call Client_fnc_addCash
};
 
FeniiiX1111 = {
	player addWeapon "launch_RPG7_F";
	player addItem "RPG7_F";
	player addItem "RPG7_F";
	player addItem "RPG7_F";
	player addItem "RPG7_F";
	player addItem "RH_7Rnd_50_AE";
	player addItem "RH_7Rnd_50_AE";

	
};
 
GohaMenelica = {
    player forceAddUniform "sl_client_c_subzero_W";
    player addBackpack "sl_client_c_baglike_b";
    player addHeadgear "EF_Punk_wig_SB3";
    player addGoggles "TRYK_Beard_BK4";
	player addWeapon "RH_uspm";
	player addItem "RH_16Rnd_40cal_usp";
	player addItem "RH_16Rnd_40cal_usp";
	player addItem "RH_16Rnd_40cal_usp";
	player addItem "RH_16Rnd_40cal_usp";
	player addItem "RH_16Rnd_40cal_usp";
	player addItem "ToolKit";
};
 
MonopolyyyXD= {
    player forceAddUniform "sl_client_c_subzero_W";
	player addVest "V_PlateCarrierSpec_mtp";
    player addBackpack "sl_client_c_carryall_invisible";
    player addHeadgear "H_HelmetSpecB_blk";
    player addGoggles "G_Bandanna_khk";
    player addWeapon "HLC_wp_M134Painless";
	player addWeapon "launch_RPG32_F";
	player addWeapon "RH_Deagleg";
    player addItem "30Rnd_762x39_Mag_F";
	player linkItem "TRYK_Headset_NV";
	player addItem "hlc_500rnd_762x51_Belt";
	player addItem "hlc_500rnd_762x51_Belt";
	player addItem "hlc_500rnd_762x51_Belt";
	player addItem "hlc_500rnd_762x51_Belt";
	player addItem "HandGrenade";
	player addItem "HandGrenade";
	player addItem "HandGrenade";
	player addItem "RPG32_F";
	player addItem "RPG32_F";
	player addItem "RPG32_F";
	
   
};
 
DorianIYunka = {
    player forceAddUniform "U_BG_Guerilla2_1";
	player addVest "V_BandollierB_cbr";
    player addBackpack "B_Carryall_khk";
    player addHeadgear "H_Bandanna_cbr";
    player addGoggles "G_Bandanna_tan";
    player addWeapon "hgun_Rook40_F";
    player addItem "16Rnd_9x21_Mag";
	player addItem "16Rnd_9x21_Mag";
	player addItem "16Rnd_9x21_Mag";
	player addItem "16Rnd_9x21_Mag";
	player addItem "FirstAidKit";
	player addItem "FirstAidKit";
	player addItem "FirstAidKit";
	player addItem "FirstAidKit";
	player addItem "ToolKit";
};
 
MarlenkaBijeRafatusa = {
    removeallactions player;
	player addAction ["<t color='#3EFF00'>ATM</t>",life_fnc_atmMenu];
	player addAction ["<t color='#FB00FF'>Sklep z Ubraniami</t>",life_fnc_clothingMenu, 'bruce'];
	player addAction ["<t color='#FB00FF'>Sklep Rebelki z Ubraniami</t>",life_fnc_clothingMenu, 'reb'];
    player addAction ["<t color='#FB00FF'>We� Klucze</t>","[]spawn KluczDoTwojegoSercaaaa;"];
    player addAction ["<t color='#FB00FF'>Zdejmij Kajdanki</t>","[]spawn DobraJaSpierdalamNieMaLatwoNaLazarskim"];
    player addAction ["<t color='#FB00FF'>Zdejmij Kajdanki Celowi</t>","[]spawn JebacMokotowXDDDDDyyyy"];
    player addAction ["<t color='#FB00FF'>Zakuj Cel</t>","[]spawn JebacMrZoombieoooo"];
    player addAction ["<t color='#FB00FF'>Wsadz Osobe do Wiezienia</t>","[]spawn CwelCwelCwelCwelCwelGOHA3zl"];
    player addAction ["<t color='#FB00FF'>Wyciagnij Osobe z Wiezienia</t>","[]spawn 99hphphp99hp999hp999hpp"];
    player addAction ["<t color='#FB00FF'>Zdejmij Efekt Tazera/t>","[]spawn ToNieSaCwiczeniaKurwaRAZRAZ22"];
	player addAction ["<t color='#FB00FF'>Wyci�gnij graczy</t>","[]spawn EZRPTOSZITXDDDD"];
	player addAction ["<t color='#FB00FF'>Eskortuj Cel</t>","[]spawn JABADABUCHUJJJJJ"];
    player addAction ["<t color='#FF0000'>Wroc Do Menu</t>", "removeAllActions player; []spawn JebacJimiego"];
};
 
CiekaweRzeczy = {
    removeallactions player;
	player addAction ["<t color='#FB00FF'>Ulecz Sie</t>","player setDamage 0;"];
	player addAction ["<t color='#FB00FF'>Ulecz Cel</t>","cursorTarget setDamage 0;"];
	player addAction ["<t color='#FB00FF'>Zreanimuj Cel</t>","[]spawn PiesMajoraIKononaToNero"];
	player addAction ["<t color='#FB00FF'>Zabij Cel</t>","cursorTarget setDamage 1;"];
	player addAction ["<t color='#FB00FF'>Zniszcz Cel</t>","cursorTarget setDamage 1;"];
//	player addAction ["<t color='#FB00FF'>Rapid Fire</t>","[]spawn DobreMacroMamPoprostuXDDDDffff"];
//	player addAction ["<t color='#FB00FF'>Unlimited Ammo</t>","[]spawn unnnnliimiitteddd"];
	player addAction ["<t color='#FB00FF'>Map Teleport</t>","[]spawn maptppp"];
	player addAction ["<t color='#FB00FF'>Wywal Gracza</t>","doGetOut cursorTarget;"];
	player addAction ["<t color='#FB00FF'>Usun Cel</t>","deleteVehicle cursorTarget;"];
	player addAction ["<t color='#FB00FF'>ESP</t>","[]spawn MiejskiOsrodekOpiekiSpolecznejDlaRafatusa"];
	player addAction ["<t color='#FB00FF'>Map ESP</t>","[]spawn MARIOLKAMARLENKAJEDENCHUJ"];
	player addAction ["<t color='#FB00FF'>Godmode</t>","[]spawn MiejskiOsrodRafatusagstbclstr"];
	player addAction ["<t color='#FB00FF'>Car Godmode</t>","[]spawn PiesGohyToSonia"];
	player addAction ["<t color='#FB00FF'>Vehicle Upgrade</t>","[]spawn FLYYYVEHICLLEEEE"];
//	player addAction ["<t color='#FB00FF'>Zresp Kroliki</t>","[]spawn RafatusNieJestUzaleznionyOdAlkoholu"];
//	player addAction ["<t color='#FB00FF'>Missile Strike</t>","[]spawn MeneLicaGohaToChujfdtr"];
	player addAction ["<t color='#FB00FF'>Debug Console</t>", "(finddisplay 46) createdisplay 'RscDisplayDebugPublic';"];
	player addAction ["<t color='#FB00FF'>Virtual Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal}];
	player addAction ["<t color='#FB00FF'>Vehicle Garage</t>", {["Open",true] spawn BIS_fnc_garage}];
	player addAction ["<t color='#FF0000'>Wroc Do Menu</t>", "removeAllActions player; []spawn JebacJimiego"];
};
 
PiesDoriana = {
	removeallactions player;
	player addAction ["<t color='#FB00FF'>$10,000</t>","life_cash = life_cash + 10000"];
	player addAction ["<t color='#FB00FF'>$50,000</t>","life_cash = life_cash + 50000"];
	player addAction ["<t color='#FB00FF'>$100,000</t>","life_cash = life_cash + 100000"];
	player addAction ["<t color='#FB00FF'>$500,000</t>","life_cash = life_cash + 500000"];
	player addAction ["<t color='#FB00FF'>$1,000,000</t>","life_cash = life_cash + 1000000"];
	player addAction ["<t color='#FB00FF'>$1,500,000</t>","life_cash = life_cash + 1500000"];
	player addAction ["<t color='#FB00FF'>$2,000,000</t>","life_cash = life_cash + 2000000"];
	player addAction ["<t color='#FB00FF'>$5,000,000</t>","life_cash = life_cash + 5000000"];
	player addAction ["<t color='#FB00FF'>$10,000,000</t>","life_cash = life_cash + 10000000"];
	player addAction ["<t color='#FB00FF'>$50,000,000</t>","life_cash = life_cash + 50000000"];
	player addAction ["<t color='#FB00FF'>$1 Billion</t>","life_cash = life_cash + 1000000000"];
	player addAction ["<t color='#FF0000'>Back To Main Menu</t>", "removeAllActions player; []spawn JebacJimiego"];
};
 
MeneLicaGohaToChujfdtr = {
		Radius = 100;
        smissles = {
                        openMap[false, false];
                        [_pos] spawn {
                            for '_l39'
                            from 0 to Radius do {
                                _l87 = "M_AT";
                                _l88 = [_this select 0 select 0, _this select 0 select 1, (_this select 0 select 2) + 200];
                                _l89 = createVehicle[_l87, _l88, [], 0, "CAN_COLLIDE"];
                                _l89 setvelocity[random 1000.00 - 500, random 1000.00 - 500, 0];
                                [_l89, -90, 0] call BIS_fnc_setPitchBank;
                                sleep(random 0.00001);
                            };
                        };
                    };
                    titleText["Click on map to drop Airstrike", "PLAIN"];
                    titlefadeout 7;
                    onMapSingleClick "_pos call smissles;";
                    openMap[true, false];
};
 
DobraSpierdalajKurwaCweluJebany = {
    removeAllActions player;
};
 
RafatusNieJestUzaleznionyOdAlkoholu = {
 
	for "_spawn" from 0 to 100 do {
	_pos = screentoworld [0.5, 0.5];
	_Rabbitx = _pos select 0;
	_Rabbity = _pos select 1;
	_rabbitz = _pos select 2;
	_rabbitz = _rabbitz + .05;
	_RabbitLocation = [_Rabbitx, _Rabbity, _rabbitz];
	hint format[" %1: Rabbits Spawned", _spawn];
_group1= createGroup Civilian;
_group1 createUnit ["Rabbit_F", _pos, [], 10, "FORM"]; 
sleep 0.05;
};
};
 
JABADABUCHUJJJJJ = {
	private["_unit"];
	_unit = cursorTarget;
	if(isNull _unit) exitWith {};
    
    if(!(_unit isKindOf "Man")) exitWith {};
 
    if(_unit getVariable "Escorting") exitWith
    {
        if(isNull _unit) exitWith {};
        detach _unit;
        _unit setVariable["Escorting",false,true];
    };
    
    _unit attachTo [player,[0,1,0]];
    _unit setVariable["Escorting",true,true];
    player reveal _unit;
};
JebacMrZoombieoooo = {
	private["_unit"];
	_unit = cursorTarget;
	if(isNull _unit) exitWith {};
	if((player distance _unit > 3)) exitWith {};
	if((_unit getVariable "restrained")) exitWith {};
	if(player == _unit) exitWith {};
	if(!isPlayer _unit) exitWith {};
 
    _unit setVariable["restrained",true,true];
    [player] remoteExec ["life_fnc_restrain",_unit];
};
 
JebacMokotowXDDDDDyyyy = {
    private["_unit"];
    _unit = cursorTarget;
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};
 
    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};
 
DobraJaSpierdalamNieMaLatwoNaLazarskim = {
    private["_unit"];
    _unit = param [0,ObjNull,[ObjNull]];
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};
 
    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};
 
KluczDoTwojegoSercaaaa = {
    life_vehicles set [count life_vehicles, cursorTarget];
};
 
99hphphp99hp999hp999hpp = {
    serv_wanted_remove = [cursorTarget];
    cursorTarget setPos(getMarkerPos "jail_release");
    [[getPlayerUID cursorTarget], "life_fnc_wantedRemove", false, false];
};  
CwelCwelCwelCwelCwelGOHA3zl = {
    cursorTarget setPos(getMarkerPos "jail_marker");
};
 
ToNieSaCwiczeniaKurwaRAZRAZ22 = {
    life_istazed = nil;
};  
 
EZRPTOSZITXDDDD = {
    {
           [_x] remoteExecCall ["life_fnc_pulloutVeh",_x];
    } forEach playableunits;
};  
 
PiesMajoraIKononaToNero = {
    [cursorTarget] remoteExecCall ["life_fnc_revived",cursorTarget];
};
 
DobreMacroMamPoprostuXDDDDffff = {
    if (isnil("rf")) then {
        rf = 0;
    };
    if (rf == 0) then {
        rf = 1;
        cutText ["Rapid ON", "PLAIN"];
    } else {
        rf = 0;
        cutText ["Rapid Fire OFF", "PLAIN"];
    };
    while {
        rf == 1
    }
    do {
        (vehicle player) setWeaponReloadingTime[(vehicle player), currentWeapon(vehicle player), 0];
        player setWeaponReloadingTime[player, currentWeapon player, 0];
        sleep 0.01;
    };
};	
	
unnnnliimiitteddd = {
	if (isnil("ammo_amounl")) then {
		ammo_amounl = 0;
	};
	if (ammo_amounl == 0) then {
		ammo_amounl = 1;
		cutText ["Unlimited Ammo ON", "PLAIN"];
	} else {
		ammo_amounl = 0;
		cutText ["Unlimited Ammo OFF", "PLAIN"];
	};
	while {ammo_amounl == 1} do {
		_l25 = primaryWeapon player;
		_l31 = secondaryWeapon player;
		player setAmmo[_l25, 999];
		player setAmmo[_l31, 999];
		(vehicle player) setVehicleAmmo 1;
		(vehicle player) setVehicleAmmo 1;
		sleep 0.01;
	};
};	
 
maptppp = {
    titleText["Select Map Position", "PLAIN"];
    onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
};
 
MiejskiOsrodekOpiekiSpolecznejDlaRafatusa = {
  if (isnil("hiii")) then {
                    hiii = 0;
                };
                if (hiii == 0) then {
                    hiii = 1;
                    cutText ["ESP ON", "PLAIN"];
                } else {
                    hiii = 0;
                    cutText ["ESP OFF", "PLAIN"];
                };
                if (hiii == 1) then {
                    onEachFrame {
                        _Player = nearestobjects[player, ["CAManBase"], 1500]; {
                            if ((getPlayerUID _x != "") && ((player distance _x) < 1500)) then {
                                drawIcon3D["", [1, 0, 0, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2], 0.1, 0.1, 45, (format["%2 : %1m", round(player distance _x), name _x]), 2, 0.03, "puristaMedium"];
                            };
                        }
                        forEach playableUnits;
                    };
                } else {
                    onEachFrame {
                        nil
                    };
                };
 
 
};
 
MARIOLKAMARLENKAJEDENCHUJ = {
                andy_map_Noobs = [];
                andy_map_Bitches = [];
                if (isnil "andy_map_Map_Markers") then {
                        andy_map_Map_Markers = 0;
                };
                if (andy_map_Map_Markers == 0) then {
                        andy_map_Map_Markers = 1;
                        cutText ["Player Markers ON", "PLAIN"];
                } else {
                        andy_map_Map_Markers = 0;
                        cutText ["Player Markers OFF", "PLAIN"];
                };
                while {
                        andy_map_Map_Markers == 1
                }
                do {
                        {
                                if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                                        if (count(crew vehicle _x) > 0) then {
                                                {
                                                        if (!(_x in andy_map_Noobs) and(alive _x) and(getPlayerUID _x != "")) then {
                                                                private["_pos", "_l44", "_l45"];
                                                                _l45 = vehicle _x;
                                                                _pos = visiblePosition _x;
                                                                _l44 = createMarkerLocal[format["CRW%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
                                                                _l8 = (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
                                                                _l44 setMarkerTextLocal format['%1---%2---%3m', name _x, _l8, round(_x distance player)];
                                                                _l44 setMarkerTypeLocal "mil_dot";
                                                                if ((side _x == side player) and(side _x != resistance)) then {
                                                                        _l44 setMarkerColorLocal "ColorBlue";
                                                                } else {
                                                                        _l44 setMarkerColorLocal "ColorRed";
                                                                };
                                                                _l44 setMarkerSizeLocal[1, 1];
                                                                andy_map_Noobs set[count andy_map_Noobs, _x];
                                                                [_x, _l44, _l45] spawn {
                                                                        private["_l46", "_l47", "_l48"];
                                                                        _l46 = _this select 0;
                                                                        _l47 = _this select 1;
                                                                        while {
                                                                                (andy_map_Map_Markers == 1) and(alive _l46) and(vehicle _l46 != _l46) and(getPlayerUID _l46 != "")
                                                                        }
                                                                        do {
                                                                                _l48 = ((crew vehicle _l46) find _l46);
                                                                                _l47 setMarkerPosLocal([(visiblePosition _l46 select 0) + 20, (visiblePosition _l46 select 1) - (25 + _l48 * 20), 0]);
                                                                                sleep 0.01;
                                                                        };
                                                                        deleteMarkerLocal _l47;
                                                                        if (_l46 in andy_map_Noobs) then {
                                                                                andy_map_Noobs set[(andy_map_Noobs find _l46), -1];
                                                                                andy_map_Noobs = andy_map_Noobs - [-1];
                                                                        };
                                                                        true;
                                                                };
                                                        };
                                                }
                                                forEach crew vehicle _x;
                                        };
                                } else {
                                        if (!(_x in andy_map_Bitches) and(vehicle _x == _x) and(getPlayerUID _x != "")) then {
                                                private["_pos", "_l44"];
                                                _pos = visiblePosition _x;
                                                _l44 = createMarkerLocal[format["PLR%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
                                                _l44 setMarkerTypeLocal "mil_dot";
                                                _l44 setMarkerSizeLocal[1, 1];
                                                if ((side _x == side player) and(side _x != resistance)) then {
                                                        _l44 setMarkerColorLocal "ColorWhite";
                                                } else {
                                                        _l44 setMarkerColorLocal "ColorRedAlpha";
                                                };
                                                _l44 setMarkerTextLocal format["%1---%2", name _x, round(_x distance player)];
                                                if (_x == player) then {
                                                        _l44 setMarkerColorLocal "ColorGreen";
                                                };
                                                andy_map_Bitches set[count andy_map_Bitches, _x];
                                                [_x, _l44] spawn {
                                                        private["_l46", "_l47"];
                                                        _l46 = _this select 0;
                                                        _l47 = _this select 1;
                                                        while {
                                                                (andy_map_Map_Markers == 1) and(alive _l46) and(vehicle _l46 == _l46) and(getPlayerUID _l46 != "")
                                                        }
                                                        do {
                                                                _l47 setMarkerPosLocal([visiblePosition _l46 select 0, visiblePosition _l46 select 1, 0]);
                                                                sleep 0.01;
                                                        };
                                                        deleteMarkerLocal _l47;
                                                        if (_l46 in andy_map_Bitches) then {
                                                                andy_map_Bitches set[(andy_map_Bitches find _l46), -1];
                                                                andy_map_Bitches = andy_map_Bitches - [-1];
                                                        };
                                                        true;
                                                };
                                        };
                                };
                        }
                        forEach playableUnits;
                        sleep 0.3;
                }; {
                        _l44 = str _x;
                        deleteMarkerLocal _l44;
                }
                forEach playableUnits;
};
 
PiesGohyToSonia = {
            if (isnil "asdadsa") then {
                    asdadsa = 0
                };
                if (asdadsa == 0) then {
                                        cutText ["Vehicle God ON", "PLAIN"];
                    asdadsa = 1;
                    asdadasdasd = true;
                    while {
                        asdadasdasd
                    }
                    do {
                        if ((vehicle player isKindOf "LandVehicle") || (vehicle player isKindOf "Air") || (vehicle player isKindOf "Ship")) then {
                            if ((fuel(vehicle player)) < 0.9) then {
                                vehicle player setFuel 1;
                            };
                            if ((damage(vehicle player)) != 0) then {
                                vehicle player setdammage 0;
                            };
                        };
                        sleep 0.01;
                    };
                } else {
                                        cutText ["Vehicle God OFF", "PLAIN"];
                    asdadasdasd = false;
                    asdadsa = 0;
                };
				};
				
MiejskiOsrodRafatusagstbclstr = {
                        if (isNil "andysgodmod_toggle") then {
                    andysgodmod_toggle = 0;
                };
                if (andysgodmod_toggle == 0) then {
                    andysgodmod_toggle = 1;
                    cutText ["God ON", "PLAIN"];
                    fnc_usec_damageHandler = {};
                    fnc_usec_unconscious = {};
                    player removeAllEventHandlers "handleDamage";
                    player addEventHandler["handleDamage", {
                        false
                    }];
                    player allowDamage false;
                } else {
                    andysgodmod_toggle = 0;
                    cutText ["God OFF", "PLAIN"];
                    player addEventHandler["handleDamage", {
                        true
                    }];
                    player removeAllEventHandlers "handleDamage";
                    player allowDamage true;
                };
};
 
FLYYYVEHICLLEEEE = {
 
    if (isnil "ayeeee") then {
        ayeeee = 0;
    };
    if (ayeeee == 0) then {
        cutText ["Vehicle Upgrade ON", "PLAIN"];
        cutText ["Shift to boost /n L-CTRL to Stop", "PLAIN"];
		ayeeee = 1;
        ayeyeyeye = true;
        while {
            ayeyeyeye
        }
        do {
            (findDisplay 46) displayAddEventHandler["KeyDown", {
                if ((_this select 1) == 42) then {
                    _vehicle = vehicle player;
                    _vel = velocity player;
                    _dir = direction _vehicle;
                    _speed = 1;
                    _vehicle setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2)];
                
};
            }];
            (findDisplay 46) displayAddEventHandler["KeyDown", {
                if ((_this select 1) == 29) then {
                    vehicle player setVelocity[0, 0, 0];
                };
            }];
            sleep 1;
        };
 
 
    } else {
        cutText ["Vehicle Upgrade OFF", "PLAIN"];
        ayeeee = 0;
        ayeyeyeye = false;
        (findDisplay 46) displayremovealleventhandlers "KeyDown";
        player removealleventhandlers "KeyDown";
    };
};
//Last statements
 
hint "Shift + F4 i Cyk FeniiiX V2.4";
};