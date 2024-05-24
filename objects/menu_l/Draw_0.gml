if x<room_width {
	//draw background
	draw_set_color(c_black);
	draw_rectangle(x,0,x+room_width,room_height,false);
	draw_set_color(c_white);
}
if animate != 0 {
	var slide_str = "";
	repeat (15) {
		slide_str += edge;
		slide_str += "\n";
	}
	
	draw_text(x+room_width,0,slide_str);
}

//draw foreground text
draw_set_halign(fa_center);
if change_to == 0 {
	draw_text(x+room_width/2,y+room_height/2,"this menu is out of sorts");
} else if change_to == 1 {
	draw_text(x+room_width/2,y+room_height/2,"this is the map screen\ntrust me on this");
} else if change_to == 2 {
	draw_text(x+room_width/2,y+room_height/2,"this is the invintory screen\nyou gotta believe me!");
} else if change_to > 2 {
	draw_text(x+room_width/2,y+room_height/2,"this menu is out of range");
}
draw_set_halign(-1);