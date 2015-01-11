waitUntil {Marker_Load_Complete == 1};
diag_log "**4** Bomb_Spawn.sqf loading...";

_vehtype = "Land_Device_assembled_F";
_RandomPos_Bomb = Bomb_Spawn_Array select floor random count Bomb_Spawn_Array;
_posMrk = getMarkerPos _RandomPos_Bomb;
//_posMrk = getMarkerPos "respawn_bomb";
The_Bomb = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
The_Bomb setPos [_posMrk select 0, _posMrk select 1,0];
			
The_Bomb setVehicleVarName "The_Bomb";
publicVariable "The_Bomb";

//The_Bomb setVariable ["R3F_LOG_disabled", false, true];
The_Bomb addEventHandler ["HandleDamage", {false}];


_nul = []execVM "server\Bomb_Marker.sqf";
_nul = []execVM "server\Bomb_auto_timer.sqf";
diag_log "Bomb_Spawn.sqf loaded.";