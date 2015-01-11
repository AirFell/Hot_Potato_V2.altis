diag_log "arm_bomb script started.";
arming_bomb = 0;

player addaction [
	"Arm Bomb",{
		diag_log "Arming script started.";
		_distanceCheck = 0;
		{
			if ((The_Bomb distance _x) < 50) then {
				_distanceCheck = _distanceCheck + 1;
			};
		} forEach EnemyBaseArray;
			
		if (_distanceCheck == 1) then {
			if (vehicle player == player) then {
				_stringEscapePercent = "%";	
				_totalDuration = 10; //duration of arming sequence
				_lockDuration = _totalDuration;
				_iteration = 1;
				_armingComplete = 0;

				diag_log "Arming animation started.";
				player switchMove "AinvPknlMstpSlayWrflDnon_medic";
				
				arming_bomb = 1;
				
				while {_lockDuration > 1} do {
					if (alive player) then {// If the player dies, end loop.
						if(player distance The_Bomb < 5) then { // If the player moves away, end loop.
							if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the placement.
								player switchMove "AinvPknlMstpSlayWrflDnon_medic";
							};
							_iteration = _iteration + 1;
							_lockDuration = _lockDuration - 1;
							_iterationPercentage = floor (_iteration / _totalDuration * 100);
							
							2 cutText [format["Arming Bomb %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
							sleep 1;
							
							if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that place has completed.
								sleep 1;
								2 cutText ["", "PLAIN DOWN", 1];
							};
							_armingComplete = 1;
						} else {
							_lockDuration = 0;
							sleep 1;
							2 cutText ["", "PLAIN DOWN", 1];
							
							arming_bomb = 0;
							_armingComplete = 0;
							hint "You must be closer to the bomb!";
						};
					} else {
						_lockDuration = 0;
						sleep 1;
						2 cutText ["", "PLAIN DOWN", 1];
						
						arming_bomb = 0;
						_armingComplete = 0;
						diag_log "Player died while arming the bomb.";
					};
				};
//animations/arming timer completed/cancelled. Arming the bomb if applicable.
				if (_armingComplete == 1) then {
					Bomb_Armed_Tracker = 1;
					publicVariable "Bomb_Armed_Tracker";
					arming_bomb = 0;
					
					HUD_Bomb_Status = "Bomb Status: ARMED";
					publicVariable "HUD_Bomb_Status";
					
					hint "Bomb armed!";
					
					[]execVM "client\pre_score.sqf";
					
					waitUntil {Bomb_Armed_Tracker == 0};
					if (Base_Destroyed_Tracker == 1) then {
						playerCredits = playerCredits + 500;
					} else {
						hint "The bomb was unsuccessful.";
					};
					
				} else {
					sleep 2;
					hint "Arming Incomplete.";
					diag_log "Arming was cancelled.";
				};
			} else{
				diag_log "Player attempted to arm bomb from within vehicle.";
				hint "You can't arm the bomb from inside a vehicle.";
			};
		} else {
			diag_log "Player attempted to arm bomb too far from enemy base.";
			hint "You can't arm the bomb here!";
		};
	},
	nil, 1, True, True, "", "(vehicle player) == player && arming_bomb == 0 && Bomb_Armed_Tracker == 0 && (player distance The_Bomb) < 5 && ((player distance EnemyBase1) < 100 || (player distance EnemyBase2) < 100)"
];