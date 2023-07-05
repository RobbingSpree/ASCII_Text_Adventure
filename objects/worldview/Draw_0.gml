//draw textbox background
draw_self();

draw_set_font(font);
//draw textbox outline

//top line
draw_text(x,y,box_h);
//left edge
draw_text(x,y,box_v);
//bottom line
draw_text(x,y+unity*(height-1),box_h);
//right edge
draw_text(x+unitx*(width-1),y,box_v);

//text in box
draw_text(x+20,y+20,worldview_locations("city"));

//debug