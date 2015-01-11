diag_log "**7** base_update.sqf initialized.";

while {True} do {
	_startMissionCounter = 1;
	if (_startMissionCounter == 1 or Bomb_Destroyed_Tracker == 1) then {
		_startMissionCounter = _startMissionCounter - 1;
		switch (side player) do {
			case west: {
				diag_log format ["%1 is on the %2 team.", player, side player];
				EnemyBaseArray = [east_base, guer_base];
				FriendlyBase = west_base;
				EnemyBase1 = east_base;
				EnemyBase2 = guer_base;
			};
				
			case east: {
				diag_log format ["%1 is on the %2 team.", player, side player];
				EnemyBaseArray = [west_base, guer_base];
				FriendlyBase = east_base;
				EnemyBase1 = west_base;
				EnemyBase2 = guer_base;
			};
			
			case resistance: {
				diag_log format ["%1 is on the %2 team.", player, side player];
				EnemyBaseArray = [west_base, east_base];
				FriendlyBase = guer_base;
				EnemyBase1 = west_base;
				EnemyBase2 = east_base;
			};
		};
		sleep 60;
	};
	sleep 60;
};