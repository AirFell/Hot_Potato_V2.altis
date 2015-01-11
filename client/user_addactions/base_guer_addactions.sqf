////////////////////////////////////////
////////////Resource Depot//////////////
////////////////////////////////////////
player addAction [
	("<t color=""#FFFFFF"">" + ("Resource Deposit") + "</t>"), {
//Make a list of the barrels within the radius of the marker.
	_barrels = nearestObjects [getPos guer_resc_depot_mrkr, ["Land_MetalBarrel_F"], 10];
			
	_payOut = count _barrels * 100;
	_addResources = count _barrels * 100;
//run a loop that goes through each barrel and deletes it.
	if (count _barrels > 0) then {
		{
			deleteVehicle _x;
		} forEach _barrels;
		hint format ["You have been awarded %1 credits. The base has received %2 resources.", _payout, _addResources];
	} else {
		hint "No barrels Found.";
	};
//add our credits and resources to the pool, then put it back in its scope
	playerCredits = playerCredits + _payOut;
	guer_base_resources = guer_base_resources + _addResources;
	publicVariable "guer_base_resources";
				
//reset our local variables back to 0
	_payOut = 0;
	_addResources = 0;
	},
	nil, 0.5, True, True, "", "(player distance guer_resc_depot_ctrl) < 3"
];
////////////////////////////////////////
////////////Infantry Store//////////////
////////////////////////////////////////
player addAction [
	("<t color=""#FFFFFF"">" + ("Weapon/Gear Store") + "</t>"), {
		createVehicle ["Box_East_Wps_F", getPos guer_inf_depot_mrkr, [], 0, "NONE"];
	},
	nil, 0.5, True, True, "", "(player distance guer_inf_shop) < 3"
];
////////////////////////////////////////
////////////Auto Zone///////////////
////////////////////////////////////////
player addAction [
	("<t color=""#FFFFFF"">" + ("Auto Zone") + "</t>"),
		"client\dialogs\autoZone\autoZone_Load.sqf", 
	nil, 0.5, True, True, "", "(player distance guer_veh_shop) < 3"
];
////////////////////////////////////////
////////////Fortifications//////////////
////////////////////////////////////////
player addAction [
	("<t color=""#FFFFFF"">" + ("Home Depot") + "</t>"),
		"client\dialogs\homeDepot\homeDepot_Load.sqf", 
	nil, 0.5, True, True, "", "(player distance guer_fort_shop) < 3"
];

////////////////////////////////////////
////////////Vehicle Repair//////////////
////////////////////////////////////////

player addAction [
	("<t color=""#E0E635"">" + ("Repair and Rearm Vehicle") + "</t>"), {
		_veh = (vehicle player);
		hint format ["Please wait %1 seconds for repair and rearm.",10];
		sleep 10;
		_veh setFuel 1;
		_veh setDamage 0;
		_veh setVehicleAmmo 1;
	}, 
	nil, 2, True, True, "", "vehicle player != player && (assignedVehicleRole player select 0) == ""Driver"" && ((player distance guer_veh_shop_spawn1) < 10 || (player distance guer_veh_shop_spawn2) < 10 || (player distance guer_veh_shop_spawn3) < 10 || (player distance guer_veh_shop_spawn4) < 10 || (player distance guer_veh_shop_spawn5) < 10)"
];