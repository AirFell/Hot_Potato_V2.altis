while {True} do {
	sleep 300;
	
	west_base_resources = west_base_resources + 100;
	publicVariable "west_base_resources";

	east_base_resources = east_base_resources + 100;
	publicVariable "east_base_resources";

	guer_base_resources = guer_base_resources + 100;
	publicVariable "guer_base_resources";
};