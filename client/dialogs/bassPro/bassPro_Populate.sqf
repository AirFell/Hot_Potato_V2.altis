/*******
Sanguine
*******/

#include "bassPro_Defines.hpp";
disableSerialization;

//Grab control of display elements
_Dialog = findDisplay BASSPRO;
_button1 = _Dialog displayCtrl BUTTON1;
_button2 = _Dialog displayCtrl BUTTON2;
_button3 = _Dialog displayCtrl BUTTON3;
_button4 = _Dialog displayCtrl BUTTON4;
_button5 = _Dialog displayCtrl BUTTON5;
_button6 = _Dialog displayCtrl BUTTON6;
_button7 = _Dialog displayCtrl BUTTON7;
_button8 = _Dialog displayCtrl BUTTON8;
_button9 = _Dialog displayCtrl BUTTON9;
_picture = _Dialog displayCtrl MAINPICTURE;
_costText = _Dialog displayCtrl COSTTEXT;
_purchase = _Dialog displayCtrl PURCHASEBUTTON;
_vehlist = _dialog displayCtrl VEHICLELIST;
_costText ctrlSetStructuredText parseText format["<t size='0.75'></t>"];





switch(_this select 0) do 
{
	case 1: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Ammo;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;
	};
	case 2: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Basic;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 3: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Support;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 4: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Supplies;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 5: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Special;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 6: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Explosives;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 7: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_Launchers;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 8: 
	{
		lbClear _vehlist;
		_vehlist lbSetCurSel -1;
		_vehArray = call crateArray_LargeCache;
		{
			_vehClass = _x select 1;
	
			if (1<2) then
			{
				_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
				if (2>1) then
				{
					//_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
					_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
					//_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
					_vehlist lbSetData [_vehlistIndex, _vehClass];
				};
			};
		} forEach _vehArray;	
	};
	case 9: 
	{	
		ctrlShow [COSTTEXT, false];
		ctrlShow [VEHICLELIST, false];
		ctrlShow [MAINPICTURE, true];
		_picture ctrlSetText "client\icons\classMenu_Main.paa";
		ctrlShow [BUTTON1, true];
		_button1 ctrlSetText "Medic";
		_button1 buttonSetAction "[11] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON2, true];
		_button2 ctrlSetText "Engineer";
		_button2 buttonSetAction "[12] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON3, true];
		_button3 ctrlSetText "Pilot";
		_button3 buttonSetAction "[13] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON4, true];
		_button4 ctrlSetText "TankOPS";
		_button4 buttonSetAction "[14] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON5, true];
		_button5 ctrlSetText "Sniper";
		_button5 buttonSetAction "[15] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON6, true];
		_button6 ctrlSetText "Recon";
		_button6 buttonSetAction "[16] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON7, true];
		_button7 ctrlSetText "Officer";
		_button7 buttonSetAction "[16] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON8, true];
		_button8 ctrlSetText "PMC 1";
		_button8 buttonSetAction "[17] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON9, true];
		_button9 ctrlSetText "PMC 2";
		_button9 buttonSetAction "[18] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		
	};
	case 10: 
	{
		ctrlShow [MAINPICTURE, false];
		ctrlShow [VEHICLELIST, true];
		ctrlShow [PURCHASEBUTTON, false];
		ctrlShow [BUTTON1, true];
		_button1 ctrlSetText "Ammo";
		_button1 buttonSetAction "[1] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		_button2 ctrlSetText "Basic";
		_button2 buttonSetAction "[2] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON3, true];
		_button3 ctrlSetText "Support";
		_button3 buttonSetAction "[3] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		_button4 ctrlSetText "Supplies";
		_button4 buttonSetAction "[4] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON5, true];
		_button5 ctrlSetText "Special";
		_button5 buttonSetAction "[5] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		_button6 ctrlSetText "Explosive";
		_button6 buttonSetAction "[6] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON7, true];
		_button7 ctrlSetText "Launchers";
		_button7 buttonSetAction "[7] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		_button8 ctrlSetText "Cache";
		_button8 buttonSetAction "[8] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		ctrlShow [BUTTON9, false];
	};
	case 11: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[1] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 50</t>"];
	};
	case 12: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[2] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 50</t>"];
	};	
	case 13: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[3] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 150</t>"];
	};
	case 14: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[4] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 150</t>"];
	};
	case 15: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[5] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 200</t>"];
	};
	case 16: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[6] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 100</t>"];
	};
	case 17: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[7] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 100</t>"];
	};
	case 18: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[8] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 125</t>"];
	};
	case 19: 
	{
		_picture ctrlSetText "client\icons\classMenu_Recon.paa";
		ctrlShow [PURCHASEBUTTON, true];
		_purchase buttonSetAction "[9] execVM 'client\dialogs\bassPro\bassPro_Purchase.sqf'";
		ctrlShow [COSTTEXT, true];
		_costText ctrlSetStructuredText parseText format["<t size='0.75'>Credit Cost: 125</t>"];
	};
};