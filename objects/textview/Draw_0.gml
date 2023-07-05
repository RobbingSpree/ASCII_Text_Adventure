//draw textbox background
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
//placeholder function, will want to replace with a fancier one that can change color of words and type out haracter by character
//draw_text(x+20,y+20,str);
draw_text_markup(x+20,y+20,str,char_at,self);

for (var i=0; i<link_count; i++) {
	with (links[i]) {
		draw_self();
	}
}

//reset draw settings
draw_set_color(c_white);
