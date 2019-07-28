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
                "
                This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.<br/><br/>
                "
        ]
    ];


    player createDiaryRecord ["controls",
        [
            "General controls",
                "
                Y: Open Player Menu.<br/>
                U: Lock and unlock vehicles and houses.<br/>
                T: Vehicle trunk and house virtual item storage.<br/>
                Left Shift + B: Surrender (hands on head).<br/>
                Left Windows: Main interaction key. Used for interacting with objects like vehicles, houses, ATMs, and restrained players. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10.<br/>
                Left Shift + H: Holsters the weapon in your hands.<br/>
                Left Ctrl + H: Revert holster action.<br/>
                Shift + Spacebar: Jump.<br/>
                Left Shift + O: (un)fade sound (ear plugs).<br/><br/>
                "
        ]
    ];
