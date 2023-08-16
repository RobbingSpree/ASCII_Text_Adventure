draw_self();
draw_set_color(c_yellow);
if  game_manager.menu_open != menus.none
	draw_set_color(c_red);
draw_set_font(smaller_font);
draw_text(x,y,str);
draw_set_color(c_white);

if (mouse_x>= x && mouse_x <= x+unitx*wid && mouse_y >= y && mouse_y <= y+unity*hei) {
	draw_circle(mouse_x,mouse_y,3,false);
}