if mouse_check_button_released(mb_left) && (mouse_x>= x && mouse_x <= x+unitx*wid && mouse_y >= y && mouse_y <= y+unity*hei) {

	if game_manager.menu_open == menus.none {
		game_manager.menu_open = menus.right;
		menu_r.animate = 1;
	}
}