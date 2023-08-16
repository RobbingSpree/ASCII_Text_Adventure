if animate != 0 {
	//slide in
	x+=slide_spd*animate;
	
	if animate == 1
	if ((x+1) >= 1) {
		animate = 0;
		alarm[0] = 60; //debug turns animate to -1
	}
	
	if animate == -1
	if (x <= -room_width) {
		animate = 0;
		game_manager.menu_open = menus.none;
	}
}