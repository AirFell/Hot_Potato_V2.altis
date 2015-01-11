#include "homeDepot_Defines.hpp";
disableSerialization;

_size = 1;
_price = 0;
_ObjectsInArea = [];
_base_resources = "";

_dialog = findDisplay HOMEDEPOT;
_itemlist = _dialog displayCtrl VEHICLELIST;

switch (side player) do {
	case west: {
		_base_resources = west_base_resources;
		_spawn1 = west_fort_depot_mrkr;
	};
		
	case east: {
		_base_resources = east_base_resources;
		_spawn1 = east_fort_depot_mrkr;
	};
	
	case resistance: {
		_base_resources = guer_base_resources;
		_spawn1 = guer_fort_depot_mrkr;
	};
};

for [{_x=0},{_x<=_size},{_x=_x+1}] do {
	_selectedItem = lbCurSel _itemlist;
	_vehText = _itemlist lbText _selectedItem;
	{if(_vehText == _x select 0) then{
		sleep 1;
		_resourceCost = _x select 2;
		_creditCost = _x select 3;
		if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
		if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
		if(_resourceCost < 1) exitWith {};
		_ObjectsInArea0 = [(getPos _spawn1) select 0, (getPos _spawn1) select 1] nearObjects 3;
		if (((_x select 1) isKindOf "Land")&&(count _ObjectsInArea0 <= 1)) then {
			_purchase = "success";
			_spawn = _spawn1;
		} else {
			hintsilent "There is another object or player blocking the spawn point!";
		};
		if (_purchase == "success") then {
			switch (side player) do {
				case west: {
					west_base_resources = _base_resources - _resourceCost;
				};
					
				case east: {
					east_base_resources = _base_resources - _resourceCost;
				};
				
				case resistance: {
					guer_base_resources = _base_resources - _resourceCost;
				};
			};
			playerCredits = playerCredits - _creditCost;
			_fundsText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: %2 Resource Cost: %1</t>", _base_resources, _credits];
			hintsilent "Item purchase successful";
			closeDialog 0;
			_spawnVehicle = createVehicle [(_x select 1),[getPos _spawn select 0, getPos _spawn select 1, 0],[], 0,"CAN_COLLIDE"];
		};
	}}forEach allFactoryVehicles;
};









/*
hintsilent "Checking Purchase";
closeDialog 0;
if (_playerside == "WEST") then {
	_crate = west_fort_depot_crate;
};
_complete_purchase = {
	_success = false;
	
	_resource_price = (_this select 0)select 3;
	_price = (_this select 0) select 2;
	_name  = (_this select 0) select 1;
	
	if((_price < playerCredits)&&(_resource_price < _base_resources )) then {
				west_base_resources = _base_resources - _resource_price;
				playerCredits = playerCredits - _price;
		_success = true;
	};
	
	_success
};
 */
/*
 * Spawns the given object in at the west_resc_depot_mrkr.
 * Usage: [ "Misc_Cargo1B_military" ] call _spawn_object;
 * Returns: Reference to the object
 */
 /*
_spawn_object = {
	_name = _this select 1;
 
				_spawn = createVehicle [(_x select 1),getPos west_fort_depot_mrkr,[], 0,"CAN_COLLIDE"];
				_spawn setDir (getDir west_fort_depot_mrkr) + 180;
					clearMagazineCargoGlobal _spawn;
					clearWeaponCargoGlobal _spawn;
	
	_spawn
};

	for [{_x=0},{_x<=_size},{_x=_x+1}] do
	{
		_selectedItem = lbCurSel _itemlist;
		_itemText = _itemlist lbText _selectedItem;
		{if(_itemText == _x select 0) then{
		sleep 1;
		_ObjectsInArea = [(getPos west_fort_depot_mrkr) select 0, (getPos west_fort_depot_mrkr) select 1] nearObjects 2;
	
		// Ignore bugs and feathers
		_ignore = [];
		{
			if ( _x isKindOf 'HoneyBee' || _x isKindOf 'DragonFly' || _x isKindOf 'HouseFly' || _x isKindOf 'FxWindPollen1' ) then {
			_ignore = _ignore + [ _x ];
		};
		
		} forEach _ObjectsInArea;
	
		_ObjectsInArea = _ObjectsInArea - _ignore;
		_ObjectsInArea = _ObjectsInArea + ( [(getPos west_fort_depot_mrkr) select 0, (getPos west_fort_depot_mrkr) select 1] nearObjects ['west_fort_depot_crate', 10] );
	

			_resourceCost = _x select 2;
			_creditCost = _x select 3;
			if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
			if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
			if(count _ObjectsInArea <= 1) then {

	} else {
		_obj = nil;
		{
			if ( ! isNil { _x getVariable "R3F_LOG_objets_charges" } ) exitwith {
				_obj = _x;
			}
		} forEach _ObjectsInArea;
		
		if ( ! isNil { _obj getVariable "R3F_LOG_objets_charges" } ) then {
			if (1<2) then {
				if ( [ _x ] call _complete_purchase ) then {
					_purchase = [ _x select 2 ] call _spawn_object;
					
					_objets_charges = _obj getVariable "R3F_LOG_objets_charges";
					_objets_charges = _objets_charges + [_purchase];
					_obj setVariable ["R3F_LOG_objets_charges", _objets_charges, true];
					
					// Choisir une position dégagée (sphère de 50m de rayon) dans le ciel dans un cube de 9km^3
					private ["_nb_tirage_pos", "_position_attache"];
					_position_attache = [random 3000, random 3000, (10000 + (random 3000))];
					_nb_tirage_pos = 1;
					
					while {(!isNull (nearestObject _position_attache)) && (_nb_tirage_pos < 25)} do
					{
						_position_attache = [random 3000, random 3000, (10000 + (random 3000))];
						_nb_tirage_pos = _nb_tirage_pos + 1;
					};
					
					_purchase attachTo [R3F_LOG_PUBVAR_point_attache, _position_attache];
					
					_obj_name = getText (configFile >> "CfgVehicles" >> (typeOf _obj) >> "displayName");
					hintsilent format["Building bought - Check in %1", _obj_name];
			
		}}forEach allFortificationArrays;
	};
*/
