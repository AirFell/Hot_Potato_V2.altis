diag_log "Mission_init.sqf is running!";
//starts a new mission after 15 min (900) seconds
sleep 30;

_random = 0;
//random mission chooser thing. Raise random number.
_random = floor(random 2) + 2;
_nul = []execVM format["server\missions\mission_%1.sqf", _random];