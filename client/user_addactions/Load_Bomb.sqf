diag_log "**8** Load_Bomb.sqf loading...";
ready_to_load_bomb = 0;

player addaction [
	"Load Bomb onto...",{
		bomb_truck = nil;
		bomb_loaded = 0;
		_nearest_trucks = nearestObjects [player, ["B_Truck_01_transport_F", "O_Truck_03_transport_F", "I_Truck_02_transport_F"], 20];
		bomb_truck = _nearest_trucks select 0;
		hint format["truck: %1", bomb_truck];
		if (isNil "bomb_truck") then {
			hint "You need to get close to a truck.";
		} else {
			hint "Bomb ready to be loaded.";
			ready_to_load_bomb = 1;
			sleep 15;
			if (bomb_loaded == 0) then {
				hint "You took too long loading the bomb. Try again."
			};
			ready_to_load_bomb = 0;
			diag_log "_____________________Load bomb addaction ran.";
		};
	},
	nil, 1, True, True, "", "player == (vehicle player) && (player distance The_Bomb) < 5 && ready_to_load_bomb == 0"
];

player addaction [
	"onto truck.",{
//HEMTT
		if (bomb_truck isKindOf "B_Truck_01_transport_F") then {
			The_Bomb attachTo [bomb_truck, [0.1,-2,0.25]];
		} else {
//Tempest
			if (bomb_truck isKindOf "O_Truck_03_transport_F") then {
				The_Bomb attachTo [bomb_truck, [0,-2.5,0.35]];
			} else {
//Zamak
				if (bomb_truck isKindOf "I_Truck_02_transport_F") then {
					The_Bomb attachTo [bomb_truck, [0,-1,0.15]];
				};
			};
		};
		hint "The bomb has been loaded.";
		ready_to_load_bomb = 0;
		bomb_loaded = 1;
		diag_log "onto truck addaction ran.";
	},
	nil, 1, True, True, "", "player == (vehicle player) && (player distance The_Bomb) < 5 && (player distance bomb_truck) < 10 && ready_to_load_bomb == 1"
];

diag_log "Load_Bomb.sqf loaded.";

//	(player distance The_Bomb) < 5 && 
//	 && ((player distance I_Truck_02_transport_F) < 5 || (player distance O_Truck_03_transport_F) < 30 || (player distance B_Truck_01_transport_F) < 30)