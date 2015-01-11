diag_log "disarm_bomb script started.";
disarming_bomb = 0;
publicVariable "disarming_bomb";

player addaction [
	"Disarm Bomb",{
		diag_log "Disarming script started.";
			if (vehicle player == player) then {
				_stringEscapePercent = "%";	
				_totalDuration = 10; //duration of arming sequence
				_lockDuration = _totalDuration;
				_iteration = 1;
				_disarmingComplete = 0;

				diag_log "Arming animation started.";
				player switchMove "AinvPknlMstpSlayWrflDnon_medic";
				
				disarming_bomb = 1;
				publicVariable "disarming_bomb";
				
				while {_lockDuration > 1} do {
					if (alive player) then {// If the player dies, end loop.
						if(player distance The_Bomb < 5) then { // If the player moves away, end loop.
							if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the placement.
								player switchMove "AinvPknlMstpSlayWrflDnon_medic";
							};
							_iteration = _iteration + 1;
							_lockDuration = _lockDuration - 1;
							_iterationPercentage = floor (_iteration / _totalDuration * 100);
								
							2 cutText [format["Disarming Bomb %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
							sleep 1;
								
							if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that place has completed.
								sleep 1;
								2 cutText ["", "PLAIN DOWN", 1];
							};
							_disarmingComplete = 1;
						} else {
							_lockDuration = 0;
							sleep 1;
							2 cutText ["", "PLAIN DOWN", 1];
							_disarmingComplete = 0;
							disarming_bomb = 0;
							publicVariable "disarming_bomb";
							hint "You must be closer to the bomb!";
						};
					} else {
						_lockDuration = 0;
						sleep 1;
						2 cutText ["", "PLAIN DOWN", 1];
						_disarmingComplete = 0;
						disarming_bomb = 0;
						publicVariable "disarming_bomb";
						diag_log "Player died while disarming the bomb.";
					};
				};
						
				if (_disarmingComplete == 1) then {
				
					Bomb_Armed_Tracker = 0;
					publicVariable "Bomb_Armed_Tracker";
					
					HUD_Bomb_Status = "Bomb Status: DISARMED";
					publicVariable "HUD_Bomb_Status";
					
					Armed_Team = "";
					publicVariable "Armed_Team";
					diag_log format["Armed Team = %1", Armed_Team];
					
					Bombed_Team = "";
					publicVariable "Bombed_Team";
					diag_log format["Armed Team = %1", Bombed_Team];
					
					disarming_bomb = 0;
					publicVariable "disarming_bomb";
					playerCredits = playerCredits + 250;
					hint "Bomb Disarmed!";
				} else {
					sleep 2;
					hint "Disarming Incomplete.";
					diag_log "Disarming was cancelled.";
				};
			} else{
				diag_log "Player attempted to disarm bomb from within vehicle.";
				hint "You can't disarm the bomb from inside a vehicle.";
			};
	},
	nil, 1, True, True, "", "(vehicle player) == player && disarming_bomb == 0 && Bomb_Armed_Tracker == 1 && (player distance The_Bomb) < 5 && ((player distance EnemyBase1) > 101 or (player distance EnemyBase2) > 101)"
];