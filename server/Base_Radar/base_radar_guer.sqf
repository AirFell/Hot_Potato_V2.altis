guer_enemy_detected = 0;

while {True} do {
	_list = [];
	sleep 1;
	_list = (getPos guer_base) nearEntities ["CAManBase", 250];
	{
		if (_x distance guer_base < 250 && side _x != resistance) then {
			guer_enemy_detected = 1;
			publicVariable "guer_enemy_detected";
			
			_RandomPosG = guerRespawnArray select floor random count guerRespawnArray;
			"respawn_guerrila" setMarkerPos getMarkerPos _RandomPosG;

		} else {
			if (guer_enemy_detected == 1) then {
				guer_enemy_detected = 0;
				publicVariable "guer_enemy_detected";
				
				_pos = getPos guer_base;
				_mkr_pos = [(_pos select 0) - 30, (_pos select 1) - 30, 2.5];
				"respawn_guerrila" setMarkerPos _mkr_pos;
			};
		};
	} foreach _list;
	sleep 14;
};