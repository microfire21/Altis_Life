#include <macro.h>
/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	redone by wookie
	
Description:
Default cop configuration.
*/
//Strip the player down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
player unassignItem _x;
player removeItem _x;
} foreach (assignedItems player);
 
//Load player with default cop gear.
if(__GETC__(life_coplevel) == 1) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "30Rnd_45ACP_Mag_SMG_01";
player addMagazine "30Rnd_45ACP_Mag_SMG_01";
player addMagazine "30Rnd_45ACP_Mag_SMG_01";
player addMagazine "30Rnd_45ACP_Mag_SMG_01";
player addMagazine "30Rnd_45ACP_Mag_SMG_01";
player addWeapon "hgun_P07_snds_F";
player addWeapon "SMG_01_ACO_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 2) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addWeapon "hgun_P07_snds_F";
player addWeapon "SMG_02_ACO_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 3) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addWeapon "hgun_P07_snds_F";
player addWeapon "arifle_MXC_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 4) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addWeapon "hgun_P07_snds_F";
player addWeapon "arifle_MXM_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 5) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addWeapon "hgun_Pistol_heavy_02_F";
player addWeapon "arifle_MX_SW_Hamr_pointer_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 6) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addWeapon "hgun_Pistol_heavy_02_F";
player addWeapon "arifle_MX_SW_Hamr_pointer_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Binocular";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
if(__GETC__(life_coplevel) == 7) then
{
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addBackpack "B_Carryall_cbr";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "30Rnd_65x39_caseless_mag";
player addWeapon "hgun_Pistol_heavy_02_F";
player addWeapon "arifle_MX_SW_Hamr_pointer_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Rangefinder";
player addItem "NVGoggles";
player assignItem "NVGoggles";
};
 
[] call life_fnc_saveGear;
