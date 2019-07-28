/*
	Author: Maverick Applications
	Tuning shop for Life
*/

class Maverick_Tuning
{

	// Map configs
	class Altis
	{
		class Camera
		{
			pos[] = {23675.1,17200.1,2.00144};
			target[] = {23671,17199.4,2.40144};
		};
		class Vehicle
		{
			pos[] = {23669.4,17200.8,1.15015};
			dir = 124.622;
		};
		class Building
		{
			type = "Land_i_Shed_Ind_F";
			pos[] = {23664.2,17196.9,1};
			dir = 0;
		};
	};

	class Tanoa
	{
		class Camera
		{
			pos[] = {1248.85,7316.04,1.78436};
			target[] = {1245.08,7315.57,2.24174};
		};
		class Vehicle
		{
			pos[] = {1243,7317.14,0.774192};
			dir = 127.67;
		};
		class Building
		{
			type = "Land_i_Shed_Ind_F";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};
	
	class Malden
	{
		class Camera
		{
			pos[] = {9376.16,3846.67,1.52487};
			target[] = {9378.32,3841.72,1.82487};
		};
		class Vehicle
		{
			pos[] = {9376.87,3840.8,0.1};
			dir = 17.9422;
		};
		class Building
		{
			type = "";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};
	class kelleysisland
	{
		class Camera
		{
			pos[] = {1829.52,827.09,12.5817};
			target[] = {1823.69,836.142,0.04143909};
		};
		class Vehicle
		{
			pos[] = {1823.69,836.142,0.04143909};
			dir = 180;
		};
		class Building
		{
			type = "";
			pos[] = {1823.61,833.041,0.00143909,0.00143909};
			dir = 0;
		};
	};

	class Vehicles
	{
		class Offroad_01_base_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class RawModifications
			{
				pool[] = {"HideDoors","HideBackpacks","HideBumper","HideConstruction","HideServices"};
				class HideDoors
				{
					parts[] = {"HideDoor1","HideDoor2","HideDoor3"};
					displayText = "Hide/Show Doors";
					price = 4000;
				};
				class HideBackpacks
				{
					parts[] = {"HideBackpacks"};
					displayText = "Hide/Show Backpacks";
					price = 4000;
				};
				class HideBumper
				{
					parts[] = {"HideBumper1","HideBumper2"};
					displayText = "Hide/Show Bumpers";
					price = 4000;
				};
				class HideConstruction
				{
					parts[] = {"HideConstruction"};
					displayText = "Hide/Show Construction";
					price = 4000;
				};
				class HideServices
				{
					parts[] = {"HideServices"};
					displayText = "Hide/Show Service Lights";
					price = 20000;
				};
			};
			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Custom RGB Vehicle Color";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Red (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blue (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Green/Blue Ocean Fade";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Red (Glow)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Yellow (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Yellow (Fade)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Yellow (Glow)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class Quadbike_01_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Custom RGB Vehicle Color";
					price = 25000;
					texture = "";
				};
			};
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class SUV_01_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Custom RGB Vehicle Color";
					price = 25000;
					texture = "";
				};
			};
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class Van_01_transport_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Custom RGB Vehicle Color";
					price = 25000;
					texture = "";
				};
			};
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class Offroad_02_unarmed_base_F // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Red"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Red
				{
					displayText = "Red";
					price = 2000;
					texture = "a3\soft_f_exp\offroad_02\data\offroad_02_ext_red_co.paa";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class ivory_evox // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class ivory_isf // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class Panameralu // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class ivory_supra_topsecret // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class AlessioMustang // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
		class RS6_Avantlu_civ // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Chrome"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Custom RGB Vehicle Color";
					price = 5000;
					texture = ""; // Path to the texture to apply
				};
				class Chrome // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "White Chrome";
					price = 10000;
					texture = "#(argb,8,8,3)color(0,0,0,1)"; // Path to the texture to apply
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Custom RGB Vehicle Underglow";
					price = 100000;
				};
			};
		};
	};
};