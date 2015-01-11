#include "autoZone_Defines.hpp";
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

_factoryDiag = createdialog "autoZone_Dialog";

_Dialog = findDisplay AUTOZONE;
_fundsText = _Dialog displayCtrl FUNDSTEXT;
_cost = _Dialog displayCtrl COSTTEXT;

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

_fundsText ctrlSetStructuredText parseText format["<t size='0.75'>Credits: %2 Resources: %1</t>", _resources, _credits];
_cost ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: %2 Resource Cost: %1</t>", _resourceCost, _creditCost];



