diag_log "**2** Base_Spawn.sqf loading...";


_vehtype = "Land_Cargo_Tower_V1_No1_F";


/////////////////////////
/////Spawn West Base/////
/////////////////////////
_RandomPos_West_Base = West_Base_Array call BIS_fnc_selectRandom;
_posMrk = getMarkerPos _RandomPos_West_Base;
//_posMrk = getMarkerPos "west_base_respawn";
						
west_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
west_base setPos [_posMrk select 0, _posMrk select 1,0];
					
west_base setVehicleVarName "west_base";
publicVariable "west_base";
west_base addEventHandler ["HandleDamage", {false}];
west_base setVariable ["R3F_LOG_disabled", true, true];

west_base_marker = createMarker["west_base_marker", (getPos west_base)];
west_base_marker setMarkerColor "ColorBLUFOR";
west_base_marker setMarkerShape "Icon";
west_base_marker setMarkerType "b_hq";

"mrkBlue" setMarkerPos getMarkerPos "west_base_marker";
"mrknoBlue" setMarkerPos getMarkerPos "west_base_marker";

West_Base_Array = West_Base_Array - [_RandomPos_West_Base];

//In-Base Respawn marker
_pos = getPos west_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
"respawn_west" setMarkerPos _mkr_pos;

/*
//Commented out to test new respawn marker system.
_pos = getPos west_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
respawn_west2 = createMarker["respawn_west2", _mkr_pos];
*/
diag_log format ["_RandomPos_West_Base: %1", _RandomPos_West_Base];
diag_log format ["Updated West_Base_Array: %1", West_Base_Array];

["BaseOption1", 0, getPos west_base] execVM "server\compositions\createBase.sqf";
_nul = execVM "server\compositions\west_base_objects.sqf";
		
/////////////////////////
/////Spawn East Base/////
///////////////////	/////			
_RandomPos_East_Base = East_Base_Array call BIS_fnc_selectRandom;
_posMrk = getMarkerPos _RandomPos_East_Base;
//_posMrk = getMarkerPos "east_base_respawn";
							
east_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
east_base setPos [_posMrk select 0, _posMrk select 1,0];
						
east_base setVehicleVarName "east_base";
publicVariable "east_base";
east_base addEventHandler ["HandleDamage", {false}];
east_base setVariable ["R3F_LOG_disabled", true, true];

east_base_marker = createMarker["east_base_marker", (getPos east_base)];
east_base_marker setMarkerColor "ColorOPFOR";
east_base_marker setMarkerShape "Icon";
east_base_marker setMarkerType "o_hq";

"mrkRed" setMarkerPos getMarkerPos "east_base_marker";
"mrknoRed" setMarkerPos getMarkerPos "east_base_marker";

East_Base_Array = East_Base_Array - [_RandomPos_East_Base];

diag_log format ["_RandomPos_East_Base: %1", _RandomPos_East_Base];
diag_log format ["Updated East_Base_Array: %1", East_Base_Array];

//In-Base Respawn marker
_pos = getPos east_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
"respawn_east" setMarkerPos _mkr_pos;

/*
//Commented out to test new respawn marker system.
_pos = getPos east_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
respawn_east2 = createMarker["respawn_east2", _mkr_pos];
*/
["BaseOption1", 0, getPos east_base] execVM "server\compositions\createBase.sqf";
_nul = execVM "server\compositions\east_base_objects.sqf";
					

/////////////////////////
/////Spawn Guer Base/////
/////////////////////////	
_RandomPos_Guer_Base = Guer_Base_Array call BIS_fnc_selectRandom;
_posMrk = getMarkerPos _RandomPos_Guer_Base;
//_posMrk = getMarkerPos "guer_base_respawn";
							
guer_base = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
guer_base setPos [_posMrk select 0, _posMrk select 1,0];
						
guer_base setVehicleVarName "guer_base";
publicVariable "guer_base";
guer_base addEventHandler ["HandleDamage", {false}];
guer_base setVariable ["R3F_LOG_disabled", true, true];

guer_base_marker = createMarker["guer_base_marker", (getPos guer_base)];
guer_base_marker setMarkerColor "ColorIndependent";
guer_base_marker setMarkerShape "Icon";
guer_base_marker setMarkerType "n_hq";

"mrkGreen" setMarkerPos getMarkerPos "guer_base_marker";
"mrknoGreen" setMarkerPos getMarkerPos "guer_base_marker";

Guer_Base_Array = Guer_Base_Array - [_RandomPos_Guer_Base];

diag_log format ["_RandomPos_Guer_Base: %1", _RandomPos_Guer_Base];
diag_log format ["Updated Guer_Base_Array: %1", Guer_Base_Array];

//In-Base Respawn marker
_pos = getPos guer_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
"respawn_guerrila" setMarkerPos _mkr_pos;

/*
//Commented out to test new respawn marker system.
_pos = getPos guer_base;
_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
respawn_guerrila2 = createMarker["respawn_guerrila2", _mkr_pos];
*/
["BaseOption1", 0, getPos guer_base] execVM "server\compositions\createBase.sqf";
_nul = execVM "server\compositions\guer_base_objects.sqf";

///////////////////////////
/////End of Load Stuff/////
///////////////////////////

Base_Array = [west_base, east_base, guer_base];
//publicVariable "Base_Array";

_nul = []execVM "server\randomMarkerGen.sqf";
_nul = []execVM "server\missions\mission_marker_gen.sqf";
_nul = []execVM "server\Bomb_Spawn.sqf";
diag_log "Base_Spawn.sqf loaded.";

sleep 15;

_nul = execVM "server\Base_Radar\base_radar_guer.sqf";
_nul = execVM "server\Base_Radar\base_radar_east.sqf";
_nul = execVM "server\Base_Radar\base_radar_west.sqf";