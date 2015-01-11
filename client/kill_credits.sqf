diag_log format ["%1 has been killed by %2", _this select 0, _this select 1];

_victim = _this select 0;
_killer = _this select 1;
_victim_Side = side _victim;
diag_log format["!!!Victim side is %1 !!!", _victim_Side];
_killer_Side = side _killer;
diag_log format["!!!IKiller side is %1 !!!", _killer_Side];


if (_killer == player && !(_victim_Side == _killer_side)) then {
	playerCredits = playerCredits + 100;
	diag_log format["!!! %1 killed %2 !!!", _killer, _victim];
};
if (_killer == player && _victim_Side == _killer_side) then {
	if (playerCredits <= 100) then {
		playerCredits = 0;
	} else {
		playerCredits = playerCredits - 100;
	};
	diag_log format["!!! %1 teamkilled %2 !!!", _killer, _victim];
};