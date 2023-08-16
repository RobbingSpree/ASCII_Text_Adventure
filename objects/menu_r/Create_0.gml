edge = @"\
 |
/
|
";

animate = 0; //direction of menu slide, positive means slide in, negetive means slide out
slide_spd = 10; //speed menu moves onscreen

//positions on screen for text sections
// array format [test string, x pos, y pos]; assuming drawing fa_left
//main menu title
title = ["-+-+-Your Stats-+-+-",room_width/2,50];

var head_indent = 24;
var item_indent = 34;
var head_to_item_gap = 30;
var item_to_head_gap = 40;
var item_to_item_gap = 20;
//Outfit
outfit = ["-Outfit Details-",60,110];
//underware layer
underware_heading = ["Underware:",head_indent,outfit[2]+40];
underware_body = ["Body: ",item_indent,underware_heading[2]+head_to_item_gap];
underware_legs = ["legs: ",item_indent,underware_body[2]+item_to_item_gap];
//onskin layer
onskin_heading = ["On-Skin:",head_indent,underware_legs[2]+item_to_head_gap];
onskin_body = ["Body: ",item_indent,onskin_heading[2]+head_to_item_gap];
onskin_legs = ["legs: ",item_indent,onskin_body[2]+item_to_item_gap];
//outerware layer
outerware_heading = ["Outerware:",head_indent,onskin_legs[2]+item_to_head_gap];
outerware_body = ["Body: ",item_indent,outerware_heading[2]+head_to_item_gap];
//Accessories catagory
accessory_heading = ["Accessories:",head_indent,outerware_body[2]+item_to_head_gap];
accessory_hair = ["Hair: ",item_indent,accessory_heading[2]+head_to_item_gap];
accessory_shoes = ["Shoes: ",item_indent,accessory_hair[2]+item_to_item_gap];
accessory_jewlery = ["Jewlery: ",item_indent,accessory_shoes[2]+item_to_item_gap];

var align_x = 500;
var title_to_first_gap = 30;
var item_to_item_gap = 30;
var last_in_social_gap = 40;
//stats and bars
character_stats = ["-Character Stats-",500,110];
//social stats
social_stats =		["Social Stats",530,150];
gender_pres =		["Gender Presentation",align_x,social_stats[2]+title_to_first_gap];
confidence =		["Confidence",align_x,gender_pres[2]+item_to_item_gap];
lust =				["Lust",align_x,confidence[2]+item_to_item_gap];
socability =		["Socability",align_x,lust[2]+item_to_item_gap];
deflection =		["Deflection",align_x,socability[2]+item_to_item_gap];
//physicals
physical_stats =	["Physical Stats",520,deflection[2]+last_in_social_gap];
endurance =			["Endurance",align_x,physical_stats[2]+title_to_first_gap];
guile =				["Guile",align_x,endurance[2]+item_to_item_gap];
dexterity =			["Dexterity",align_x,guile[2]+item_to_item_gap];
passing =			["Passing",align_x,dexterity[2]+item_to_item_gap];
