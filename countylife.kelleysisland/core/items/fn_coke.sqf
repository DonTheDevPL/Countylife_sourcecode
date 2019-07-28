//Close inventory
closeDialog 0;

hint "Winners don't use drugs !";
sleep 2;

"radialBlur" ppEffectEnable true;
"ColorInversion" ppEffectEnable true;
enableCamShake true;
player setVariable ["DrugOn",true,true];
    

for "_i" from 0 to 599 do
{
    "ColorInversion" ppEffectAdjust [0.5,0.5,0.5];
    "ColorInversion" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};


"ColorInversion" ppEffectAdjust [0,0,0];
"ColorInversion" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"ColorInversion" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
player setVariable ["DrugOn",false,true];