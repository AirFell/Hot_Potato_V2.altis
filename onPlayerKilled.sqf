diag_log "Finding random spawn position.";

diag_log "player killed. scripts restarting.";

waitUntil {alive player};

cutText ["","BLACK IN", 5];

playerCredits = playerCredits * 0.25;
playerCredits = round playerCredits;

removeAllWeapons player;
player addmagazines ["30Rnd_556x45_Stanag", 3];
player addweapon "arifle_TRG20_F";
player addmagazines ["16Rnd_9x21_Mag", 3];
player addweapon "hgun_Rook40_F";
player addMagazine "handGrenade";
player addMagazine "SmokeShell";
player additem "FirstAidKit";

_nul = switch (side player) do {
	case west: {
		"mrkBlue" setMarkerAlphaLocal 0;
		"mrkRed" setMarkerAlphaLocal 0;
		"mrkGreen" setMarkerAlphaLocal 0;
		"mrknoBlue" setMarkerAlphaLocal 0.5;
		"mrknoRed" setMarkerAlphaLocal 0;
		"mrknoGreen" setMarkerAlphaLocal 0;
		"mrkMission" setMarkerAlphaLocal 0;
		"respawn_bomb" setMarkerAlphaLocal 0;
		_nul = []execVM "client\user_addactions\base_west_addactions.sqf";
	};
		
	case east: {
		"mrkBlue" setMarkerAlphaLocal 0;
		"mrkRed" setMarkerAlphaLocal 0;
		"mrkGreen" setMarkerAlphaLocal 0;
		"mrknoBlue" setMarkerAlphaLocal 0;
		"mrknoRed" setMarkerAlphaLocal 0.5;
		"mrknoGreen" setMarkerAlphaLocal 0;
		"mrkMission" setMarkerAlphaLocal 0;
		"respawn_bomb" setMarkerAlphaLocal 0;
		_nul = []execVM "client\user_addactions\base_east_addactions.sqf";
	};
	
	case resistance: {
		"mrkBlue" setMarkerAlphaLocal 0;
		"mrkRed" setMarkerAlphaLocal 0;
		"mrkGreen" setMarkerAlphaLocal 0;
		"mrknoBlue" setMarkerAlphaLocal 0;
		"mrknoRed" setMarkerAlphaLocal 0;
		"mrknoGreen" setMarkerAlphaLocal 0.5;
		"mrkMission" setMarkerAlphaLocal 0;
		"respawn_bomb" setMarkerAlphaLocal 0;
		_nul = []execVM "client\user_addactions\base_guer_addactions.sqf";
	};
};

_nul = []execVM "client\user_addactions\Arm_Bomb.sqf";
_nul = []execVM "client\user_addactions\Disarm_Bomb.sqf";
_nul = []execVM "client\user_addactions\Load_Bomb.sqf";

The_Bomb setVariable ["R3F_LOG_disabled", false, true];
The_Bomb addEventHandler ["HandleDamage", {false}];
west_base addEventHandler ["HandleDamage", {false}];
east_base addEventHandler ["HandleDamage", {false}];
guer_base addEventHandler ["HandleDamage", {false}];


	//USE FOR TEST ADDACTIONS

