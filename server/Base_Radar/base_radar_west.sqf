west_enemy_detected = 0;

while {True} do {
	_list = [];
	sleep 1;
	_list = (getPos west_base) nearEntities ["CAManBase", 250];
	{
		if (_x distance west_base < 250 && side _x != west) then {
			west_enemy_detected = 1;
			publicVariable "west_enemy_detected";
			
			_RandomPosW = westRespawnArray select floor random count westRespawnArray;
			"respawn_west" setMarkerPos getMarkerPos _RandomPosW;

		} else {
			if (west_enemy_detected == 1) then {
				west_enemy_detected = 0;
				publicVariable "west_enemy_detected";
				
				_pos = getPos west_base;
				_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
				"respawn_west" setMarkerPos _mkr_pos;
			};
		};
	} foreach _list;
	sleep 14;
};