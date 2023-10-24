edge = @"\
 |
/
|
";

animate = 0; //direction of menu slide, positive means slide in, negetive means slide out
slide_spd = 10; //speed menu moves onscreen
close = instance_create_layer(x,y,"Instances",close_parent_menu);
close.parent = self;

//positions on screen for text sections
// array format [test string, x pos, y pos]; assuming drawing fa_left
//main menu title
title = ["-+-+-Your Stats-+-+-",room_width/3,50];

var head_indent = 24;
var item_indent = 34;
var head_to_item_gap = 30;
var item_to_head_gap = 40;
var item_to_item_gap = 20;
//Outfit
outfit = ["-Outfit Details-",60,110];
//underware layer
underwear_heading = ["Underwear:",head_indent,outfit[2]+40];
underwear_body = ["Body: ",item_indent,underwear_heading[2]+head_to_item_gap];
underwear_legs = ["Legs: ",item_indent,underwear_body[2]+item_to_item_gap];
//onskin layer
onskin_heading = ["On-Skin:",head_indent,underwear_legs[2]+item_to_head_gap];
onskin_body = ["Body: ",item_indent,onskin_heading[2]+head_to_item_gap];
onskin_legs = ["Legs: ",item_indent,onskin_body[2]+item_to_item_gap];
//outerware layer
outerwear_heading = ["Outerwear:",head_indent,onskin_legs[2]+item_to_head_gap];
outerwear_body = ["Body: ",item_indent,outerwear_heading[2]+head_to_item_gap];
//Accessories catagory
accessory_heading = ["Accessories:",head_indent,outerwear_body[2]+item_to_head_gap];
accessory_hair = ["Hair: ",item_indent,accessory_heading[2]+head_to_item_gap];
accessory_shoes = ["Shoes: ",item_indent,accessory_hair[2]+item_to_item_gap];
accessory_jewlery = ["Jewellery: ",item_indent,accessory_shoes[2]+item_to_item_gap];

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
composed =			["Composure",align_x,confidence[2]+item_to_item_gap];
sociability =		["Sociability",align_x,composed[2]+item_to_item_gap];
deflection =		["Deflection",align_x,sociability[2]+item_to_item_gap];
//physicals
physical_stats =	["Physical Stats",520,deflection[2]+last_in_social_gap];
endurance =			["Endurance",align_x,physical_stats[2]+title_to_first_gap];
guile =				["Guile",align_x,endurance[2]+item_to_item_gap];
dexterity =			["Dexterity",align_x,guile[2]+item_to_item_gap];
passing =			["Passing",align_x,dexterity[2]+item_to_item_gap];
