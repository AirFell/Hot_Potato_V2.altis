/*
Object ID's:

Controls for addactions:
west_veh_shop
west_inf_shop
west_fort_shop
west_resc_depot_ctrl

Resource Deposit Area:
west_resc_depot_mrkr

Spawn Points:
ground vehicle:
west_veh_shop_spawn1
west_veh_shop_spawn2
west_veh_shop_spawn3
helicopter:
west_veh_shop_spawn4
west_veh_shop_spawn5
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

_pos = getPos west_base;

//flag
west_flag = createVehicle ["Flag_Blue_F", _pos, [], 0, "CAN_COLLIDE"];
west_flag setPos [(_pos select 0) + 0, (_pos select 1) - 15, 0];

//Vehicle Shop
west_veh_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop setPos [(_pos select 0) + 30, (_pos select 1) + 10, 0];
west_veh_shop setDir 90;
						
west_veh_shop setVehicleVarName "west_veh_shop";
publicVariable "west_veh_shop";
west_veh_shop addEventHandler ["HandleDamage", {false}];
west_veh_shop enableSimulationGlobal false;
west_veh_shop setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Ground

//spawn1
west_veh_shop_spawn1 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop_spawn1 setPos [(_pos select 0) + 35, (_pos select 1) + 20, 0];
						
west_veh_shop_spawn1 setVehicleVarName "west_veh_shop_spawn1";
publicVariable "west_veh_shop_spawn1";
west_veh_shop_spawn1 addEventHandler ["HandleDamage", {false}];
west_veh_shop_spawn1 setVariable ["R3F_LOG_disabled", true,true];

//spawn2
west_veh_shop_spawn2 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop_spawn2 setPos [(_pos select 0) + 35, (_pos select 1) + 27.5, 0];
						
west_veh_shop_spawn2 setVehicleVarName "west_veh_shop_spawn2";
publicVariable "west_veh_shop_spawn2";
west_veh_shop_spawn2 addEventHandler ["HandleDamage", {false}];
west_veh_shop_spawn2 setVariable ["R3F_LOG_disabled", true,true];

//spawn3
west_veh_shop_spawn3 = createVehicle ["Land_Flush_Light_green_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop_spawn3 setPos [(_pos select 0) + 35, (_pos select 1) + 35.5, 0];
						
west_veh_shop_spawn3 setVehicleVarName "west_veh_shop_spawn3";
publicVariable "west_veh_shop_spawn3";
west_veh_shop_spawn3 addEventHandler ["HandleDamage", {false}];
west_veh_shop_spawn3 setVariable ["R3F_LOG_disabled", true,true];

//Vehicle Spawns: Helis

//spawn4
west_veh_shop_spawn4 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop_spawn4 setPos [(_pos select 0) + 30, (_pos select 1) - 8, 0];
						
west_veh_shop_spawn4 setVehicleVarName "west_veh_shop_spawn4";
publicVariable "west_veh_shop_spawn4";
west_veh_shop_spawn4 addEventHandler ["HandleDamage", {false}];
west_veh_shop_spawn4 setVariable ["R3F_LOG_disabled", true,true];

//spawn5
west_veh_shop_spawn5 = createVehicle ["Land_Flush_Light_yellow_F", _pos, [], 0, "CAN_COLLIDE"];
west_veh_shop_spawn5 setPos [(_pos select 0) + 30, (_pos select 1) - 30, 0];
						
west_veh_shop_spawn5 setVehicleVarName "west_veh_shop_spawn5";
publicVariable "west_veh_shop_spawn5";
west_veh_shop_spawn5 addEventHandler ["HandleDamage", {false}];
west_veh_shop_spawn5 setVariable ["R3F_LOG_disabled", true,true];

//Infantry Shop
west_inf_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
west_inf_shop setPos [(_pos select 0) - 23, (_pos select 1) - 22, 0];
west_inf_shop setDir -90;
						
west_inf_shop setVehicleVarName "west_inf_shop";
publicVariable "west_inf_shop";
west_inf_shop addEventHandler ["HandleDamage", {false}];
west_inf_shop enableSimulationGlobal false;
west_inf_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
west_inf_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
west_inf_depot_mrkr setPos [(_pos select 0) - 20, (_pos select 1) -19, 0];
						
west_inf_depot_mrkr setVehicleVarName "west_inf_depot_mrkr";
publicVariable "west_inf_depot_mrkr";
west_inf_depot_mrkr addEventHandler ["HandleDamage", {false}];
west_inf_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];

//Fortification Store
west_fort_shop = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
west_fort_shop setPos [(_pos select 0) - 8, (_pos select 1) + 3.5, 0];
west_fort_shop setDir 90;
						
west_fort_shop setVehicleVarName "west_fort_shop";
publicVariable "west_fort_shop";
west_fort_shop addEventHandler ["HandleDamage", {false}];
west_fort_shop enableSimulationGlobal false;
west_fort_shop setVariable ["R3F_LOG_disabled", true,true];

//Fort Deposit Point
west_fort_depot_mrkr = createVehicle ["Land_ClutterCutter_large_F", _pos, [], 0, "CAN_COLLIDE"];
west_fort_depot_mrkr setPos [(_pos select 0) - 12, (_pos select 1) + 7.5, 0];
						
west_fort_depot_mrkr setVehicleVarName "west_fort_depot_mrkr";
publicVariable "west_fort_depot_mrkr";
west_fort_depot_mrkr addEventHandler ["HandleDamage", {false}];
west_fort_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];

//Resource Deposit Control
west_resc_depot_ctrl = createVehicle ["Land_InfoStand_V2_F", _pos, [], 0, "CAN_COLLIDE"];
west_resc_depot_ctrl setPos [(_pos select 0) - 28, (_pos select 1) + 27, 0];
west_resc_depot_ctrl setDir 0;
						
west_resc_depot_ctrl setVehicleVarName "west_resc_depot_ctrl";
publicVariable "west_resc_depot_ctrl";
west_resc_depot_ctrl addEventHandler ["HandleDamage", {false}];
west_resc_depot_ctrl enableSimulationGlobal false;
west_resc_depot_ctrl setVariable ["R3F_LOG_disabled", true,true];

//Resource Deposit Point
west_resc_depot_mrkr = createVehicle ["Land_JumpTarget_F", _pos, [], 0, "CAN_COLLIDE"];
west_resc_depot_mrkr setPos [(_pos select 0) - 23, (_pos select 1) + 32, 0];
west_resc_depot_mrkr setDir 0;
						
west_resc_depot_mrkr setVehicleVarName "west_resc_depot_mrkr";
publicVariable "west_resc_depot_mrkr";
west_resc_depot_mrkr addEventHandler ["HandleDamage", {false}];
west_resc_depot_mrkr setVariable ["R3F_LOG_disabled", true,true];