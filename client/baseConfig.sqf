/*********************************************************
 *********************************************************
ScriptName: baseConfig.sqf
Author: Sanguine
Create Date: 2013-09-16 20:40:58
*********************************************************
*********************************************************/

// This tracks which bases infostand the player is interacting with
//currentBase = "";

// Array Parameters
// Text name, class name, Resource cost, Credit Cost



/*
//default array layout
nameofArray = compileFinal str
[
   // ["Text name", "class name", Resource cost, Credit Cost],
	["", "", 25,25],
	["", "", 25,25],
	["", "", 25,25]
];
*/

//VEHICLE ARRAYS
vehicleArray_Light = compileFinal str
[
//empty template ["","", 0,0],
    ["Quadbike","B_Quadbike_01_F", 50,20],
	["Offroad Pickup","B_G_Offroad_01_F", 35,100],
	["Offroad Armed","B_G_Offroad_01_armed_F", 50,150],
	["HEMTT Bomb Delivery","B_Truck_01_transport_F", 35,100],
	["HEMTT Transport Covered","B_Truck_01_covered_F", 25,75],
	["Tempest Bomb Delivery","O_Truck_03_transport_F", 35,100],
	["Tempest Transport Covered","O_Truck_03_covered_F", 25,75],
	["Zamak Bomb Delivery","I_Truck_02_transport_F", 35,100],
	["Zamak Transport Covered","I_Truck_02_covered_F", 25,75],
	["Ifrit","O_MRAP_02_F", 85,250],
	["Strider","I_MRAP_03_F", 85,250],
	["Hunter","B_MRAP_01_F", 85,250],
	["Hunter HMG","B_MRAP_01_hmg_F", 165,500],
	["Ifrit HMG","O_MRAP_02_hmg_F", 165,500],
	["Strider HMG","I_MRAP_03_hmg_F", 165,500],
	["Hunter GMG","B_MRAP_01_gmg_F", 250,750],
	["Ifrit GMG","O_MRAP_02_gmg_F", 250,750],
	["Strider GMG","I_MRAP_03_gmg_F", 250,750]
];
vehicleArray_Heavy = compileFinal str
[
	["IFV-6c Panther","B_APC_Tracked_01_rcws_F", 335,1000],
	["FV-720 Mora","I_APC_tracked_03_cannon_F", 335,1000],
	["BTR-K Kamysh","O_APC_Tracked_02_cannon_F", 335,1000],
    ["AMV-7 Marshall","B_APC_Wheeled_01_cannon_F", 415,1250],
	["MSE-3 Marid","O_APC_Wheeled_02_rcws_F", 415,1250],
	["AFV-4 Gorgon","I_APC_Wheeled_03_cannon_F", 415,1250],
	["IFV-6a Cheetah","B_APC_Tracked_01_AA_F", 835,2500],
	["ZSU-39 Tigris","O_APC_Tracked_02_AA_F", 835,2500],
	["MBT-52 Kuma","I_MBT_03_cannon_F", 1655,5000],
	["T-100 Varsuk","O_MBT_02_cannon_F", 1655,5000],
    ["M2A4 Slammer UP","B_MBT_01_TUSK_F", 1655,5000]
];
vehicleArray_Air = compileFinal str
[
    ["MH-9 Hummingbird","B_Heli_Light_01_F", 250,500],
	["Po-30 Orca Unarmed","O_Heli_Light_02_unarmed_F", 300,600],
	["WY-55 Hellcat Unarmed","I_Heli_light_03_unarmed_F", 300,600],
	["CH-49 Mohawk","I_Heli_Transport_02_F", 325,650],
	["Mi-290 Taru Bench","O_Heli_Transport_04_bench_F", 0,0],
	["Mi-290 Taru Covered","O_Heli_Transport_04_covered_F", 0,0],
	["CH-67 Huron Unarmed","B_Heli_Transport_03_unarmed_F", 0,0],
	["UH-80 Ghost Hawk","B_Heli_Transport_01_camo_F", 500,1000],
	["CH-67 Huron","B_Heli_Transport_03_F", 0,0],
	["AH-9 Pawnee","B_Heli_Light_01_armed_F", 1250,2500],
	["Po-30 Orca","O_Heli_Light_02_F", 2500,5000],
	["WY-55 Hellcat","I_Heli_light_03_F", 2500,5000],
	["AH-99 Blackfoot","B_Heli_Attack_01_F", 3750,7500],
	["Mi-48 Kajman","O_Heli_Attack_02_F", 4250,8500]
];

