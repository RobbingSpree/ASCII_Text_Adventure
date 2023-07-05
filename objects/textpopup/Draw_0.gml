draw_self();

draw_set_font(font);
//draw textbox outline

//top line
draw_text(x,y,box_h);
//left edge
draw_text(x,y,box_v);
//bottom line
draw_text(x,y+unity*(hei-1),box_h);
//right edge
draw_text(x+unitx*(wid-1),y,box_v);

//text in box
draw_text(x+20,y+20,str);

with close_button {
	draw_self();

	draw_set_font(default_text);
	draw_set_color(c_red);
	draw_text(x,y,str);
	draw_set_color(c_white);
	draw_set_font(-1);


}