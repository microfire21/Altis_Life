/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Vehicular Manslaughter",6500]};
	case "187": {_type = ["Manslaughter",8500]};
	case "901": {_type = ["Escaping Jail",4500]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Attempted Auto Theft",2000]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211A": {_type = ["Attempted Robbery",1500]};
	case "211": {_type = ["Robbery",1000]};
	case "207": {_type = ["Kidnapping",3500]};
	case "207A": {_type = ["Attempted Kidnapping",2000]};
	case "487": {_type = ["Grand Theft",1500]};
	case "488": {_type = ["Petty Theft",700]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};
	default {_type = [];};
	
	//Translated by Wookie =p
	case  "1": {_type = ["driving without a license",1500]}; 
    case  "2": {_type = ["Attempted theft vehicle",3500]}; 
    case  "3": {_type = ["theft of civilian vehicle",5000]}; 
    case  "4": {_type = ["driving without lights",350]}; 
    case  "5": {_type = ["Excessive speed",3500]}; 
    case  "6": {_type = ["Dangerous driving",2500]}; 
    case  "7": {_type = ["Attempted theft police vehicle/s",7500]}; 
    case  "8": {_type = ["theft of police vehicles ",20000]}; 
    case  "9": {_type = ["landing in a no-fly zone",2500]}; 
    case  "10": {_type = ["driving illegal vehicles",10000]}; 
    case  "11": {_type = ["causing the accident / hit and run after an accident",5000]}; 
    case  "12": {_type = ["driver fleeing from the police",7500]}; 
    case  "13": {_type = ["scamming of another player ",25000]}; 
    case  "14": {_type = ["Illegal roadblocks",5000]}; 
    case  "15": {_type = ["resistance against the state",15000]}; 
    case  "16": {_type = ["Do not follow Police",5000]}; 
    case  "17": {_type = ["insulting",2500]}; 
    case  "18": {_type = ["harassment of a police officer",8000]}; 
    case  "19": {_type = ["entering the police zone",5000]}; 
    case  "20": {_type = ["killing of a police officer",25000]}; 
    case  "21": {_type = ["attack on police / officials / property",15000]}; 
    case  "22": {_type = ["destruction of police property",15000]}; 
    case  "23": {_type = ["drug offensives",12000]}; 
    case  "24": {_type = ["possession of arms without a license",5000]}; 
    case  "25": {_type = ["unlicensed sells inside or by city limits",2500]}; 
    case  "26": {_type = ["possession of a prohibited weapon",10000]}; 
    case  "27": {_type = ["use of firearms within the city",10000]}; 
    case  "28": {_type = ["hostage-taking",30000]}; 
    case  "29": {_type = ["attack by rebels",35000]}; 
    case  "30": {_type = ["attack / siege of capitals",250000]}; 
    case  "31": {_type = ["Flying in a no-fly zone",1500]} ; 
    case  "32": {_type = ["Flying / Hovering below 150m",2000]}; 
    case  "33": {_type = ["breaking out of the prison",25000]}; 
    case  "34": {_type = ["fly without pilot license",1200]}; 
    case  "35": {_type = ["Permanently annoying horns",1500]}; 
    case  "36": {_type = ["trade in exotic goods",25000]}; 
    default  {_type =  [];}; 
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};