/*
    File: fn_StartJob.sqf
    Author: Don The Pajac
    Description:
    No chyba widać, służy do rozpoczęcia pracy dla cywila
*/
params ["_job"];

switch (_job) do {
	case "0": {
		occupation = "Śmieciarz";
		hint "Gratuluję \nTwoje podanie o pracę zostało przyjęte \nZostałeś śmieciarzem";


	};
	case "1": {
		occupation = "Kurier";
		hint "Gratuluję \nTwoje podanie o pracę zostało przyjęte \nZostałeś Kurierem";

	};
	case "2": {
		occupation = "Prawnik";
		hint "Gratuluję \nTwoje podanie o pracę zostało przyjęte \nZostałeś prawnikiem";

	};
	case "3": {
		occupation = "Mechanik";
		hint "Gratuluję \nTwoje podanie o pracę zostało przyjęte \nZostałeś mechanikiem";
		player addItem "Toolkit";

	};
};