waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["controls","Controls"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/


    player createDiaryRecord ["changelog",
        [
            "Server Change Log",
            "This section is meant for people doing their own edits to the mission.<br/><br/>"
        ]
    ];


// Controls Section
    player createDiaryRecord ["controls",
        [
            "General controls",
            "
            Y: Tablet.<br/>
            U: Otwórz / Zamnknij pojazdy.<br/>
            T: Bagażnik pojazdu.<br/>
            Left Shift + B: Ręce na głowe.<br/>
            Left Windows: Interakcja. ESC->Konfiguruj->Sterowanie->Akcje użytkownika->Use Action 10.<br/>
            Left Shift + H: Schowaj broń.<br/>
            Left Ctrl + H: Wyciągnij broń.<br/>
            Left Shift + O: Zatyczki.<br/>
            Ctrl + T: Repekt.<br/>
            Shift + G: Powalanie.<br/>
            Shift + R: Zakucie (tylko policja).<br/>
            "
        ]
    ];
