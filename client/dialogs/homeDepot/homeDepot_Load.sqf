#include "homeDepot_Defines.hpp";
disableSerialization;

_base_resources = "";
		_playerSide = str(playerSide);
		if(_playerSide == "WEST") then {
			_base_resources = west_base_resources;
		};
		if(_playerSide == "EAST") then {
			_base_resources = east_base_resources;
		};
		if(_playerSide == "GUER") then {
			_base_resources = guer_base_resources;
		};
		
_depotDiag = createdialog "homeDepot_Dialog";

_Dialog = findDisplay HOMEDEPOT;
_fundsText = _Dialog displayCtrl FUNDSTEXT;
_cost = _Dialog displayCtrl COSTTEXT;
_vehlist = _dialog displayCtrl VEHICLELIST;

lbClear _vehlist;
_vehlist lbSetCurSel -1;


// Populate fortification list
{
	_vehClass = _x select 1;
	
	if (1<2) then
	{
		_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
		if (2>1) then
		{
			//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
			_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
			//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
			_vehlist lbSetData [_vehlistIndex, _vehClass];
		};
	};
} forEach allFortificationArrays;
_resourceCost = 0;
_creditCost = 0;
_credits = playerCredits;
_resources = _base_resources;


if (_base_resources < 1)then{
	_resources = 0;
};
if (playerCredits < 1)then{
	_credits = 0;
};

_fundsText ctrlSetStructuredText parseText format["<t size='0.75'> Credits: %2 Resources: %1 </t>", _resources, _credits];
_cost ctrlSetStructuredText parseText format["<t size='0.75'>Resource Cost: %1 Credit Cost: %2</t>", _resourceCost, _creditCost];



