/*
	Author: Ben Harris
	Description: Reads The News
*/

HRP_fnc_readNews = {
	params["_id"];

	createDialog "HRP_Phone_newsRead";

	_news = HRP_onPageNews select _id;

	_title = _news select 0;
	_desc = _news select 2;
	_rep = _news select 1;

	ctrlSetText [1231, _title];
	ctrlSetText [1252, _desc];
	ctrlSetText [1233, _rep];
};