/* ----------------------------------------------------------------------------------------------------
File: vehRespawn.sqf
Author: Iceman77
Modified: AirFell
---------------------------------------------------------------------------------------------------- */

diag_log "BaseRespawn.sqf loaded.";
	
		if (Base_Destroyed_Tracker == 1) then {
		
			_vehtype = "Land_Cargo_Tower_V1_No1_F";
			
			switch (Bombed_Team) do {
				case west: {

					west_base setVehicleVarName "";
					publicVariable "west_base";
					west_veh_shop setVehicleVarName "";
					publicVariable "west_veh_shop";
					west_inf_shop setVehicleVarName "";
					publicVariable "west_inf_shop";
					west_fort_shop setVehicleVarName "";
					publicVariable "west_fort_shop";
					west_resc_depot_ctrl setVehicleVarName "";
					publicVariable "west_resc_depot_ctrl";
					west_resc_depot_mrkr setVehicleVarName "";
					publicVariable "west_resc_depot_mrkr";
					west_veh_shop_spawn1 setVehicleVarName "";
					publicVariable "west_veh_shop_spawn1";
					west_veh_shop_spawn2 setVehicleVarName "";
					publicVariable "west_veh_shop_spawn2";
					west_veh_shop_spawn3 setVehicleVarName "";
					publicVariable "west_veh_shop_spawn3";
					west_veh_shop_spawn4 setVehicleVarName "";
					publicVariable "west_veh_shop_spawn4";
					west_veh_shop_spawn5 setVehicleVarName "";
					publicVariable "west_veh_shop_spawn5";
					west_base_resources = 0;
					publicVariable "west_base_resources";
					sleep 5;
					
					_RandomPos_West_Base = West_Base_Array call BIS_fnc_selectRandom;
					_posMrk = getMarkerPos _RandomPos_West_Base;
//					_posMrk = getMarkerPos "west_base_respawn";
						
					west_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
					west_base setPos [_posMrk select 0, _posMrk select 1,0];
					
					west_base setVehicleVarName "west_base";
					publicVariable "west_base";
					west_base addEventHandler ["HandleDamage", {false}];
					west_base setVariable ["R3F_LOG_disabled", true, true];
						
					
					"west_base_marker" setMarkerPos getPos west_base;
					sleep 0.1;
					"mrkBlue" setMarkerPos getMarkerPos "west_base_marker";
					"mrknoBlue" setMarkerPos getMarkerPos "west_base_marker";
					
					{
						deleteMarker _x;
					} foreach westRespawnArray;
					westRespawnArray = [];
					publicVariable "westRespawnArray";
					
					_nul = []execVM "server\randomMarkerGen.sqf";
					
					Base_Destroyed_Tracker = 0;
					publicVariable "Base_Destroyed_Tracker";
						
					diag_log format ["Case West: Base %1 respawned", Bombed_Team];

					West_Base_Array = West_Base_Array - [_RandomPos_West_Base];

					diag_log format ["_RandomPos_West_Base: %1", _RandomPos_West_Base];
					diag_log format ["Updated West_Base_Array: %1", West_Base_Array];
					
//New Respawn Marker System
					_pos = getPos west_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_west" setMarkerPos _mkr_pos;
/*
//Commented out to test new respawn marker system.
					_pos = getPos west_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_west2" setMarkerPos _mkr_pos;
*/
					["BaseOption1", 0, getPos west_base] execVM "server\compositions\createBase.sqf";
					_nul = execVM "server\compositions\west_base_objects.sqf";
				};
				case east: {
				
					east_base setVehicleVarName "";
					publicVariable "east_base";
					east_veh_shop setVehicleVarName "";
					publicVariable "east_veh_shop";
					east_inf_shop setVehicleVarName "";
					publicVariable "east_inf_shop";
					east_fort_shop setVehicleVarName "";
					publicVariable "east_fort_shop";
					east_resc_depot_ctrl setVehicleVarName "";
					publicVariable "east_resc_depot_ctrl";
					east_resc_depot_mrkr setVehicleVarName "";
					publicVariable "east_resc_depot_mrkr";
					east_veh_shop_spawn1 setVehicleVarName "";
					publicVariable "east_veh_shop_spawn1";
					east_veh_shop_spawn2 setVehicleVarName "";
					publicVariable "east_veh_shop_spawn2";
					east_veh_shop_spawn3 setVehicleVarName "";
					publicVariable "east_veh_shop_spawn3";
					east_veh_shop_spawn4 setVehicleVarName "";
					publicVariable "east_veh_shop_spawn4";
					east_veh_shop_spawn5 setVehicleVarName "";
					publicVariable "east_veh_shop_spawn5";
					east_base_resources = 0;
					publicVariable "east_base_resources";
					sleep 5;
					
					_RandomPos_East_Base = East_Base_Array call BIS_fnc_selectRandom;
					_posMrk = getMarkerPos _RandomPos_East_Base;
//					_posMrk = getMarkerPos "east_base_respawn";
							
					east_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
					east_base setPos [_posMrk select 0, _posMrk select 1,0];
						
					east_base setVehicleVarName "east_base";
					publicVariable "east_base";
					east_base addEventHandler ["HandleDamage", {false}];
					east_base setVariable ["R3F_LOG_disabled", true, true];
					
					"east_base_marker" setMarkerPos getPos east_base;
					sleep 0.1;
					"mrkRed" setMarkerPos getMarkerPos "east_base_marker";
					"mrknoRed" setMarkerPos getMarkerPos "east_base_marker";
					
					{
						deleteMarker _x;
					} foreach eastRespawnArray;
					eastRespawnArray = [];
					publicVariable "eastRespawnArray";
					
					_nul = []execVM "server\randomMarkerGen.sqf";
						
					Base_Destroyed_Tracker = 0;
					publicVariable "Base_Destroyed_Tracker";
						
					diag_log format ["Case East: Base %1 respawned", Bombed_Team];

					East_Base_Array = East_Base_Array - [_RandomPos_East_Base];

					diag_log format ["_RandomPos_East_Base: %1", _RandomPos_East_Base];
					diag_log format ["Updated East_Base_Array: %1", East_Base_Array];
					
//New respawn system
					_pos = getPos east_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_east" setMarkerPos _mkr_pos;

/*
//Commented out to test new respawn marker system.
					_pos = getPos east_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_east2" setMarkerPos _mkr_pos;
*/
					["BaseOption1", 0, getPos east_base] execVM "server\compositions\createBase.sqf";
					_nul = execVM "server\compositions\east_base_objects.sqf";
				};
				case resistance: {
				
					guer_base setVehicleVarName "";
					publicVariable "guer_base";
					guer_veh_shop setVehicleVarName "";
					publicVariable "guer_veh_shop";
					guer_inf_shop setVehicleVarName "";
					publicVariable "guer_inf_shop";
					guer_fort_shop setVehicleVarName "";
					publicVariable "guer_fort_shop";
					guer_resc_depot_ctrl setVehicleVarName "";
					publicVariable "guer_resc_depot_ctrl";
					guer_resc_depot_mrkr setVehicleVarName "";
					publicVariable "guer_resc_depot_mrkr";
					guer_veh_shop_spawn1 setVehicleVarName "";
					publicVariable "guer_veh_shop_spawn1";
					guer_veh_shop_spawn2 setVehicleVarName "";
					publicVariable "guer_veh_shop_spawn2";
					guer_veh_shop_spawn3 setVehicleVarName "";
					publicVariable "guer_veh_shop_spawn3";
					guer_veh_shop_spawn4 setVehicleVarName "";
					publicVariable "guer_veh_shop_spawn4";
					guer_veh_shop_spawn5 setVehicleVarName "";
					publicVariable "guer_veh_shop_spawn5";
					guer_base_resources = 0;
					publicVariable "guer_base_resources";
					sleep 5;
					
					_RandomPos_Guer_Base = Guer_Base_Array call BIS_fnc_selectRandom;
					_posMrk = getMarkerPos _RandomPos_Guer_Base;
//					_posMrk = getMarkerPos "guer_base_respawn";
							
					guer_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
					guer_base setPos [_posMrk select 0, _posMrk select 1,0];
						
					guer_base setVehicleVarName "guer_base";
					publicVariable "guer_base";
					guer_base addEventHandler ["HandleDamage", {false}];
					guer_base setVariable ["R3F_LOG_disabled", true, true];
					
					"guer_base_marker" setMarkerPos getPos guer_base;
					sleep 0.1;
					"mrkGreen" setMarkerPos getMarkerPos "guer_base_marker";
					"mrknoGreen" setMarkerPos getMarkerPos "guer_base_marker";
					
					{
						deleteMarker _x;
					} foreach guerRespawnArray;
					guerRespawnArray = [];
					publicVariable "guerRespawnArray";
					
					_nul = []execVM "server\randomMarkerGen.sqf";
						
					Base_Destroyed_Tracker = 0;
					publicVariable "Base_Destroyed_Tracker";
						
					diag_log format ["Case Guer: Base %1 respawned", Bombed_Team];

					Guer_Base_Array = Guer_Base_Array - [_RandomPos_Guer_Base];

					diag_log format ["_RandomPos_Guer_Base: %1", _RandomPos_Guer_Base];
					diag_log format ["Updated Guer_Base_Array: %1", Guer_Base_Array];
					
//new respawn system
					_pos = getPos guer_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_guerrila" setMarkerPos _mkr_pos;

/*
//Commented out to test new respawn marker system.
					_pos = getPos guer_base;
					_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
					"respawn_guerrila2" setMarkerPos _mkr_pos;
*/
					["BaseOption1", 0, getPos guer_base] execVM "server\compositions\createBase.sqf";
					_nul = execVM "server\compositions\guer_base_objects.sqf";
				};
			};
		};

diag_log "BaseRespawn script Ended.";