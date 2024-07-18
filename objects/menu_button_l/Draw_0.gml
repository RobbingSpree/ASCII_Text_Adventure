//draw_self();
draw_set_color(c_yellow);
if  game_manager.menu_open != menus.none
	draw_set_color(c_red);
draw_set_font(smaller_font);
draw_text(x,y,str);
draw_set_color(c_white);

if mouseover{
	draw_circle(mouse_x,mouse_y,3,false);
}