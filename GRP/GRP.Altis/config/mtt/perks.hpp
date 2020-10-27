// -- Weapon related perks
class perk_guns_1 {
	displayName = "Punkty Zasług";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Level 2, 2 Punkty";
	description = "Zdobadź dostęp do lepszych broni wraz z czasem spędzonym na serwerze <br/><br/><t color='#10FF45'>CZ 75<br/>Unica 6<br/>ak74<br/>Uzi</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_guns_1.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_guns_2 {
	displayName = "Punkty Zasług 2";
	requiredPerkPoints = 4;
	requiredLevel = 5;
	requiredPerk = "perk_guns_1";
	subtitle = "Level 5, 4 Punkty";
	description = "Zdobadź dostęp do lepszych broni wraz z czasem spędzonym na serwerze <br/><br/><t color='#10FF45'>AN94<br/>SIG SG 552<br/>AEK971</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_guns_2.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_guns_3 {
	displayName = "Punkty Zasług 3";
	requiredPerkPoints = 3;
	requiredLevel = 12;
	requiredPerk = "perk_guns_2";
	subtitle = "Level 12, 3 Punkty";
	description = "Zdobadź dostęp do lepszych broni wraz z czasem spędzonym na serwerze <br/><br/><t color='#10FF45'>AK12<br/>RPK<br/>G36</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_guns_3.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

// -- Paycheck
class perk_paycheck_1 {
	displayName = "Wypłata";
	requiredPerkPoints = 2;
	requiredLevel = 1;
	requiredPerk = "";
	subtitle = "Level 1, 2 Punkty";
	description = "Otrzymuj większe wypłaty co 10 minut<br/><br/><t color='#10FF45'>+5% więcej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_1.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_paycheck_2 {
	displayName = "Paycheck 2";
	requiredPerkPoints = 3;
	requiredLevel = 8;
	requiredPerk = "perk_paycheck_1";
	subtitle = "Level 8, 3 Punkty";
	description = "Otrzymuj większe wypłaty co 10 minut<br/><br/><t color='#10FF45'>+10% więcej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_2.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_paycheck_3 {
	displayName = "Paycheck 3";
	requiredPerkPoints = 3;
	requiredLevel = 15;
	requiredPerk = "perk_paycheck_2";
	subtitle = "Level 15, 3 Punkty";
	description = "Otrzymuj większe wypłaty co 10 minut<br/><br/><t color='#10FF45'>+30% więcej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_3.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_paycheck_4 {
	displayName = "Paycheck 4";
	requiredPerkPoints = 3;
	requiredLevel = 30;
	requiredPerk = "perk_paycheck_3";
	subtitle = "Level 30, 3 Punktów";
	description = "Otrzymuj większe wypłaty co 10 minut<br/><br/><t color='#10FF45'>+50% więcej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_4.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

// -- Faster processing
class perk_processing_1 {
	displayName = "Processing Speed";
	requiredPerkPoints = 3;
	requiredLevel = 4;
	requiredPerk = "";
	subtitle = "Level 4, 3 Punkty";
	description = "Przetwarzaj surowce w gotowe produkty szybciej<br/><br/><t color='#10FF45'>+10% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_processSpeed_1.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_processing_2 {
	displayName = "Processing Speed 2";
	requiredPerkPoints = 3;
	requiredLevel = 7;
	requiredPerk = "perk_processing_1";
	subtitle = "Level 7, 3 Punkty";
	description = "Przetwarzaj surowce w gotowe produkty szybciej<br/><br/><t color='#10FF45'>+15% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_processSpeed_2.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_processing_3 {
	displayName = "Processing Speed 3";
	requiredPerkPoints = 4;
	requiredLevel = 28;
	requiredPerk = "perk_processing_2";
	subtitle = "Level 28, 4 Punkty";
	description = "Przetwarzaj surowce w gotowe produkty szybciej<br/><br/><t color='#10FF45'>+25% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_processSpeed_3.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

// -- Faster lockpicking
class perk_locksmith_1 {
	displayName = "Locksmith";
	requiredPerkPoints = 5;
	requiredLevel = 4;
	requiredPerk = "";
	subtitle = "Level 4 Required, 5 Perk Points";
	description = "Wytrychuj szybciej i bardziej efektywniej pojazdy<br/><br/><t color='#10FF45'>+10% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_1.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_locksmith_2 {
	displayName = "Locksmith 2";
	requiredPerkPoints = 6;
	requiredLevel = 16;
	requiredPerk = "perk_locksmith_1";
	subtitle = "Level 16 Required, 6 Perk Points";
	description = "Wytrychuj szybciej i bardziej efektywniej pojazdy<br/><br/><t color='#10FF45'>+15% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_2.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_locksmith_3 {
	displayName = "Locksmith 3";
	requiredPerkPoints = 4;
	requiredLevel = 28;
	requiredPerk = "perk_locksmith_2";
	subtitle = "Level 28 Required, 4 Perk Points";
	description = "Wytrychuj szybciej i bardziej efektywniej pojazdy<br/><br/><t color='#10FF45'>+25% szybciej</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_3.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

// szybsza naprawa

class perk_fasterrepair_1 {
	displayName = "Mechanik";
	requiredPerkPoints = 5;
	requiredLevel = 1;
	requiredPerk = "";
	subtitle = "Level 1, 5 Punktów";
	description = "Naucz się efektywniej naprawiać samochody i zmniejsz czas naprawy o<br/><br/><t color='#10FF45'>+20%</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_fasterrepair_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_fasterrepair_2 {
	displayName = "Mechanik 2";
	requiredPerkPoints = 8;
	requiredLevel = 7;
	requiredPerk = "perk_fasterrepair_1";
	subtitle = "Level 7, 8 Punktów";
	description = "Naucz się efektywniej naprawiać samochody i zmniejsz czas naprawy o<br/><br/><t color='#10FF45'>+30%</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_fasterrepair_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_fasterrepair_3 {
	displayName = "Mechanik 3";
	requiredPerkPoints = 8;
	requiredLevel = 15;
	requiredPerk = "perk_fasterrepair_2";
	subtitle = "Level 15, 8 Punktów";
	description = "Naucz się efektywniej naprawiać samochody i zmniejsz czas naprawy o<br/><br/><t color='#10FF45'>+50%</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_fasterrepair_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};