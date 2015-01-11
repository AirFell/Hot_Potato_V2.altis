diag_log "**?** Client_Mission_End Listener loaded.";

_end_mission_loop = 0;
	
while {_end_mission_loop == 0} do {
	sleep 5;
	if (West_Score == 5) then {
		if ((side player) == west) then {
			["end1", true] call BIS_fnc_endMission;
			_end_mission_loop = 1;
			diag_log "Mission has ended.";
		} else {
			["end1", false] call BIS_fnc_endMission;
			_end_mission_loop = 1;
			diag_log "Mission has ended.";
		};
	} else {
		if (East_Score == 5) then {
			if ((side player) == east) then {
				["end2", true] call BIS_fnc_endMission;
				_end_mission_loop = 1;
				diag_log "Mission has ended.";
			} else {
				["end2", false] call BIS_fnc_endMission;
				_end_mission_loop = 1;
				diag_log "Mission has ended.";
			};
		} else {
			if (Guer_Score == 5) then {
				if ((side player) == resistance) then {
					["end3", true] call BIS_fnc_endMission;
					_end_mission_loop = 1;
					diag_log "Mission has ended.";
				} else {
					["end3", false] call BIS_fnc_endMission;
					_end_mission_loop = 1;
					diag_log "Mission has ended.";
				};
			};
		};
	};
};