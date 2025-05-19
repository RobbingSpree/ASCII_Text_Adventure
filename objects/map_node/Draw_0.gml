
draw_self();
draw_set_color(c_white)
draw_text(x,y,"o");
for(var i=0; i<draw_length; i++) {
	var a = string_char_at(label,i);
	draw_text(x+char_width*i,y+20,a);
}

draw_text(50,10,draw_length);