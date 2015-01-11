#include "autoZone_Defines.hpp";
disableSerialization;
private ["_veh_type", "_price", "_dialog", "_vehlist", "_vehText", "_picture", "_creditPrice", "_itemIndex", "_itemText", "_itemData", "_weap_type", "_resourcePrice"];

//Initialize Values
_veh_type = "";
_picture = "";
_resourceCost = 0;
_creditCost = 0;




// Grab access to the controls
_dialog = findDisplay AUTOZONE;
_vehlist = _dialog displayCtrl VEHICLELIST;
_vehText = _dialog displayCtrl COSTTEXT;

//Get Selected Item
_itemIndex = lbCurSel _vehlist;
_itemText = _vehlist lbText _itemIndex;
_itemData = _vehlist lbData _itemIndex;

_vehText  ctrlSetStructuredText parseText format["<t size='0.75'>Credits: %2 Resources: %1</t>", _resourceCost, _creditCost];

{	
	if (_itemText == _x select 0 && _itemData == _x select 1) then
	{
		_weap_type = _x select 1; 
		_resourceCost = _x select 2;
		_creditCost = _x select 3;
		_vehText ctrlSetStructuredText parseText format["<t size='0.75'>Credits: %2 Resources: %1</t>", _resourceCost, _creditCost];
	};
} forEach allFactoryVehicles;