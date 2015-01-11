/*
Object ID's:

Controls for addactions:
east_veh_shop
east_inf_shop
east_fort_shop
east_resc_depot_ctrl

Resource Deposit Area:
east_resc_depot_mrkr

Spawn Points:
ground vehicle:
east_veh_shop_spawn1
east_veh_shop_spawn2
east_veh_shop_spawn3
helicopter:
east_veh_shop_spawn4
east_veh_shop_spawn5
*/

/*
pre-build copy-pasta

_pos = getPos _x;
_objectName = createVehicle [type, _pos, [], 0, "CAN_COLLIDE"];
_objectName setPos [(_pos select 0) +/- _X, (_pos select 1) +/- _X,0];
_objectName setDir 0;
						
_objectName setVehicleVarName "_objectName";
publicVariable "_objectName";
_objectName addEventHandler ["HandleDamage", {false}];
*/

_pos = getPos east_base;

//flag
east_flag = createVehicle ["Flag_Red_F", _pos, [], 0, "CAN_COLLIDE"];
east_flag setPos [(_pos select 0) + 0, (_pos select 1) - 15, 0];


//_________________________________VEHICLES_____________________________________________

//Vehicle Shop
east_veh_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop setPos [(_pos select 0) + 30, (_pos select 1) + 10, 0];
east_veh_shop setDir 90;
						
east_veh_shop setVehicleVarName "east_veh_shop";
publicVariable "east_veh_shop";
east_veh_shop addEventHandler ["HandleDamage", {false}];
east_veh_shop enableSimulationGlobal false;
east_veh_shop setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Ground

//spawn1
east_veh_shop_spawn1 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop_spawn1 setPos [(_pos select 0) + 35, (_pos select 1) + 20, 0];
						
east_veh_shop_spawn1 setVehicleVarName "east_veh_shop_spawn1";
publicVariable "east_veh_shop_spawn1";
east_veh_shop_spawn1 addEventHandler ["HandleDamage", {false}];
east_veh_shop_spawn1 setVariable ["R3F_LOG_disabled", true,true];

//spawn2
east_veh_shop_spawn2 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop_spawn2 setPos [(_pos select 0) + 35, (_pos select 1) + 27.5, 0];
						
east_veh_shop_spawn2 setVehicleVarName "east_veh_shop_spawn2";
publicVariable "east_veh_shop_spawn2";
east_veh_shop_spawn2 addEventHandler ["HandleDamage", {false}];
east_veh_shop_spawn2 setVariable ["R3F_LOG_disabled", true,true];

//spawn3
east_veh_shop_spawn3 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop_spawn3 setPos [(_pos select 0) + 35, (_pos select 1) + 35.5, 0];
						
east_veh_shop_spawn3 setVehicleVarName "east_veh_shop_spawn3";
publicVariable "east_veh_shop_spawn3";
east_veh_shop_spawn3 addEventHandler ["HandleDamage", {false}];
east_veh_shop_spawn3 setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Helis

//spawn4
east_veh_shop_spawn4 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop_spawn4 setPos [(_pos select 0) + 30, (_pos select 1) - 8, 0];
						
east_veh_shop_spawn4 setVehicleVarName "east_veh_shop_spawn4";
publicVariable "east_veh_shop_spawn4";
east_veh_shop_spawn4 addEventHandler ["HandleDamage", {false}];
east_veh_shop_spawn4 setVariable ["R3F_LOG_disabled", true,true];

//spawn5
east_veh_shop_spawn5 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
east_veh_shop_spawn5 setPos [(_pos select 0) + 30, (_pos select 1) - 30, 0];
						
east_veh_shop_spawn5 setVehicleVarName "east_veh_shop_spawn5";
publicVariable "east_veh_shop_spawn5";
east_veh_shop_spawn5 addEventHandler ["HandleDamage", {false}];
east_veh_shop_spawn5 setVariable ["R3F_LOG_disabled", true,true];


//_________________________________INFANTRY_____________________________________________

//Infantry Shop
east_inf_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
east_inf_shop setPos [(_pos select 0) - 23, (_pos select 1) - 22, 0];
east_inf_shop setDir -90;
						
east_inf_shop setVehicleVarName "east_inf_shop";
publicVariable "east_inf_shop";
east_inf_shop addEventHandler ["HandleDamage", {false}];
east_inf_shop enableSimulationGlobal false;
east_inf_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
east_inf_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
east_inf_depot_mrkr setPos [(_pos select 0) - 20, (_pos select 1) -19, 0];
						
east_inf_depot_mrkr setVehicleVarName "east_inf_depot_mrkr";
publicVariable "east_inf_depot_mrkr";
east_inf_depot_mrkr addEventHandler ["HandleDamage", {false}];
east_inf_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];


//_________________________________FORTIFICATIONS_____________________________________________

//Fortification Store
east_fort_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
east_fort_shop setPos [(_pos select 0) - 8, (_pos select 1) + 3.5, 0];
east_fort_shop setDir 90;
						
east_fort_shop setVehicleVarName "east_fort_shop";
publicVariable "east_fort_shop";
east_fort_shop addEventHandler ["HandleDamage", {false}];
east_fort_shop enableSimulationGlobal false;
east_fort_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
east_fort_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
east_fort_depot_mrkr setPos [(_pos select 0) - 12, (_pos select 1) + 7.5, 0];
						
east_fort_depot_mrkr setVehicleVarName "east_fort_depot_mrkr";
publicVariable "east_fort_depot_mrkr";
east_fort_depot_mrkr addEventHandler ["HandleDamage", {false}];
east_fort_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];



//_________________________________RESOURCES_____________________________________________

//Resource Deposit Control
east_resc_depot_ctrl = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
east_resc_depot_ctrl setPos [(_pos select 0) - 28, (_pos select 1) + 27, 0];
east_resc_depot_ctrl setDir 0;
						
east_resc_depot_ctrl setVehicleVarName "east_resc_depot_ctrl";
publicVariable "east_resc_depot_ctrl";
east_resc_depot_ctrl addEventHandler ["HandleDamage", {false}];
east_resc_depot_ctrl enableSimulationGlobal false;
east_resc_depot_ctrl setVariable ["R3F_LOG_disabled", true,true];

//Resource Deposit Point
east_resc_depot_mrkr = createVehicle ["Land_JumpTarget_F", _pos, [], 0, "CAN_COLLIDE"];
east_resc_depot_mrkr setPos [(_pos select 0) - 23, (_pos select 1) + 32, 0];
east_resc_depot_mrkr setDir 0;
						
east_resc_depot_mrkr setVehicleVarName "east_resc_depot_mrkr";
publicVariable "east_resc_depot_mrkr";
east_resc_depot_mrkr addEventHandler ["HandleDamage", {false}];
east_resc_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];