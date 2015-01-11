#include "autoZone_Defines.hpp";
disableSerialization;

private ["_playerMoney","_size","_price","_ObjectsInArea","_Dialog","_fundsText","_vehList","_credits","_base_resources","_airClassType","_tankClassType","_spawn1","_spawn2","_spawn3","_spawn4","_spawn5","_playerSide","_purchase","_selectedItem","_vehText","_resourceCost","_creditCost","_ObjectsInArea0","_ObjectsInArea1","_ObjectsInArea2","_ObjectsInArea3","_ObjectsInArea4","_spawnVehicle","_purchase","_spawn"];

_playerMoney = playerCredits;
_size = 0;
_price = 0;
_ObjectsInArea = [];
_Dialog = findDisplay AUTOZONE;
_fundsText = _Dialog displayCtrl FUNDSTEXT;
_vehList = _Dialog displayCtrl VEHICLELIST;
_credits = playerCredits;
_playerSide = str(playerSide);
_base_resources = "";
_airClassType = "";
_tankClassType = "";
_spawn= "";
_spawn1 = "";
_spawn2 = "";
_spawn3 = "";
_spawn4 = "";
_spawn5 = "";
_purchase = "";
_P_uniform = uniform player;

if(_playerSide == "WEST") then {
	_airClassType = "U_B_HeliPilotCoveralls";
	_tankClassType = "U_B_CombatUniform_mcam_vest";
	_base_resources = west_base_resources;
	_spawn1 = west_veh_shop_spawn1;
	_spawn2 = west_veh_shop_spawn2;
	_spawn3 = west_veh_shop_spawn3;
	_spawn4 = west_veh_shop_spawn4;
	_spawn5 = west_veh_shop_spawn5;
};
if(_playerSide == "EAST") then {
	_airClassType = "U_O_PilotCoveralls";
	_tankClassType = "U_O_SpecopsUniform_ocamo";
	_base_resources = east_base_resources;
	_spawn1 = east_veh_shop_spawn1;
	_spawn2 = east_veh_shop_spawn2;
	_spawn3 = east_veh_shop_spawn3;
	_spawn4 = east_veh_shop_spawn4;
	_spawn5 = east_veh_shop_spawn5;
};
if(_playerSide == "GUER") then {
	_airClassType = "U_I_HeliPilotCoveralls";
	_tankClassType = "U_I_CombatUniform";
	_base_resources = guer_base_resources;
	_spawn1 = guer_veh_shop_spawn1;
	_spawn2 = guer_veh_shop_spawn2;
	_spawn3 = guer_veh_shop_spawn3;
	_spawn4 = guer_veh_shop_spawn4;
	_spawn5 = guer_veh_shop_spawn5;
};

for [{_x=0},{_x<=_size},{_x=_x+1}] do {
	_selectedItem = lbCurSel _vehList;
	_vehText = _vehList lbText _selectedItem;
	{if(_vehText == _x select 0) then{
		sleep 1;
		_resourceCost = _x select 2;
		_creditCost = _x select 3;
		if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
		if(_resourceCost > _base_resources) exitWith {hintsilent "You do not have enough Resources"};
		if(_resourceCost < 1) exitWith {};
		if (((_x select 1) isKindOf "Tank")&&(_P_uniform != _tankClassType)) exitWith {hintsilent "You must be a crewman to operate this vehicle."};
		if (((_x select 1) isKindOf "Air")&&(_P_uniform != _airClassType)) exitWith {hintsilent "You must be a pilot to operate this vehicle."};
		_ObjectsInArea0 = [(getPos _spawn1) select 0, (getPos _spawn1) select 1] nearObjects 3;
		_ObjectsInArea1 = [(getPos _spawn2) select 0, (getPos _spawn2) select 1] nearObjects 3;
		_ObjectsInArea2 = [(getPos _spawn3) select 0, (getPos _spawn3) select 1] nearObjects 3;
		_ObjectsInArea3 = [(getPos _spawn4) select 0, (getPos _spawn4) select 1] nearObjects 3;
		_ObjectsInArea4 = [(getPos _spawn5) select 0, (getPos _spawn5) select 1] nearObjects 3;		
		if (((_x select 1) isKindOf "Land")&&(count _ObjectsInArea0 <= 1)) then {
			_purchase = "success";
			_spawn = _spawn1;
		} else {
			if (((_x select 1) isKindOf "Land")&&(count _ObjectsInArea1 <= 1)) then {
				_purchase = "success";
				_spawn = _spawn2;
			} else {
				if (((_x select 1) isKindOf "Land")&&(count _ObjectsInArea2 <= 1)) then {
					_purchase = "success";
					_spawn = _spawn3;
				} else {
					if (((_x select 1) isKindOf "Air")&&(count _ObjectsInArea3 <= 2)) then {
						_purchase = "success";
						_spawn = _spawn4;
					} else {
						if (((_x select 1) isKindOf "Air")&&(count _ObjectsInArea4 <= 2)) then {
							_purchase = "success";
							_spawn = _spawn5;
						} else {
							hintsilent "There is another object or player blocking the spawn point!";
						};
					};
			
				};
				
			};
		};	
		if (_purchase == "success") then {
			if (_playerside == "WEST")then {
				west_base_resources = _base_resources - _resourceCost;
			};
			if (_playerside == "EAST")then {
				east_base_resources = _base_resources - _resourceCost;
			};
			if (_playerside == "GUER")then {
				guer_base_resources = _base_resources - _resourceCost;
			};
			playerCredits = playerCredits - _creditCost;
			_fundsText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: %2 Resource Cost: %1</t>", _base_resources, _credits];
			hintsilent "Vehicle purchase successful";
			closeDialog 0;
			_spawnVehicle = createVehicle [(_x select 1),[getPos _spawn select 0, getPos _spawn select 1, 0],[], 0,"CAN_COLLIDE"];
		    _spawnVehicle setDir (getDir _spawn) + 270;
			clearMagazineCargoGlobal _spawnVehicle;
			clearWeaponCargoGlobal _spawnVehicle;
			sleep 0.5;
			player moveInDriver _spawnVehicle;	
		};
	}}forEach allFactoryVehicles;
};
