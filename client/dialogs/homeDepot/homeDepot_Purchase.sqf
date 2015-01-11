#include "homeDepot_Defines.hpp";
disableSerialization;

_playerSide = str(playerSide);
_credits = playercredits;
_size = 1;
_price = 0;
_ObjectsInArea = [];
_base_resources = "";

_dialog = findDisplay HOMEDEPOT;
_itemlist = _dialog displayCtrl VEHICLELIST;


hintsilent "Checking Purchase";
closeDialog 0;

//Buy
if(_playerSide == "WEST") then {
	_base_resources = west_base_resources;
	for [{_x=0},{_x<=_size},{_x=_x+1}] do
	{
		_selectedItem = lbCurSel _itemlist;
		_itemText = _itemlist lbText _selectedItem;
		{if(_itemText == _x select 0) then{
			sleep 1;
			_ObjectsInArea = [(getPos west_fort_depot_mrkr) select 0, (getPos west_fort_depot_mrkr) select 1] nearObjects 2;
			if(count _ObjectsInArea <= 20) then {
			_resourceCost = _x select 2;
			_creditCost = _x select 3;
			if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
			if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
				_spawn = createVehicle [(_x select 1),getPos west_fort_depot_mrkr,[], 0,"CAN_COLLIDE"];
				_spawn setDir (getDir west_fort_depot_mrkr) + 180;
					clearMagazineCargoGlobal _spawn;
					clearWeaponCargoGlobal _spawn;
				
				west_base_resources = _base_resources - _resourceCost;
				playerCredits = playerCredits - _creditCost;
				hintsilent "you bought your thing look to the left";
			} else {
				hintsilent "There are too many objects on spawn point";
			};
		}}forEach allFortificationArrays;
	};
};
if(_playerSide == "EAST") then {
	_base_resources = east_base_resources;
	for [{_x=0},{_x<=_size},{_x=_x+1}] do
	{
		_selectedItem = lbCurSel _itemlist;
		_itemText = _itemlist lbText _selectedItem;
		{if(_itemText == _x select 0) then{
			sleep 1;
			_ObjectsInArea = [(getPos east_fort_depot_mrkr) select 0, (getPos east_fort_depot_mrkr) select 1] nearObjects 2;
			if(count _ObjectsInArea <= 20) then {
			_resourceCost = _x select 2;
			_creditCost = _x select 3;
			if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
			if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
				_spawn = createVehicle [(_x select 1),getPos east_fort_depot_mrkr,[], 0,"CAN_COLLIDE"];
				_spawn setDir (getDir east_fort_depot_mrkr) + 180;
					clearMagazineCargoGlobal _spawn;
					clearWeaponCargoGlobal _spawn;				
				east_base_resources = east_base_resources - _resourceCost;
				playerCredits = playerCredits - _creditCost;
				hintsilent "you bought your thing look to the left";
			} else {
				hintsilent "There are too many objects on spawn point";
			};
		}}forEach allFortificationArrays;
	};
};
if(_playerSide == "GUER") then {
	_base_resources = guer_base_resources;
	for [{_x=0},{_x<=_size},{_x=_x+1}] do
	{
		_selectedItem = lbCurSel _itemlist;
		_itemText = _itemlist lbText _selectedItem;
		{if(_itemText == _x select 0) then{
			sleep 1;
			_ObjectsInArea = [(getPos guer_fort_depot_mrkr) select 0, (getPos guer_fort_depot_mrkr) select 1] nearObjects 2;
			if(count _ObjectsInArea <= 20) then {
			_resourceCost = _x select 2;
			_creditCost = _x select 3;
			if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
			if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
				_spawn = createVehicle [(_x select 1),getPos guer_fort_depot_mrkr,[], 0,"CAN_COLLIDE"];
				_spawn setDir (getDir guer_fort_depot_mrkr) + 180;
					clearMagazineCargoGlobal _spawn;
					clearWeaponCargoGlobal _spawn;				
				guer_base_resources = guer_base_resources - _resourceCost;
				playerCredits = playerCredits - _creditCost;
				hintsilent "you bought your thing look to the left";
			} else {
				hintsilent "There are too many objects on spawn point";
			};
		}}forEach allFortificationArrays;
	};
};