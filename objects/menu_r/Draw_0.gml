if x<room_width {
	//draw background
	draw_set_color(c_black);
	draw_rectangle(x,0,x+room_width,room_height,false);
	draw_set_color(c_white);
	
	draw_set_font(smaller_font);
	
	function draw_menu_titletext(array) {
		draw_text(x+array[1],y+array[2],array[0]);
	}
	
	function draw_outfit_text(array) {
		draw_text(x+array[1],y+array[2],array[0]+"  Garment Name");
	}
	
	function draw_stat_text(array) {
		var char_width = " ";
		char_width = string_width(char_width);
		var str_minus = string_length(array[0])*char_width;
		var str_combined = array[0] + " |---------------|"
		draw_text(x+array[1]-str_minus,y+array[2],str_combined);
	}

	//page heading
	draw_menu_titletext(title);
	
	//Outfit
	draw_menu_titletext(outfit)
	//underware layer
	draw_menu_titletext(underwear_heading);
	draw_outfit_text(underwear_body);
	draw_outfit_text(underwear_legs); 
	//onskin layer
	draw_menu_titletext(onskin_heading); 
	draw_outfit_text(onskin_body);
	draw_outfit_text(onskin_legs);
	//outerware layer
	draw_menu_titletext(outerwear_heading);
	draw_outfit_text(outerwear_body);
	//Accessories cat
	draw_menu_titletext(accessory_heading);
	draw_outfit_text(accessory_hair);
	draw_outfit_text(accessory_shoes);
	draw_outfit_text(accessory_jewlery);
	
	//stats
	draw_menu_titletext(character_stats);
	//social stats
	draw_menu_titletext(social_stats);
	draw_stat_text(gender_pres);
	draw_stat_text(confidence);
	draw_stat_text(composed);
	draw_stat_text(sociability);
	draw_stat_text(deflection);
	//physical stats
	draw_menu_titletext(physical_stats);
	draw_stat_text(endurance);
	draw_stat_text(guile);
	draw_stat_text(dexterity);
	draw_stat_text(passing);
}
if animate != 0 {
	var slide_str = "";
	repeat (15) {
		slide_str += edge;
		slide_str += "\n";
	}
	
	draw_text(x,0,slide_str);
}

