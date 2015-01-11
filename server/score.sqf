diag_log "server-score script started.";
	
if (Bomb_Destroyed_Tracker == 1 && Bomb_Armed_Tracker == 0) then {
	switch (Armed_Team) do {
		case west: {
			West_Score = West_Score + 1;
			publicVariable "West_Score";
			diag_log format["West_Score: %1", West_Score];
		};
		case east: {
			East_Score = East_Score + 1;
			publicVariable "East_Score";
			diag_log format["East_Score: %1", East_Score];
		};
		case resistance: {
			Guer_Score = Guer_Score + 1;
			publicVariable "Guer_Score";
			diag_log format["Guer_Score: %1", Guer_Score];
		};
		default {
			diag_log "!!!!!Score.sqf default block: Either something went wrong with scoring, or the bomb timer ran down.";
		};
	};
	switch (Bombed_Team) do {
		case west: {
			if (West_Score >= 1) then {
				West_Score = West_Score - 1;
				publicVariable "West_Score";
			};
		};
		case east: {
			if (East_Score >= 1) then {
				East_Score = East_Score - 1;
				publicVariable "East_Score";
			};
		};
		case resistance: {
			if (Guer_Score >= 1) then {
				Guer_Score = Guer_Score - 1;
				publicVariable "Guer_Score";
			};
		};
	};
};

diag_log format[":::Score Update::: West: %1, East: %2, Guer: %3", West_score, East_Score, Guer_Score];
diag_log "server-score script ended.";