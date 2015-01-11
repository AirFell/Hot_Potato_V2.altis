diag_log "**7** Bomb_Countdown_Detonate.sqf loaded.";
Server_Load_Complete = 1;
publicVariable "Server_Load_Complete";
diag_log "*****SERVER HAS LOADED ALL FILES*****";

    While {True} Do {
        sleep 5;
        if (Bomb_Armed_Tracker == 1) then {
			diag_log "Siren Started.";
//how long do we want until the "bomb" goes off?
			for [{_lc = 0},{_lc < 30},{_lc = _lc +1}] do {
				if (Bomb_Armed_Tracker == 1) then {
					playSound3D ["A3\Sounds_F\sfx\siren.wss", The_Bomb, false, getPos The_Bomb, 5, 1, 500];
					sleep 2;
				} else {
					diag_log "Siren Stopped.";
				};
			};

/*
add a distance check between the bomb and the base. If bomb left the base during the countdown, it still explodes
unless someone disarms it. Just remove scoring.
*/
			switch (Bombed_Team) do {
				case west: {
					if ((west_base distance The_Bomb) >= 151) then {
						bombdistanceCheck = 1;
					} else {
						bombdistanceCheck = 0;
					};
				};
				case east: {
					if ((east_base distance The_Bomb) >= 151) then {
						bombdistanceCheck = 1;
					} else {
						bombdistanceCheck = 0;
					};
				};
				case resistance: {
					if ((guer_base distance The_Bomb) >= 151) then {
						bombdistanceCheck = 1;
					} else {
						bombdistanceCheck = 0;
					};
				};
			};
			if (disarming_bomb == 1) then {
				waitUntil {disarming_bomb == 0};
			};
//one last check to make sure the bomb wasn't disarmed during the siren countdown
			if (Bomb_Armed_Tracker == 1 && disarming_bomb == 0) then {		
//get objects and delete them.
				_bomb_boom = "HelicopterExploBig" createVehicle [(getPos The_Bomb select 0),( getPos The_Bomb select 1), 0];
				_objectsList = nearestObjects [getPos The_Bomb, ["Static","Thing","Strategic","Object"], 75] - [The_Bomb, west_base, east_base, guer_base];
				{
					_x setDamage 1;
					sleep 0.5;
					deleteVehicle _x;
				}forEach _objectsList;
			
//then cometh the explosions.
				_bomb1 = "M_Mo_82mm_AT_LG" createVehicle [(getPos The_Bomb select 0),( getPos The_Bomb select 1), 0];
				sleep 3;
				_bomb2 = "HelicopterExploBig" createVehicle [(getPos The_Bomb select 0),( getPos The_Bomb select 1), 0];
				sleep 0.5;
				_number = random 15;
				_bomb3 = "R_60mm_HE" createVehicle [(getPos The_Bomb select 0) + _number,(getPos The_Bomb select 1), 0];
				sleep 0.25;
				_number = random 20;
				_number2 = random 2;
				_bomb4 = "Bo_GBU12_LGB_MI10" createVehicle [(getPos The_Bomb select 0) - _number,(getPos The_Bomb select 1), 0];
				sleep _number2;
				_number = random 15;
				_number2 = random 2;
				_bomb5 = "M_Mo_82mm_AT_LG" createVehicle [(getPos The_Bomb select 0),(getPos The_Bomb select 1) + _number, 0];
				sleep _number2;
				_number = random 25;
				_number2 = random 2;
				_bomb6 = "Bo_Mk82" createVehicle [(getPos The_Bomb select 0),(getPos The_Bomb select 1) - _number, 0];
				sleep 0.1;
				_number = random 15;
				_number2 = random 2;
				_bomb7 = "R_60mm_HE" createVehicle [(getPos The_Bomb select 0) + _number,(getPos The_Bomb select 1) + _number, 0];
				sleep 0.25;
				_number = random 25;
				_number2 = random 2;
				_bomb8 = "Bo_GBU12_LGB_MI10" createVehicle [(getPos The_Bomb select 0) - _number,(getPos The_Bomb select 1) - _number, 0];
				sleep _number2;
				_number = random 15;
				_number2 = random 10;
				_bomb9 = "M_Mo_82mm_AT_LG" createVehicle [(getPos The_Bomb select 0) - _number,(getPos The_Bomb select 1) + _number, 0];
				sleep _number2;
				
				_objectsList2 = nearestObjects [getPos The_Bomb, ["Static","Thing","Strategic","Object"], 150] - [The_Bomb];
				{
					_x setDamage 50;
				}forEach _objectsList2;
				
				sleep 1;
				
				_objectsList3 = nearestObjects [getPos The_Bomb, ["Air"], 200];
				{
					_x setdamage 0.77;
				}forEach _objectsList3;
				
				_number = random 20;
				_bomb10 = "Bo_Mk82" createVehicle [(getPos The_Bomb select 0) + _number,(getPos The_Bomb select 1) - _number, 0];
				deleteVehicle The_Bomb;
				
				if (bombdistanceCheck == 1) then {
					Bomb_Destroyed_Tracker = 1;
					publicVariable "Bomb_Destroyed_Tracker";
					Bomb_Armed_Tracker = 0;
					
					HUD_Bomb_Status = "Bomb Status: DETONATED";
					publicVariable "HUD_Bomb_Status";
					
					publicVariable "Bomb_Armed_Tracker";
					diag_log "Objects damaged.";
				} else {
					Base_Destroyed_Tracker = 1;
					publicVariable "Base_Destroyed_Tracker";
					Bomb_Destroyed_Tracker = 1;
					publicVariable "Bomb_Destroyed_Tracker";
					
					HUD_Bomb_Status = "Bomb Status: DETONATED";
					publicVariable "HUD_Bomb_Status";
					
					Bomb_Armed_Tracker = 0;
					publicVariable "Bomb_Armed_Tracker";
					[]execVm "server\score.sqf";
					[]execVm "server\BaseRespawn.sqf";
					diag_log "Objects damaged.";
				};
				bombdistanceCheck = 0;
			};
        };
    };

diag_log "Bomb_Countdown_detonate script ended. ***THIS IS BAD***";