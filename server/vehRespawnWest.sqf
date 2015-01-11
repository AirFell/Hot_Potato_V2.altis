/* ----------------------------------------------------------------------------------------------------
File: vehRespawn.sqf
Author: Iceman77
Modified: AirFell
    
Description:
Respawn destroyed and abandoned vehicles
    
Parameter(s):
_this select 0: vehicle 
_this select 1: abandoned delay in minute(s) - Required
_this select 2: destroyed delay in minute(s) - Required

How to use - Vehicle Init Line: 
_nul = [this, 2, 1] execVM "vehrespawn.sqf"; << 2 minute abandoned delay, 1 minute destroyed delay.
---------------------------------------------------------------------------------------------------- */
Marker_Load_Complete = 0;
waitUntil {Marker_Load_Complete == 1};
private "_veh";

_veh = "";
_temp_pos = [];
_pos = [];
_check_pos = [];
_RandomPosW = [];
_tem_posMrk = [];

_veh = _this select 0;
_abandonDelay = (_this select 1) * 60;
_deadDelay = (_this select 2) * 60;
_dir = getDir _veh; 
_temp_pos = westRespawnArray select floor random count westRespawnArray;
_pos = getMarkerPos _temp_pos;
_vehtype = typeOf _veh;
_check_pos = getMarkerPos "west_base_marker";

if (isDedicated) then {
    While {True} Do {
        sleep 1;
		if ((_check_pos distance getMarkerPos "west_base_marker") > 30) then {
			sleep 10;
			_check_pos = getMarkerPos "west_base_marker";
			_temp_pos = "";
			_pos = [];
			_temp_pos = westRespawnArray select floor random count westRespawnArray;
			_pos = getMarkerPos _temp_pos;
			diag_log "_________________West Vehicle Respawn markers updated after base reset.";
		} else {
			if ((alive _veh) && {canMove _veh} && {{alive _x} count crew _veh == 0}) then {
				_abandoned = true;

					for "_i" from 0 to _abandonDelay do {  
						if (({alive _x} count (crew _veh) > 0) || (!alive _veh) || (!canMove _veh)) exitWith {_abandoned = false;};
						sleep 1;  
					};
				 
				if ((_abandoned) && ((_veh distance _pos) > 100)) then {
					deleteVehicle _veh;
					sleep 1;
					
					//Custom Side Choosing Script~ AirFell
					_RandomPosW = westRespawnArray select floor random count westRespawnArray;
					_tem_posMrk = getMarkerPos _RandomPosW;
					_posMrk = [_tem_posMrk, 0, 100, 25, 0, 10, 0] call BIS_fnc_findSafePos;
//					_posMrk = _tem_posMrk findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];
					
					_veh = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
					_veh setDir _dir;
					_veh setPos [_posMrk select 0, _posMrk select 1,0];
					_pos = getPos _veh;
//					"respawn_veh_west" setMarkerPos getPos _veh;
//					_veh setVariable ["R3F_LOG_disabled", false, true];
					diag_log "_____________________Vehicle West respawned after being abandoned.";
				};
			};

			if ((!alive _veh) || (!canMove _veh)) then {
				_dead = true;

					for "_i" from 0 to _deadDelay do {  
						if (({alive _x} count (crew _veh) > 0) || (canMove _veh)) exitWith {_dead = false;};
						sleep 1;  
					};
				 
				if (_dead) then {
					deleteVehicle _veh;
					sleep 1;
					
					//Custom Side Choosing Script~ AirFell
					_RandomPosW = westRespawnArray select floor random count westRespawnArray;
					_tem_posMrk = getMarkerPos _RandomPosW;
					_posMrk = [_tem_posMrk, 0, 100, 25, 0, 10, 0] call BIS_fnc_findSafePos;
//					_posMrk = _tem_posMrk findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];
					
					_veh = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
					_veh setDir _dir;
					_veh setPos [_posMrk select 0, _posMrk select 1,0];
					_pos = getPos _veh;
//					"respawn_veh_west" setMarkerPos getPos _veh;
//					_veh setVariable ["R3F_LOG_disabled", false, true];
					diag_log "_____________________Vehicle West respawned after being destroyed.";
				};
			};
		};
	};
};  