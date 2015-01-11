/* ----------------------------------------------------------------------------------------------------
File: vehRespawn.sqf
Author: Iceman77
Modified: AirFell
---------------------------------------------------------------------------------------------------- */
diag_log "**6** BombRespawn.sqf script loaded.";
_nul = []execVM "server\Bomb_Countdown_Detonate.sqf";

    While {True} Do {
        sleep 5;
		_vehtype = "Land_Device_assembled_F";
           if (Bomb_Destroyed_Tracker == 1) then {
		   sleep 120;
		   _RandomPos_Bomb = Bomb_Spawn_Array select floor random count Bomb_Spawn_Array;
			_posMrk = getMarkerPos _RandomPos_Bomb;
//			_posMrk = getMarkerPos "respawn_bomb";
            The_Bomb = createVehicle [_vehtype, _posMrk, [], 0, "CAN_COLLIDE"];
            The_Bomb setPos [_posMrk select 0, _posMrk select 1,0];
			
			The_Bomb setVehicleVarName "The_Bomb";
			publicVariable "The_Bomb";
			
			Bomb_Destroyed_Tracker = 0;
			publicVariable "Bomb_Destroyed_Tracker";
			
//			The_Bomb setVariable ["R3F_LOG_disabled", false, true];
			
			diag_log "bomb respawned.";
			
			_nul = []execVM "server\Bomb_auto_timer.sqf";
        };
    };

diag_log "BombRespawn script Ended. ***THIS IS BAD***";