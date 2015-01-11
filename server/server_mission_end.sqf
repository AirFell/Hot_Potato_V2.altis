diag_log "**?** Server_Mission_End Listener loaded.";

_end_mission_loop = 0;
	
while {_end_mission_loop == 0} do {
	sleep 5;
	if (West_Score == 5) then {
		B_tsk1 setTaskState "Succeeded";
		O_tsk1 setTaskState "Failed";
		I_tsk1 setTaskState "Failed";
		"end1" call BIS_fnc_endMission;
		diag_log "Mission has ended.";
		_end_mission_loop = 1;
	} else {
		if (East_Score == 5) then {
			B_tsk1 setTaskState "Failed";
			O_tsk1 setTaskState "Succeeded";
			I_tsk1 setTaskState "Failed";
			"end2" call BIS_fnc_endMission;
			diag_log "Mission has ended.";
			_end_mission_loop = 1;
		} else {
			if (Guer_Score == 5) then {
				B_tsk1 setTaskState "Failed";
				O_tsk1 setTaskState "Failed";
				I_tsk1 setTaskState "Succeeded";
				"end3" call BIS_fnc_endMission;
				diag_log "Mission has ended.";
				_end_mission_loop = 1;
			};
		};
	};
};