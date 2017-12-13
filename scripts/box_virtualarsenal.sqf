/* 
null = [this] execVM "scripts\box_virtualarsenal.sqf";
*/
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
 
//Lists of items to include
_availableHeadgear = [
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_ocp", 
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_ESS_ocp", 
	"rhsusf_ach_helmet_headset_ocp", 
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_mask",
	"H_CrewHelmetHeli_B",
	"H_PilotHelmetFighter_B",
	"506th_rhsusf_ach_helmet_ESS_ocp",
	"506th_rhsusf_ach_helmet_headset_ess_ocp",
	"506th_rhsusf_ach_helmet_headset_ocp",
	"506th_rhsusf_ach_helmet_ocp",
	"506th_rhsusf_ach_helmet_ocp_norotos",
	"506th_rhsusf_patrolcap_abu",
	"rhsusf_hgu56p_visor_mask"
];
 
_availableGoggles = [
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles_Tinted",
	"G_Lowprofile",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_googles_black",
	"rhs_ess_black",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
    "rhsusf_oakley_goggles_ylw"
];
 
_availableUniforms = [
	"rhs_uniform_cu_ocp_101st",
	"U_B_PilotCoveralls", 
	"U_B_HeliPilotCoveralls", 
	"U_I_pilotCoveralls", 
	"LOP_U_UKR_Fatigue_DF15",
	"LOP_U_IRAN_Fatigue_DF15"
];
 
_availableVests = [
	"rhsusf_iotv_ocp",
	"rhsusf_iotv_ocp_Repair",
	"rhsusf_iotv_ocp_Grenadier",
	"rhsusf_iotv_ocp_Medic",
	"rhsusf_iotv_ocp_Rifleman",
	"rhsusf_iotv_ocp_SAW",
	"rhsusf_iotv_ocp_Squadleader",
	"rhsusf_iotv_ocp_Teamleader",
	"rhsusf_spcs_ocp_rifleman",
	"rhsusf_spcs_ocp",
	"BDF_AirForceheli_vest",
	"V_TacVest_oli" 
];
 
_availableBackpacks = [
	"rhsusf_assault_eagleaiii_ocp",
	"B_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"B_Carryall_cbr",
	"B_Carryall_mcamo",
	"B_Kitbag_mcamo",
	"B_Kitbag_cbr",
	"B_Parachute",
	"TFAR_rt1523g_rhs",
	"TFAR_rt1523g_big_rhs",
	"506th_assault_eagleaiii_coy_Medic",
	"rhs_M225_Gun_Bag",
	"rhs_M170_Bipod_Bag",
	"B_AssaultPack_cbr",
	"B_UAV_01_backpack_F"
];
 
_availableItems = [
	"acc_pointer_IR", // Day Visible Laser
	"ACE_Altimeter",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_bloodIV",
	"ACE_CableTie",
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EarPlugs",
	"ACE_EntrenchingTool",
	"ACE_epinephrine",
	"ACE_fieldDressing",
	"ACE_Flashlight_MX991",
	"ACE_HuntIR_monitor",
	"ACE_Kestrel4500",
	"ACE_M26_Clacker",
	"ACE_MapTools",
	"ACE_Morphine",
	"ACE_SpraypaintBlack",
	"ACE_SpraypaintBlue",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_TacticalLadder_Item",
	"ACE_Tripod",
	"ACE_UAVBattery",
	"ACE_wirecutter",
	"B_UavTerminal",
	"ItemAndroid", // ctab, android bft
	"ItemCompass",
	"ItemcTabHCam", // ctab, helmet cam
	"ItemGPS",
	"ItemMap",
	"ItemMicroDAGR", // ctab, microdagr gps
	"ItemcTab", // ctab, commander tablet
	"ItemWatch",
	"MineDetector",
	"rhsusf_ANPVS_14",
	"rhsusf_ANPVS_15",
	"rhsusf_ANPVS_15_ng",
	"rhsusf_ANPVS_14_full",
	"rhsusf_ANPVS_15_full",
	"rhsusf_ANPVS_14_oval",
	"rhsusf_ANPVS_14_full_ng",
	"rhsusf_ANPVS_15_full_ng",
	"rhsusf_ANPVS_14_oval_ng",
	"TIAD_506th_UAV_Item",
	"ToolKit"
];

_availableAccessories = [
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15A",
	"rhsusf_acc_anpeq15_light",
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15_bk_light",
	"rhsusf_acc_anpeq15_wmx",
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG3",
	"rhsusf_acc_ACOG_MDO",
	"rhsusf_acc_ACOG_RMR",
	"rhsusf_acc_wmx",
	"rhsusf_acc_wmx_bk",
	"rhsusf_acc_M952V",
	"rhsusf_acc_compm4",
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_ELCAN",
	"rhsusf_acc_ELCAN_ard",
	"rhsusf_acc_SF3P556",
	"rhsusf_acc_LEUPOLDMK4",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_premier_anpvs27",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_anpas13gv1",
	"rhs_optic_maaws",
	"FHQ_optic_AimM_BLK",
	"FHQ_optic_TWS3050",
	"rhsusf_acc_LEUPOLDMK4_2",
	"RH_ta31rmr", 
	"RH_ta31rmr_2D", 
	"optic_tws",
	"optic_tws_mg",
	"optic_LRPS"
];
 
_availableMagazines = [
	"ACE_HuntIR_M203",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_Tracer_Red",
	"RH_15Rnd_9x19_M9",
	"rhs_mag_30Rnd_556x45_Mk318_Stanag",
	"rhsusf_5Rnd_00Buck",
	"rhsusf_5Rnd_Slug",
	"rhsusf_8Rnd_00Buck",
	"rhsusf_8Rnd_Slug",
	"rhsusf_20Rnd_762x51_m118_special_Mag",
	"rhsusf_100Rnd_762x51", 
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m993",
	"rhsusf_100Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhs_200rnd_556x45_M_SAW",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_M4009",
	"rhs_mag_m576",
	"rhs_mag_M585_white",
	"rhs_mag_M661_green",
	"rhs_mag_M662_red",
	"rhs_mag_M713_red",
	"rhs_mag_M714_white",
	"rhs_mag_M715_green",
	"rhs_mag_M716_yellow",
	"rhs_fgm148_magazine_AT",
	"rhs_mag_maaws_HEAT",
	"ACE_SpareBarrel"
];

_availableGrenades = [ 
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"ATMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSBoundingMine_Range_Mag",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellYellow",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_IR",
	"rhs_mag_mk84",
	"ACE_M84",
	"HandGrenade",
	"Chemlight_green",
	"Chemlight_red", 
	"Chemlight_blue",
	"Chemlight_yellow", 
	"B_IR_Grenade"
];

_availableWeapons = [
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_m320",
	"rhs_weap_m4a1_m203",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_m203",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_carryhandle_pmag",
	"rhs_weap_M320",
	"rhs_weap_m14ebrri",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",
	"rhs_weap_m249_pip",
	"rhs_weap_m249_pip_S_vfg",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_L_vfg",
	"rhs_weap_m240B_CAP",
	"rhs_weap_M590_8RD",
	"rhs_weap_M590_5RD",
	"rhs_weap_fgm148",
	"rhs_weap_m72a7",
	"rhs_weap_maaws",
	"rhs_weap_M136",
	"rhsusf_weap_m9",
	"Binocular",
	"rhs_weap_sr25"
];
 
// Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests + _availableItems + _availableAccessories)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazines + _availableGrenades)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapons)] call BIS_fnc_addVirtualWeaponCargo;