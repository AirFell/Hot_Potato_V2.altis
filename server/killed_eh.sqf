/*
waituntil {client_respawn_counter == 1};
{_x addEventHandler ["killed", {hint format ["%1 has been killed by %2", _this select 0, _this select 1];}];} forEach allunits;
*/
/*
while {true} do {
	sleep 29;
	{_x removeEventHandler ["Killed", 0]} forEach allunits;
	sleep 1;
	{0 = _x addEventHandler ["killed", {_null = _this execVM "client\kill_credits.sqf";}];} forEach allunits;
};
*/
while {True} do {
	sleep 29.5;
	{_x removeAllMPEventHandlers "mpkilled";} foreach allunits;
	sleep 0.5;
	{_x addMPEventHandler ["mpkilled", {
		if (player == (_this select 1)) then {
			_null = [_this select 0, _this select 1]execVM "client\kill_credits.sqf";
		};
	}];} foreach allunits;
};