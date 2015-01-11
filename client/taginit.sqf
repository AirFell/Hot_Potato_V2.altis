diag_log "player 3d markers have been initialized.";

waitUntil {!isNull(findDisplay 46)};
waituntil {!isnull player};

player addRating 99999;

addMissionEventHandler["Draw3D", {
	private ["_friendlyUnits"];
	_friendlyUnits= allUnits;
	{
		if ((player distance _x)< 2000 && {(side _x== side player)} && {!(player== _x)}) then {
		
			_sIcon = switch (side player) do {
			case west: {["\A3\ui_f\data\map\markers\nato\b_unknown.paa",[0,0,1,1]]};
			case east: {["\A3\ui_f\data\map\markers\nato\o_unknown.paa",[1,0,0,1]]};
			case resistance: {["\A3\ui_f\data\map\markers\nato\n_unknown.paa",[0,1,0,1]]};
			};
			
			_arr = visiblePosition _x; 
			_zArr = _arr select 2;
			_arr set [2, _zArr + 2];
			if ((vehicle _x)== _x) then {
				drawIcon3D [_sIcon select 0, _sIcon select 1, _arr, 0.75, 0.75, 0];
			} else {
				if ((captiveNum _x) == 1) then {
					drawIcon3D ["\A3\ui_f\data\igui\cfg\actions\heal_ca.paa", [1,0,0,1], _arr, 0.75, 0.75, 0];
				} else {
					drawIcon3D [_sIcon select 0, _sIcon select 1, _arr, 0.75, 0.75, 0];
				};
			};
		};
	} forEach _friendlyUnits;
}];