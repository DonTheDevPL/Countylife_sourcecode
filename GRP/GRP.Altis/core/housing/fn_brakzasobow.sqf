//brakzasobow
//Author: TheWolek
_product = _this select 0;

_randomV = round(random[50,100,200]);
sleep 1;
_msg = format ["Twoja Fabyrka potrzebuje %1 %2 by rozpocząć produkcje!",_randomV,_product];
cutText [_msg,"PLAIN",-1,true,true];
hint _msg;
Factory setVariable["production",false,true];