

#include "autoZone_Defines.hpp";
disableSerialization;
private ["_switch", "_dialog", "_vehlisttext", "_vehlist", "_vehArray", "_vehClass", "_vehPicture", "_vehlistIndex"];
_switch = _this select 0;

// Grab access to the controls
_dialog = findDisplay AUTOZONE;
_vehlist = _dialog displayCtrl VEHICLELIST;


lbClear _vehlist;
_vehlist lbSetCurSel -1;

_vehArray = switch (_switch) do {
	case 0: { call vehicleArray_Light };
	case 1: { call vehicleArray_Heavy };
	case 2: { call vehicleArray_Air };
	case 3: { hint "Im not implemented cause im lazy!"};
	default { [] };
};


// Populate the vehicle shop list
{
	_vehClass = _x select 1;
	
	if (1<2) then
	{
		_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
		if (2>1) then
		{
			_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
			_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
			_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
			_vehlist lbSetData [_vehlistIndex, _vehClass];
		};
	};
} forEach _vehArray;