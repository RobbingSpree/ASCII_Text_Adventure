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