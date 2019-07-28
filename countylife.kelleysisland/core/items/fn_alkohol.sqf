//File: fn_alohol.sqf
closeDialog 0;

hint "Aaa...Zimne..Nie da się na raz...";
sleep 5;

"radialBlur" ppEffectEnable true;
enableCamShake true;
player setVariable ["AlkoOn",true,true];

for "_i" from 0 to 179 do
{  
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 7, 5, random 6];
    sleep 1;
};

"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"radialBlur" ppEffectEnable false;
resetCamShake;
player setVariable ["AlkoOn",false,true];