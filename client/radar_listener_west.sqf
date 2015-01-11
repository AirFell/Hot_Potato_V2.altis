west_enemy_detected = 0;

while {True} do {
	sleep 15;
	if (west_enemy_detected == 1) then {
		"mrknoBlue" setMarkerColorLocal "ColorOrange";
		hint "An enemy player is at your base!";
	} else {
		"mrknoBlue" setMarkerColorLocal "ColorWEST";
	};
	"mrkBlue" setMarkerAlphaLocal 0;
	"mrkRed" setMarkerAlphaLocal 0;
	"mrkGreen" setMarkerAlphaLocal 0;
	"mrknoBlue" setMarkerAlphaLocal 0.5;
	"mrknoRed" setMarkerAlphaLocal 0;
	"mrknoGreen" setMarkerAlphaLocal 0;
	"mrkMission" setMarkerAlphaLocal 0;
	"respawn_bomb" setMarkerAlphaLocal 0;
};