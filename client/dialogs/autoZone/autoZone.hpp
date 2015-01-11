#include "autoZone_Defines.hpp"

class autoZone_Dialog
{
	idd= AUTOZONE;
	movingenable=true;
	
	class controls 
	{
		class autoZone_MainBGBOX: BOX
	{
		idc = -1;
		x = 0.275384 * safezoneW + safezoneX;
		y = 0.206329 * safezoneH + safezoneY;
		w = 0.433111 * safezoneW;
		h = 0.520022 * safezoneH;
	};
		class autoZone_MainBG: RscFrame
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.211329 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.510022 * safezoneH;
	};
		class autoZone_MenuTitle: MenuTitle
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.210989 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.03400115 * safezoneH;
	};
	class autoZone_Footer: Footer
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.653009 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.068021 * safezoneH;
	};
	class autoZone_SideBar: Sidebar
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.0987262 * safezoneW;
		h = 0.40801815 * safezoneH;
	};
	class autoZone_MenuTitleText: RscStructuredTextLeft
	{
		idc = -1;
		text = "Auto Zone"; //--- ToDo: Localize;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.155146 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class autoZone_FundsText: RscStructuredText
	{
		idc = FUNDSTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.43553 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class autoZone_LightButton: RscButton
	{
		idc = LIGHTBUTTON;
		text = "Light"; //--- ToDo: Localize;
		onButtonClick = "[0] execVM 'client\dialogs\autoZone\autoZone_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class autoZone_HeavyButton: RscButton
	{
		idc = HEAVYBUTTON;
		text = "Heavy"; //--- ToDo: Localize;
		onButtonClick = "[1] execVM 'client\dialogs\autoZone\autoZone_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.32319285 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class autoZone_AirButton: RscButton
	{
		idc = AIRBUTTON;
		text = "Air"; //--- ToDo: Localize;
		onButtonClick = "[2] execVM 'client\dialogs\autoZone\autoZone_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.39215785 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
		class autoZone_SeaButton: RscButton
	{
		idc = SEABUTTON;
		text = "Sea"; //--- ToDo: Localize;
		onButtonClick = "[3] execVM 'client\dialogs\autoZone\autoZone_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.46112285 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class autoZone_VehicleText: RscListBox
	{
		idc = VEHICLELIST;
		onLBSelChanged = "[] execVM 'client\dialogs\autoZone\autoZone_Price.sqf'";
		x = 0.419407 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.30401815 * safezoneH;
	};
	class autoZone_CostText: RscStructuredTextLeft
	{
		idc = COSTTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.414308 * safezoneW + safezoneX;
		y = 0.60001 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class autoZone_CancelButton: RscButton
	{
		idc = CANCELBUTTON;
		text = "Cancel"; //--- ToDo: Localize;
		onButtonClick = "closeDialog 0;";
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.429341 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.0955931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
	class autoZone_PurchaseButton: RscButton
	{
		idc = PURCHASEBUTTON;
		text = "Purchase"; //--- ToDo: Localize;
		onButtonClick = "[] execVM 'client\dialogs\autoZone\autoZone_Purchase.sqf'";
		//onLoad = "(_this select 0) []execVM ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.550445 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.0955931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
};
};

