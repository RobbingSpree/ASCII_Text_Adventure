//draw_text(x+50,y,mouse_x);
//draw_text(x+50,y+20,mouse_y);

draw_self();
if mouse_x == clamp(mouse_x, x, x + sprite_width) && mouse_y == clamp(mouse_y, y, y + sprite_height) {
	draw_set_color(c_red);
}
draw_text(x+20,y,str);
draw_set_color(c_white);
