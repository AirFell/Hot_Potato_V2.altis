/*
Object ID's:

Controls for addactions:
guer_veh_shop
guer_inf_shop
guer_fort_shop
guer_resc_depot_ctrl

Resource Deposit Area:
guer_resc_depot_mrkr

Spawn Points:
ground vehicle:
guer_veh_shop_spawn1
guer_veh_shop_spawn2
guer_veh_shop_spawn3
helicopter:
guer_veh_shop_spawn4
guer_veh_shop_spawn5
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

_pos = getPos guer_base;

//flag
guer_flag = createVehicle ["Flag_Green_F", _pos, [], 0, "CAN_COLLIDE"];
guer_flag setPos [(_pos select 0) + 0, (_pos select 1) - 15, 0];

//Vehicle Shop
guer_veh_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop setPos [(_pos select 0) + 30, (_pos select 1) + 10, 0];
guer_veh_shop setDir 90;
						
guer_veh_shop setVehicleVarName "guer_veh_shop";
publicVariable "guer_veh_shop";
guer_veh_shop addEventHandler ["HandleDamage", {false}];
guer_veh_shop enableSimulationGlobal false;
guer_veh_shop setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Ground

//spawn1
guer_veh_shop_spawn1 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop_spawn1 setPos [(_pos select 0) + 35, (_pos select 1) + 20, 0];
						
guer_veh_shop_spawn1 setVehicleVarName "guer_veh_shop_spawn1";
publicVariable "guer_veh_shop_spawn1";
guer_veh_shop_spawn1 addEventHandler ["HandleDamage", {false}];
guer_veh_shop_spawn1 setVariable ["R3F_LOG_disabled", true,true];

//spawn2
guer_veh_shop_spawn2 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop_spawn2 setPos [(_pos select 0) + 35, (_pos select 1) + 27.5, 0];
						
guer_veh_shop_spawn2 setVehicleVarName "guer_veh_shop_spawn2";
publicVariable "guer_veh_shop_spawn2";
guer_veh_shop_spawn2 addEventHandler ["HandleDamage", {false}];
guer_veh_shop_spawn2 setVariable ["R3F_LOG_disabled", true,true];

//spawn3
guer_veh_shop_spawn3 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop_spawn3 setPos [(_pos select 0) + 35, (_pos select 1) + 35.5, 0];
						
guer_veh_shop_spawn3 setVehicleVarName "guer_veh_shop_spawn3";
publicVariable "guer_veh_shop_spawn3";
guer_veh_shop_spawn3 addEventHandler ["HandleDamage", {false}];
guer_veh_shop_spawn3 setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Helis

//spawn4
guer_veh_shop_spawn4 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop_spawn4 setPos [(_pos select 0) + 30, (_pos select 1) - 8, 0];
						
guer_veh_shop_spawn4 setVehicleVarName "guer_veh_shop_spawn4";
publicVariable "guer_veh_shop_spawn4";
guer_veh_shop_spawn4 addEventHandler ["HandleDamage", {false}];
guer_veh_shop_spawn4 setVariable ["R3F_LOG_disabled", true,true];

//spawn5
guer_veh_shop_spawn5 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
guer_veh_shop_spawn5 setPos [(_pos select 0) + 30, (_pos select 1) - 30, 0];
						
guer_veh_shop_spawn5 setVehicleVarName "guer_veh_shop_spawn5";
publicVariable "guer_veh_shop_spawn5";
guer_veh_shop_spawn5 addEventHandler ["HandleDamage", {false}];
guer_veh_shop_spawn5 setVariable ["R3F_LOG_disabled", true,true];

//Infantry Shop
guer_inf_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
guer_inf_shop setPos [(_pos select 0) - 23, (_pos select 1) - 22, 0];
guer_inf_shop setDir -90;
						
guer_inf_shop setVehicleVarName "guer_inf_shop";
publicVariable "guer_inf_shop";
guer_inf_shop addEventHandler ["HandleDamage", {false}];
guer_inf_shop enableSimulationGlobal false;
guer_inf_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
guer_inf_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
guer_inf_depot_mrkr setPos [(_pos select 0) - 20, (_pos select 1) -19, 0];
						
guer_inf_depot_mrkr setVehicleVarName "guer_inf_depot_mrkr";
publicVariable "guer_inf_depot_mrkr";
guer_inf_depot_mrkr addEventHandler ["HandleDamage", {false}];
guer_inf_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];

//Fortification Store
guer_fort_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
guer_fort_shop setPos [(_pos select 0) - 8, (_pos select 1) + 3.5, 0];
guer_fort_shop setDir 90;
						
guer_fort_shop setVehicleVarName "guer_fort_shop";
publicVariable "guer_fort_shop";
guer_fort_shop addEventHandler ["HandleDamage", {false}];
guer_fort_shop enableSimulationGlobal false;
guer_fort_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
guer_fort_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
guer_fort_depot_mrkr setPos [(_pos select 0) - 12, (_pos select 1) + 7.5, 0];
						
guer_fort_depot_mrkr setVehicleVarName "guer_fort_depot_mrkr";
publicVariable "guer_fort_depot_mrkr";
guer_fort_depot_mrkr addEventHandler ["HandleDamage", {false}];
guer_fort_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];

//Resource Deposit Control
guer_resc_depot_ctrl = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
guer_resc_depot_ctrl setPos [(_pos select 0) - 28, (_pos select 1) + 27, 0];
guer_resc_depot_ctrl setDir 0;
						
guer_resc_depot_ctrl setVehicleVarName "guer_resc_depot_ctrl";
publicVariable "guer_resc_depot_ctrl";
guer_resc_depot_ctrl addEventHandler ["HandleDamage", {false}];
guer_resc_depot_ctrl enableSimulationGlobal false;
guer_resc_depot_ctrl setVariable ["R3F_LOG_disabled", true,true];

//Resource Deposit Point
guer_resc_depot_mrkr = createVehicle ["Land_JumpTarget_F", _pos, [], 0, "CAN_COLLIDE"];
guer_resc_depot_mrkr setPos [(_pos select 0) - 23, (_pos select 1) + 32, 0];
guer_resc_depot_mrkr setDir 0;
						
guer_resc_depot_mrkr setVehicleVarName "guer_resc_depot_mrkr";
publicVariable "guer_resc_depot_mrkr";
guer_resc_depot_mrkr addEventHandler ["HandleDamage", {false}];
guer_resc_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];