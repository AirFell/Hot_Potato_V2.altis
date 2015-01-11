/*
	@file Version: 1.0
	@file Name: HPHud.hpp
	@file Author: 
	@file Created: 
	@file Args:
*/

#define hud_status_idc 3600
#define hud_vehicle_idc 3601
#define hud_activity_icon_idc 3602
#define hud_activity_textbox_idc 3603
#define hud_score_idc 3604
#define hud_bomb_status_idc 3605

class HPHud {
	idd = -1;
    fadeout=0;
    fadein=0;
	duration = 20;
	name= "HPHud";
	onLoad = "uiNamespace setVariable ['HPHud', _this select 0]";
	
	class controlsBackground {
		class HPHud_Vehicle:w_RscText
		{
			idc = hud_vehicle_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (1 - (0.43 / SafeZoneW)));
			y = safeZoneY + (safeZoneH * (1 - (0.33 / SafeZoneH)));
			w = 0.5; h = 0.65;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "right";
			};
		};
		class HPHud_Status:w_RscText
		{
			idc = hud_status_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			y = safeZoneY + (safeZoneH * (1 - (0.34 / SafeZoneH)));
			w = 0.15; h = 0.40;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "right";
			};
		};	
		class HPHud_Score:w_RscText
		{
			idc = hud_score_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * 0.40);
			y = safeZoneY + (safeZoneH * 0.011);
			w = 0.25; h = 0.11;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "Left";
			};
		};
		class HPHud_Bomb_Status:w_RscText
		{
			idc = hud_bomb_status_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * 0.42);
			y = safeZoneY + (safeZoneH * 0.044);
			w = 0.25; h = 0.11;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "Left";
			};
		};
		class HPHud_ActivityIcon:w_RscText
		{
			idc = hud_activity_icon_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.03;
			x = safeZoneX + (safeZoneW * 0.007);
			y = safeZoneY + (safeZoneH * 0.011);
			w = (0.06 * 3/4) * safezoneW;
			h = 0.05 * safezoneH;
			colorText[] = {1,1,1,1};
			lineSpacing = 2;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "center";
				valign = "middle";
			};
		};
		class HPHud_ActivityTextBox:w_RscText
		{
			idc = hud_activity_textbox_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.03;
			x = safeZoneX + (safeZoneW * 0.055);
			y = safeZoneY + (safeZoneH * 0.011);
			w = 0.18 * safezoneW;
			h = 0.05 * safezoneH;
			colorText[] = {1,1,1,1};
			lineSpacing = 2;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 1;
			class Attributes {
				align = "left";
				valign = "middle";
			};
		};
	};
};