allFactoryVehicles = (call vehicleArray_Light + call vehicleArray_Heavy + call vehicleArray_Air);

/////////////////////////////////////////////
//---------------Cratesss------------------//
/////////////////////////////////////////////

crateArray_Ammo = compileFinal str
[
	["West Ammo", "Box_NATO_Ammo_F", 12,50],
	["East Ammo", "Box_East_Ammo_F", 12,50],
	["Inde Ammo", "Box_IND_Ammo_F", 12,50]
];
crateArray_Basic = compileFinal str
[
	["West Basic Weapons", "Box_NATO_Wps_F", 25,100],
	["East Basic Weapons", "Box_East_Wps_F", 25,100],
	["Inde Basic Weapons", "Box_IND_Wps_F", 25,100]
];
crateArray_Support = compileFinal str
[
	["West Support", "Box_NATO_Support_F", 50,200],
	["East Support", "Box_East_Support_F", 50,200],
	["Inde Support", "Box_IND_Support_F", 50,200]
];
crateArray_Supplies = compileFinal str
[
	["West Supplies", "B_supplyCrate_F", 75,300],
	["East Supplies", "O_supplyCrate_F", 75,300],
	["Inde Supplies", "I_supplyCrate_F", 75,300]
];
crateArray_Special = compileFinal str
[
    ["West Special Weapons", "Box_NATO_WpsSpecial_F", 100,400],
	["East Special Weapons", "Box_East_WpsSpecial_F", 100,400],
	["Inde Special Weapons", "Box_IND_WpsSpecial_F", 100,400]
];
crateArray_Explosives = compileFinal str
[
	["West Explosives", "Box_NATO_AmmoOrd_F", 125,500],
	["East Explosives", "Box_East_AmmoOrd_F", 125,500],
	["Inde Explosives", "Box_IND_AmmoOrd_F", 125,500]
];
crateArray_Launchers = compileFinal str
[
	["West Launchers", "Box_NATO_WpsLaunch_F", 150,600],
	["East Launchers", "Box_East_WpsLaunch_F", 150,600],
	["Inde Launchers", "Box_IND_WpsLaunch_F", 150,600]
];
crateArray_LargeCache = compileFinal str
[
	["West Cache", "B_CargoNet_01_ammo_F", 175,700],
	["East Cache", "O_CargoNet_01_ammo_F", 175,700],
	["Inde Cache", "I_CargoNet_01_ammo_F", 175,700]
];

allCrateArrays = (call crateArray_Ammo + call crateArray_Basic + call crateArray_Support + call crateArray_Supplies + call crateArray_Special + call crateArray_Explosives + call crateArray_Launchers + call crateArray_LargeCache);

////////////////////////////////////////////////////////////
//--------------------Fortifications----------------------//
////////////////////////////////////////////////////////////

fortificationArray = compileFinal str
[
    ["//---Base Fortifications---//", "", 0,0],
	["HBarrier 1", "Land_HBarrier_1_F", 1,10],
	["HBarrier 3", "Land_HBarrier_3_F", 2,20],
	["HBarrier 5", "Land_HBarrier_5_F", 3,25],
	["HBarrier Big", "Land_HBarrierBig_F", 3,30],
	["HBarrier Tower", "Land_HBarrierTower_F", 10,100],
	["HBarrier Wall-Corner", "HBarrierWall_corner_F", 7,75],
	["HBarrier Corridor", "Land_HBarrierWall_corridor_F", 7,75],
	["HBarrier Wall 4", "Land_HBarrierWall4_F", 5,50],
	["HBarrier wall 6", "Land_HBarrierWall6_F", 7,75],
	["BagFence Short", "Land_BagFence_Short_F", 1,10],
	["BagFence Round", "Land_BagFence_Round_F", 2,15],
	["BagFence Long", "Land_BagFence_Long_F", 2,20],
	["BagFence Corner", "Land_BagFence_Corner_F", 1,6],
	["BagBunker Small", "Land_BagBunker_Small_F", 5,50],
	["BagBunker Large", "Land_BagBunker_Large_F", 12,125],
	
	["//---Static Weapons---//", "", 0,0],
	["Static HMG Short", "B_HMG_01_F", 50,250],
	["Static HMG Tall", "B_HMG_01_high_F", 50,250],
	["GMG Short", "B_GMG_01_F", 75,500],
	["Static GMG Tall", "B_GMG_01_high_F", 75,500],
	["Static AA", "B_static_AA_F", 125,750],
	["Static AT", "B_static_AT_F", 125,750]
];
allFortificationArrays = (call fortificationArray);
