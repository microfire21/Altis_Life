#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

#define __GETC__(var) (call var) //cop uniforms
 
// Standard Cop Uniforms by coplevel. Create new 'if' for every coplevel you want to have a special uniform. (e.G. if(__GETC__(life_coplevel) == 1) then {... )
if (__GETC__(life_coplevel) > 0)  then {
player setObjectTextureGlobal [0, "textures\cop\security_co.paa"]; // this is for all cops whitelisted or public.
};
 
if (__GETC__(life_coplevel) > 1)  then {
player setObjectTextureGlobal [0, "textures\cop\police_man_co.paa"]; // this is for all cops whitelisted or public.
};
 
if (__GETC__(life_coplevel) > 2)  then {
player setObjectTextureGlobal [0, "textures\cop\police_diver_uniform_co.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
};
 
if (__GETC__(life_coplevel) > 3)  then {
player setObjectTextureGlobal [0, "textures\cop\police_pilot_co.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
};
 
if (__GETC__(life_coplevel) > 4)  then {
player setObjectTextureGlobal [0, "textures\cop\swat_shirt.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
};

if (__GETC__(life_coplevel) > 5)  then {
player setObjectTextureGlobal [0, "textures\cop\swat_camo_vegeta_co.paa"]; // this is for all whitelisted cops above the rank of 3 on the database (these numbers can be adjusted as needed)
};

if (__GETC__(life_coplevel) > 6)  then {
player setObjectTextureGlobal [0, "textures\cop\swat_leader_vest.paa"]; // this is for all whitelisted cops above the rank of 4 on the database (these numbers can be adjusted as needed)
};

if (__GETC__(life_coplevel) > 7)  then {
player setObjectTextureGlobal [0, "textures\cop\swat_officer_co.paa"]; // this is for all whitelisted cops above the rank of 5 on the database (these numbers can be adjusted as needed)
};
 
 
// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)
 
if ((uniform player) == "U_B_CombatUniform_mcam_worn")  then {
player setObjectTextureGlobal [0, "textures\cop\security_co.paa"];
};