#include "bassPro_Defines.hpp"

class bassPro_Dialog
{
	idd= BASSPRO;
	movingenable=true;
	
	class controls 
	{
		class bassPro_MainBGBOX: BOX
	{
		idc = -1;
		x = 0.275384 * safezoneW + safezoneX;
		y = 0.206329 * safezoneH + safezoneY;
		w = 0.433111 * safezoneW;
		h = 0.512436385 * safezoneH;
	};
		class bassPro_MainBG: RscFrame
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.211329 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.504436385 * safezoneH;
	};
		class bassPro_MenuTitle: MenuTitle
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.210989 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.03400115 * safezoneH;
	};
	class bassPro_Footer: Footer
	{
		idc = -1;
		x = 0.377884 * safezoneW + safezoneX;
		y = 0.66683132 * safezoneH + safezoneY;
		w = 0.325611 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_preFooter: Footer
	{
		idc = -1;
		x = 0.377884 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.325611 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_SideBar: Sidebar
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.0987262 * safezoneW;
		h = 0.468435235 * safezoneH;
		//0.00281317
	};
	class bassPro_MenuTitleText: RscStructuredTextLeft
	{
		idc = -1;
		text = "Bass Pro Shop"; //--- ToDo: Localize;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.155146 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class bassPro_FundsText: RscStructuredText
	{
		idc = FUNDSTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.43553 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class bassPro_Button1: RscButton
	{
		idc = BUTTON1;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[0] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
		//0.428435235
	};
	class bassPro_Button2: RscButton
	{
		idc = BUTTON2;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[1] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.298603915 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_Button3: RscButton
	{
		idc = BUTTON3;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[2] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.35120783 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
		class bassPro_Button4: RscButton
	{
		idc = BUTTON4;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[3] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.403811745 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
		class bassPro_Button5: RscButton
	{
		idc = BUTTON5;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[4] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.45641566 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_Button6: RscButton
	{
		idc = BUTTON6;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[5] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.509019575 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_Button7: RscButton
	{
		idc = BUTTON7;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[6] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.56162349 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
		class bassPro_Button8: RscButton
	{
		idc = BUTTON8;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[7] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.614227405 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
		class bassPro_Button9: RscButton
	{
		idc = BUTTON9;
		text = ""; //--- ToDo: Localize;
		onButtonClick = "[8] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.66683132 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047603915 * safezoneH;
	};
	class bassPro_VehicleText: RscListBox
	{
		idc = VEHICLELIST;
		onLBSelChanged = "[] execVM 'client\dialogs\bassPro\bassPro_Price.sqf'";
		x = 0.419407 * safezoneW + safezoneX;
		y = 0.3224058725 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.30401815 * safezoneH;
	};
	class bassPro_MainBGPic: RscPicture
	{
		idc = MAINPICTURE;
		text = "client\icons\classMenu_Main.paa";
		x = 0.419407 * safezoneW + safezoneX;
		y = 0.3224058725 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.30401815 * safezoneH;	
	};
	class bassPro_CostText: RscStructuredTextLeft
	{
		idc = COSTTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.414308 * safezoneW + safezoneX;
		y = 0.6264240225 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
		class Attributes {
			align = "center";
		};
	};
	class bassPro_UniformButton: RscButtonALT
	{
		idc = UNIFORMBUTTON;
		text = "Uniforms"; //--- ToDo: Localize;
		onButtonClick = "[9] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.424308 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.1119588 * safezoneW;
		h = 0.0290016 * safezoneH;		
	};

	class bassPro_CrateButton: RscButtonALT
	{
		idc = CRATEBUTTON;
		text = "Crates"; //--- ToDo: Localize;
		onButtonClick = "[10] execVM 'client\dialogs\bassPro\bassPro_Populate.sqf'";
		x = 0.544641 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.1119588 * safezoneW;
		h = 0.0290016 * safezoneH;
	};
	class bassPro_CancelButton: RscButton
	{
		idc = CANCELBUTTON;
		text = "Cancel"; //--- ToDo: Localize;
		onButtonClick = "closeDialog 0;";
		x = 0.424308 * safezoneW + safezoneX;
		y = 0.67602117 * safezoneH + safezoneY;
		w = 0.1119588 * safezoneW; 
		h = 0.0290016 * safezoneH;
	};
	class bassPro_PurchaseButton: RscButton
	{
		idc = PURCHASEBUTTON;
		text = "Purchase"; //--- ToDo: Localize;
		onButtonClick = "";
		x = 0.544641 * safezoneW + safezoneX;
		y = 0.67602117 * safezoneH + safezoneY;
		w = 0.1119588 * safezoneW;
		h = 0.0290016 * safezoneH;
	};
};
};

