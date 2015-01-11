//vehRespawn by Iceman77, Modified by Airfell
//SHK Random Position Generator by Shuko, Modified by Airfell
//"Where's Barry?!?" script by Axek, edited for use in this mission by AirFell
//[R3F] Logistics 3.0 by R3F Projects
//Real Weather - dynamic weather for MP games by Code34 ~slight edit by AirFell to randomize mission time on server start.
//Zuff's Group Management

enableSaving [false, false];

serverTimeSet = 0;
execVM "real_weather.sqf";

execVM "R3F_LOG\init.sqf";

if (isDedicated) then {
///////////////////////////////////////////////////////////////
///////////////////////Server-side stuff///////////////////////
///////////////////////////////////////////////////////////////
	diag_log "The server is Running!";
	
	month = floor(random 12) + 1;
	publicVariable "month";
	diag_log format["Month is %1", month];
	
	day = floor(random 28) + 1;
	publicVariable "day";
	diag_log format["Day is %1", day];
	
	_hours = [6,7,8,9,10,11,12,13,14,15,16,17,18];
	hour = _hours call BIS_fnc_selectRandom;
	publicVariable "hour";
	diag_log format["Hour is %1", hour];
	
	AF_Weather = ["CLEAR","CLOUDY","RAIN"] call BIS_fnc_SelectRandom;
	publicVariable "AF_Weather";
	diag_log format ["Weather is %1", AF_Weather];
	
	serverTimeSet = 1;
	publicVariable "serverTimeSet";
	
	call compile preprocessFile"server\SHK_pos\shk_pos_init.sqf";
	
	Marker_Load_Complete = 0;
	publicVariable "Marker_Load_Complete";
	Server_Load_Complete = 0;
	publicVariable "Server_Load_Complete";
	
	_nul = []execVM "server\killed_eh.sqf";
	_nul = []execVM "server\GlobalVars.sqf";

	diag_log "The server got through all its init files!";
	
} else {

///////////////////////////////////////////////////////////////
///////////////////////Client-side stuff///////////////////////
///////////////////////////////////////////////////////////////
	
	titleCut ["Mission Loading. Please Wait.", "BLACK FADED", 15];

	diag_log "client entering loading loop.";
	_loading = 0;
	while {_loading == 0} do {
		diag_log "loading loop started, or looping.";
		if (Server_Load_Complete == 1) then {
			diag_log "loading loop hit";
			_loading = 1;
		} else {
			_loading = 0;
		};
		sleep 1;
	};
	waitUntil {_loading == 1};
	
	diag_log "The client is running!";
	
	playerCredits = 500;
		
	diag_log "Finding random spawn position.";

	call compile preprocessFileLineNumbers "client\baseConfig.sqf";
	_nul = []execVM "client\credit_time.sqf";
	_nul = []execVM "client\player_markers.sqf";
	_nul = []execVM "client\taginit.sqf";
	_nul = []execVM "client\client_mission_end.sqf";
	_nul = []execVM "client\base_update.sqf";
	
	forceRespawn player;
	
	waitUntil {alive player};
	
	_nul = switch (side player) do {
		case west: {
			_nul = []execVM "client\user_addactions\helper_west.sqf";
			_nul = []execVM "client\radar_listener_west.sqf";
		};
		case east: {
			_nul = []execVM "client\user_addactions\helper_east.sqf";
			_nul = []execVM "client\radar_listener_east.sqf";
		};
		case resistance: {
			_nul = []execVM "client\user_addactions\helper_guer.sqf";
			_nul = []execVM "client\radar_listener_guer.sqf";
		};
	};
	
	client_respawn_counter = 1;
	HUD_Bomb_Status = "Bomb Status: Initializing";

	"mrkMission" setMarkerAlphaLocal 0;
	"respawn_bomb" setMarkerAlphaLocal 0;
	
	diag_log "The client got through all its init files!";
	
	_nul = []execVM "client\dialogs\playerHud.sqf";

/*
	//USE FOR TEST ADDACTIONS
	player addAction [
	"TEST ADDACTION",
	{
		hint HUD_Bomb_Status;
	},
	nil, 0, False, True, "", ""];
*/
};