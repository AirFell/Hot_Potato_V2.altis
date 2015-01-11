diag_log "Bomb_auto_timer.sqf script started.";

//_autocount = X is the time it takes to count down.
for [{_autocount = 30}, {_autocount > 0}, {_autocount = _autocount - 1}] do {
	_d_check = 0;
	if (Bomb_Destroyed_Tracker == 0) then {
		if (Bomb_Armed_Tracker == 0) then {
			if (_autocount <= 1) then {
				if (_autocount <= 0) then {
					diag_log "Bomb_auto_timer.sqf found _autocount less than or equal to 0.";
				} else {
					Bomb_Armed_Tracker = 1;
					publicVariable "Bomb_Armed_Tracker";
					diag_log "Auto-Timer Armed bomb.";
					HUD_Bomb_Status = "Bomb Status: ARMED";
					publicVariable "HUD_Bomb_Status";
//find bombed team to remove score on score.sqf
					_closest1 = objNull;
					_closestdist1 = 100000;
					{
					  if (_x distance The_Bomb < _closestdist1) then {
						_closest1 = _x;
						_closestdist1 = _x distance The_Bomb;
					  };
					} forEach [west_base, east_base, guer_base];
					Bombed_Team = switch _closest1 do {
					  case west_base: {west};
					  case east_base: {east};
					  case guer_base: {resistance};
					};
					publicVariable "Bombed_team";
					diag_log format ["Bomb_auto_timer.sqf sees Bombed_Team as %1", Bombed_team];
//find "armed team" by number of closest units on score.sqf
					_nearbyUnitsWest = [];
					_nearbyUnitsEast = [];
					_nearbyUnitsGuer = [];
					{
						if (_x distance _closest1 < 150) then {
							if (side _x != Bombed_Team) then {
								switch (side _x) do {
									case west: {
										_nearbyUnitsWest = [] + [_x];
									};
									case east: {
										_nearbyUnitsEast = [] + [_x];
									};
									case resistance: {
										_nearbyUnitsGuer = [] + [_x];
									};
								};
							};
						};
					} foreach allunits;
					
					switch (Bombed_Team) do {
						case west: {
							_cntE = count _nearbyUnitsEast;
							_cntG = count _nearbyUnitsGuer;
							if (_cntE > _cntG) then {
								Armed_Team = east;
							} else {
								if (_cntE == _cntG) then {
									diag_log "Bomb_auto_timer.sqf found both sides to be equal. No points awarded for arming.";
								} else {
									Armed_team = resistance;
								};
							};
						};
						case east: {
							_cntW = count _nearbyUnitsWest;
							_cntG = count _nearbyUnitsGuer;
							if (_cntW > _cntG) then {
								Armed_Team = west;
							} else {
								if (_cntW == _cntG) then {
									diag_log "Bomb_auto_timer.sqf found both sides to be equal. No points awarded for arming.";
								} else {
									Armed_team = resistance;
								};
							};
						};
						case resistance: {
							_cntW = count _nearbyUnitsWest;
							_cntE = count _nearbyUnitsEast;
							if (_cntW > _cntE) then {
								Armed_Team = west;
							} else {
								if (_cntW == _cntE) then {
									diag_log "Bomb_auto_timer.sqf found both sides to be equal. No points awarded for arming.";
								} else {
									Armed_team = east;
								};
							};
						};
					};
					
					publicVariable "Armed_Team";
					diag_log format ["Bomb_auto_timer.sqf sees Armed_Team as %1", Armed_Team];
					
					waitUntil {Bomb_Armed_Tracker == 0};
					if (Bomb_Destroyed_Tracker == 1) then {
						diag_log "Bomb_auto_timer.sqf found the bomb to be destroyed. -Level 3";
						_autocount = 0;
					} else {
						diag_log "Bomb_auto_timer.sqf found the bomb to be disarmed. -Level 3";
						{
							if (The_Bomb distance _x >= 101) then {
								_d_check = _d_check + 1;
							};
						} foreach Base_Array;
						if (_d_check == 3) then {
							diag_log "The_Bomb was disarmed away from a base. 5 min added to timer. -Level 3";
							_autocount = _autocount + 5;
							sleep 60;
						};
					};
				};
			} else {
				HUD_Bomb_Status = format ["Bomb Status: %1 Minutes", _autocount];
				publicVariable "HUD_Bomb_Status";
				sleep 60;
			};
		} else {
			waitUntil {Bomb_Armed_Tracker == 0};
			if (Bomb_Destroyed_Tracker == 1) then {
				diag_log "Bomb_auto_timer.sqf found the bomb to be destroyed. -Level 2";
				_autocount = 0;
			} else {
				diag_log "Bomb_auto_timer.sqf found the bomb to be disarmed. -Level 2";
				{
					if (The_Bomb distance _x >= 101) then {
						_d_check = _d_check + 1;
					};
				} foreach Base_Array;
				if (_d_check == 3) then {
					diag_log "The_Bomb was disarmed away from a base. 5 min added to timer. -Level 2";
					_autocount = _autocount + 5;
					sleep 60;
				};
			};
		};
	} else {
		diag_log "Bomb_auto_timer.sqf found the bomb to be destroyed. -Level 1";
		_autocount = 0;
	};
};

diag_log "Bomb_auto_timer.sqf for-loop ended.";