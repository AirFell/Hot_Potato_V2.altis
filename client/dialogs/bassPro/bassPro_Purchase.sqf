#include "bassPro_Defines.hpp";
disableSerialization;


_playerCredits = playerCredits;
_size = 0;
_price = 0;


_Dialog = findDisplay BASSPRO;

switch(_this select 0) do 
{
	case 1: 
	{
	_price = 50;
	if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
	playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//MEDIC
			case west: {
				player addUniform "U_B_CombatUniform_mcam_tshirt";
				player addVest "V_PlateCarrierSpec_rgr";
				player addHeadgear "H_HelmetB_light_desert";
			};
				
			case east: {
				player addUniform "U_O_CombatUniform_ocamo";
				player addVest "V_TacVest_khk";
				player addHeadgear "H_HelmetO_ocamo";
			};
		
			case resistance: {
				player addUniform "U_I_CombatUniform_shortsleeve";
				player addVest "V_PlateCarrierIA2_dgtl";
				player addHeadgear "H_HelmetIA";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 2: 
	{
		_price = 50;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//ENGINEER
			case west: {
				player addUniform "U_B_CombatUniform_mcam_vest";
				player addVest "V_Chestrig_rgr";
				player addHeadgear "H_HelmetB_desert";
			};
				
			case east: {
				player addUniform "U_O_CombatUniform_ocamo";
				player addVest "V_HarnessO_brn";
				player addHeadgear "H_HelmetO_ocamo";
			};
			
			case resistance: {
				player addUniform "U_I_CombatUniform";
				player addVest "V_PlateCarrierIA1_dgtl";
				player addHeadgear "H_HelmetIA";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 3: 
	{
		_price = 150;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//PILOT
			case west: {
				player addUniform "U_B_HeliPilotCoveralls";
				player addVest "V_TacVest_blk";
				player addHeadgear "H_PilotHelmetHeli_B";
				player additem "NVGoggles";
			};
				
			case east: {
				player addUniform "U_O_PilotCoveralls";
				player addVest "V_TacVest_khk";
				player addHeadgear "H_PilotHelmetHeli_O";
				player additem "NVGoggles_OPFOR";
			};
			
			case resistance: {
				player addUniform "U_I_HeliPilotCoveralls";
				player addVest "V_TacVest_oli";
				player addHeadgear "H_PilotHelmetHeli_I";
				player additem "NVGoggles_INDEP";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 4: 
	{
		_price = 150;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//TANK DRIVER
			case west: {
				player addUniform "U_B_CombatUniform_mcam_vest";
				player addVest "V_BandollierB_rgr";
				player addHeadgear "H_HelmetCrew_B";
			};
				
			case east: {
				player addUniform "U_O_SpecopsUniform_ocamo";
				player addVest "V_BandollierB_khk";
				player addHeadgear "H_HelmetCrew_O";
			};
			
			case resistance: {
				player addUniform "U_I_CombatUniform";
				player addVest "V_BandollierB_oli";
				player addHeadgear "H_HelmetCrew_I";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 5: 
	{
		_price = 200;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//GHILLIE
			case west: {
				player addUniform "U_B_GhillieSuit";
				player addVest "V_Chestrig_rgr";
			};
				
			case east: {
				player addUniform "U_O_GhillieSuit";
				player addVest "V_Chestrig_khk";
			};
			
			case resistance: {
				player addUniform "U_I_GhillieSuit";
				player addVest "V_Chestrig_oli";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 6: 
	{
		_price = 100;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//SPEC OPS
			case west: {
				player addUniform "U_B_CombatUniform_mcam_vest";
				player addVest "V_Chestrig_rgr";
				player addHeadgear "H_Watchcap_camo";
				player additem "NVGoggles";
			};
				
			case east: {
				player addUniform "U_O_CombatUniform_oucamo";
				player addVest "V_HarnessO_gry";
				player addHeadgear "H_HelmetO_oucamo";
				player additem "NVGoggles_OPFOR";
			};
			
			case resistance: {
				player addUniform "U_I_CombatUniform_shortsleeve";
				player addVest "V_Chestrig_oli";
				player addHeadgear "H_MilCap_dgtl";
				player additem "NVGoggles_INDEP";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 7: 
	{
		_price = 100;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//OFFICER
			case west: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_BandollierB_rgr";
				player addHeadgear "H_MilCap_mcamo";
			};
				
			case east: {
				player addUniform "U_O_OfficerUniform_ocamo";
				player addVest "V_BandollierB_khk";
				player addHeadgear "H_Beret_ocamo";
			};
			
			case resistance: {
				player addUniform "U_I_OfficerUniform";
				player addVest "V_BandollierB_oli";
				player addHeadgear "H_MilCap_dgtl";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 8: 
	{
		_price = 125;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//SPECIAL 1
			case west: {
				player addUniform "U_BG_Guerilla2_1";
				player addVest "V_TacVest_blk";
				player addHeadgear "H_Bandanna_khk";
			};
				
			case east: {
				player addUniform "U_OG_Guerilla1_1";
				player addVest "V_Chestrig_oli";
				player addHeadgear "H_Shemag_olive";
			};
			
			case resistance: {
				player addUniform "U_IG_leader";
				player addVest "V_Chestrig_blk";
				player addHeadgear "H_Watchcap_blk";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	case 9: 
	{
		_price = 125;
		if(_playerCredits < _price) exitwith {hintSilent "You do not have enough Credits!"};
		playerCredits = _playerCredits - _price;
		_Uitems = uniformItems player;
		_Vitems = vestItems player;
		
		//remove the old uniform, add a new one.
		removeUniform player;
		removeVest player;
		removeHeadgear player;
		sleep 0.1;
		_nul = switch (side player) do {
//SPECIAL 2
			case west: {
				player addUniform "U_BG_Guerilla2_3";
				player addVest "V_TacVest_blk";
				player addHeadgear "H_Booniehat_khk_hs";
			};
				
			case east: {
				player addUniform "U_OG_Guerilla1_1";
				player addVest "V_BandollierB_blk";
				player addHeadgear "H_Cap_oli";
			};
			
			case resistance: {
				player addUniform "U_IG_Guerilla3_1";
				player addVest "V_BandollierB_khk";
				player addHeadgear "H_Shemag_olive";
			};
		};
		
		//put everything back.
		{
			player addItemToUniform _x;
		} foreach _Uitems;
		{
			player addItemToVest _x;
		} foreach _Vitems;
	};
	closeDialog 0;
};


