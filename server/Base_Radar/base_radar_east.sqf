east_enemy_detected = 0;

while {True} do {
	_list = [];
	sleep 1;
	_list = (getPos east_base) nearEntities ["CAManBase", 250];
	{
		if (_x distance east_base < 250 && side _x != east) then {
			east_enemy_detected = 1;
			publicVariable "east_enemy_detected";
			
			_RandomPosE = eastRespawnArray select floor random count eastRespawnArray;
			"respawn_east" setMarkerPos getMarkerPos _RandomPosE;

		} else {
			if (east_enemy_detected == 1) then {
				east_enemy_detected = 0;
				publicVariable "east_enemy_detected";
				
				_pos = getPos east_base;
				_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
				"respawn_east" setMarkerPos _mkr_pos;
			};
		};
	} foreach _list;
	sleep 14;
};