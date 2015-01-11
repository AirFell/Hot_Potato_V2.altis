diag_log "Mission_3.sqf has started.";
/*
notes:
Secondary Resource Mission
*/
_pos = [];
_newPos = [];
_RandomPosM = [];
_Truck = "";
_missionMarker = "";
_number = 0;
_autocount = 0;
sleep 30;

MissionCounter = MissionCounter + 1;

//chooses a random marker from the array
_RandomPosM = MissionMarkerArray select floor random count MissionMarkerArray;
MissionMarkerArray = MissionMarkerArray - [_RandomPosM];

_pos = getMarkerPos _RandomPosM;
_newPos = [_pos, 0, 100, 15, 0, 25, 0] call BIS_fnc_findSafePos;
_Truck = createVehicle ["C_Van_01_transport_F", _newPos, [], 0, "None"];

diag_log "truck has been created! -Mission 3";

//create a marker to show everyone where the truck is.
_missionMarker = createMarker [format ["Mission_%1", MissionCounter],_newPos];
_missionMarker setMarkerShape "ICON";
_missionMarker setMarkerType "mil_dot";
_missionMarker setMarkerText format["Resource Mission %1", MissionCounter];

//sets up some pre-defined consistant variables for the truck's barrels.
_Xstep1 = -0.6;
_Xstep2 = -0.6;
_number = floor(random 6) + 1;
diag_log format ["Truck has spawned %1 barrels!", _number];
["A truck full of resources has been marked on the map!", "hint", true, false] call BIS_fnc_MP;

//puts a random number of barrels in the truck and positions them accordingly.
while {_number > 0} do {
	if (_number < 4) then {
		_dir = floor(random 360);
		_tPos = [_Xstep1, -1.1, -0.175];
	
		_barrel = createVehicle ["Land_MetalBarrel_F", _tPos, [], 0, "NONE"];
		_barrel attachTo [_Truck, _tPos];
		_barrel setDir _dir;
		_Xstep1 = _Xstep1 + 0.6;
		_number = _number - 1;
	} else {
		_dir = floor(random 360);
		_tPos = [_Xstep2, -2.5, -0.175];
	
		_barrel = createVehicle ["Land_MetalBarrel_F", _tPos, [], 0, "NONE"];
		_barrel attachTo [_Truck, _tPos];
		_barrel setDir _dir;
		_Xstep2 = _Xstep2 + 0.6;
		_number = _number - 1;
	};
};

//sleep is 5 seconds. 12 steps = 1 min. 180 loops = 15 min total.
for [{_autocount = 180}, {_autocount > 0}, {_autocount = _autocount - 1}] do {
	_list = [];
	sleep 1;
	_list = (getMarkerPos _missionMarker) nearEntities ["CAManBase", 25];
	if (alive _Truck) then {
		if (_Truck distance (getMarkerPos _missionMarker) < 25) then {
			if ((count _list) == 0) then {
				sleep 4;
			} else {
				_autocount = 0;
				diag_log "A player was found near the barrel truck. Mission ended.";
			};
		} else {
			_autocount = 0;
			diag_log "The truck has left the spawn area. Mission ended.";
		};
	} else {
		_autocount = 0;
		diag_log "The barrel truck was found to be destroyed. Mission ended.";
	};
};
diag_log "Autocount is less than or equal to Zero.";
deleteMarker _missionMarker;
["The resource mission has ended.", "hint", true, false] call BIS_fnc_MP;
sleep 60;
_nul = []execVM "server\missions\mission_1.sqf";

/*
instead of a while{true} loop, do a for step loop, when it runs out, the loop is over, the mission is abandoned,
and a new one execVM's from mission_init.sqf.
Other checks: if player enters the area, or if the car is destroyed. good setup bits are in base_radar_west.sqf and bomb_auto_timer.sqf
*/