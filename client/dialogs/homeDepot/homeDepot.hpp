#include "homeDepot_Defines.hpp"

class homeDepot_Dialog
{
	idd= HOMEDEPOT;
	movingenable=true;
	
	class controls 
	{
		class homeDepot_MainBGBOX: BOX
	{
		idc = -1;
		x = 0.375384 * safezoneW + safezoneX;
		y = 0.206329 * safezoneH + safezoneY;
		w = 0.333111 * safezoneW;
		h = 0.520022 * safezoneH;
	};
		class homeDepot_MainBG: RscFrame
	{
		idc = -1;
		x = 0.380384 * safezoneW + safezoneX;
		y = 0.211329 * safezoneH + safezoneY;
		w = 0.323111 * safezoneW;
		h = 0.510022 * safezoneH;
	};
		class homeDepot_MenuTitle: MenuTitle
	{
		idc = -1;
		x = 0.380384 * safezoneW + safezoneX;
		y = 0.210989 * safezoneH + safezoneY;
		w = 0.323111 * safezoneW;
		h = 0.03400115 * safezoneH;
	};
	class homeDepot_Footer: Footer
	{
		idc = -1;
		x = 0.380384 * safezoneW + safezoneX;
		y = 0.653009 * safezoneH + safezoneY;
		w = 0.323111 * safezoneW;
		h = 0.068021 * safezoneH;
	};
	class homeDepot_MenuTitleText: RscStructuredTextLeft
	{
		idc = -1;
		text = "Home Depot"; //--- ToDo: Localize;
		x = 0.380384 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.155146 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class homeDepot_FundsText: RscStructuredText
	{
		idc = FUNDSTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.53553 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.167965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class homeDepot_VehicleText: RscListBox
	{
		idc = VEHICLELIST;
		onLBSelChanged = "[] execVM 'client\dialogs\homeDepot\homeDepot_Price.sqf'";
		x = 0.429407 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.30401815 * safezoneH;
	};
	class homeDepot_CostText: RscStructuredTextLeft
	{
		idc = COSTTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.414308 * safezoneW + safezoneX;
		y = 0.60001 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class homeDepot_CancelButton: RscButton
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
	class homeDepot_PurchaseButton: RscButton
	{
		idc = PURCHASEBUTTON;
		text = "Purchase"; //--- ToDo: Localize;
		onButtonClick = "[] execVM 'client\dialogs\homeDepot\homeDepot_Purchase.sqf'";
		//onLoad = "(_this select 0) []execVM ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.550445 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.0955931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
};
};

