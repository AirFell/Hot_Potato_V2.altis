diag_log "**1** GlobalVars.sqf loading...";

Error_pos = [10808.3,10582.9];
publicVariable "Error_pos";

Server_Load_Complete = 0;
publicVariable "Server_Load_Complete";
Marker_Load_Complete = 0;
publicVariable "Marker_Load_Complete";

////////////////////////////////////
///////Bomb Tracker PV's////////////
////////////////////////////////////

Base_Destroyed_Tracker = 0;
publicVariable "Base_Destroyed_Tracker";

Bomb_Destroyed_Tracker = 0;
publicVariable "Bomb_Destroyed_Tracker";

Bomb_Armed_Tracker = 0;
publicVariable "Bomb_Armed_Tracker";

MissionCounter = 0;

////////////////////////////////////
/////////////Team Scores////////////
////////////////////////////////////

West_Score = 0;
publicVariable "West_Score";

East_Score = 0;
publicVariable "East_Score";

Guer_Score = 0;
publicVariable "Guer_Score";


////////////////////////////////////
/////////////Base Resources/////////
////////////////////////////////////

west_base_resources = 500;
publicVariable "west_base_resources";

east_base_resources = 500;
publicVariable "east_base_resources";

guer_base_resources = 500;
publicVariable "guer_base_resources";

_nul = []execVM "server\resource_time.sqf";

////////////////////////////////////
////////////pre-score///////////////
////////////////////////////////////
Armed_Team = "";
publicVariable "Armed_Team";

Bombed_Team = "";
publicVariable "Bombed_Team";

//////////////////////////////////////
////////////Randomized Arrays/////////
//////////////////////////////////////

West_Base_Array = ["west_base_random_1", "west_base_random_2", "west_base_random_3", "west_base_random_4", "west_base_random_5", "west_base_random_6", "west_base_random_7", "west_base_random_8", "west_base_random_9", "west_base_random_10"];
East_Base_Array = ["east_base_random_1", "east_base_random_2", "east_base_random_3", "east_base_random_4", "east_base_random_5", "east_base_random_6", "east_base_random_7", "east_base_random_8", "east_base_random_9", "east_base_random_10"];
Guer_Base_Array = ["guer_base_random_1", "guer_base_random_2", "guer_base_random_3", "guer_base_random_4", "guer_base_random_5", "guer_base_random_6", "guer_base_random_7", "guer_base_random_8", "guer_base_random_9", "guer_base_random_10"];
Bomb_Spawn_Array = [];

//////////////////////////////////////
////////////End of Script/////////////
//////////////////////////////////////
_nul = []execVM "server\Base_Spawn.sqf";
_nul = []execVM "server\server_mission_end.sqf";
diag_log "GlobalVars.sqf loaded.";