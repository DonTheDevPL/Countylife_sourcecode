/*
	Author: Ben Harris
	Description: Opens the License Menu
*/

HRP_fnc_openLicenseMenu = {
	params["_shopConfig"];	
	HRP_Config = _shopConfig;

	createDialog "HRP_licenseShop";
	waitUntil {!isNull (findDisplay 5016)};
	_license = player getVariable "licenses";
	{
			_licenseArray = _x select 1;
			_licenseCompiled = (call compile _licenseArray) select 0;
			if !(_licenseCompiled in _license) then {
				_name = format ["%1 - $%2", _x select 0, (call compile (_x select 1)) select 1];
				_index = lbAdd [1500, _name];
				lbSetData [1500, _index, ( _x select 1 )];
			} else {
				_index = lbAdd [1501, ( _x select 0 )];
			};
	} foreach _shopConfig;	
};