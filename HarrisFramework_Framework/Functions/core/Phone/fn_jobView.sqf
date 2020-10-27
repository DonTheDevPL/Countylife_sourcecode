/*
	Author: Ben Harris
	Description: Views Job Details
*/

HRP_fnc_jobView = {
	params["_id"];

	createDialog "HRP_Phone_jobView";

	_job = HRP_onJobsPage select _id;

	_title = _job select 0;
	_desc = _job select 2;
	_pay = _job select 1;
	HRP_jobVar = _job select 3;
	_payMsg = format ["$" + "%1", _pay];

	ctrlSetText [1603, _title];
	ctrlSetText [1605, _desc];
	ctrlSetText [1604, _payMsg];
};