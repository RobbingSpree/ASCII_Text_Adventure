mouseover = false;
if (mouse_x>= x && mouse_x <= x+unitx*wid && mouse_y >= y && mouse_y <= y+unity*hei) 
	mouseover = true;

if mouse_check_button_released(mb_left) && mouseover {
	if game_manager.menu_open == menus.none {
		game_manager.menu_open = menus.left;
		menu_l.animate = 1;
	}
}