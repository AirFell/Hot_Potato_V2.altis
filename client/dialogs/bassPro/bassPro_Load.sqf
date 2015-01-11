#include "bassPro_Defines.hpp";
disableSerialization;
	
_factoryDiag = createdialog "bassPro_Dialog";

_Dialog = findDisplay BASSPRO;
_fundsText = _Dialog displayCtrl FUNDSTEXT;

_resourceCost = 0;
_creditCost = 0;
_credits = playerCredits;
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

ctrlShow [VEHICLELIST, false];
ctrlShow [COSTTEXT, false];
ctrlShow [PURCHASEBUTTON, false];
ctrlShow [BUTTON1, false];
ctrlShow [BUTTON3, false];
ctrlShow [BUTTON5, false];
ctrlShow [BUTTON7, false];
ctrlShow [BUTTON9, false];


if (_base_resources < 1)then{
	_base_resources = 0;
};
if (playerCredits < 1)then{
	_credits = 0;
};

_fundsText ctrlSetStructuredText parseText format["<t size='0.75'>Credits: %2 Resources: %1</t>", _base_resources, _credits];




