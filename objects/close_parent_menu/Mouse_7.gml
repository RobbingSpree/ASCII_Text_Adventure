if parent != noone && mouse_x == clamp(mouse_x, x, x + sprite_width) && mouse_y == clamp(mouse_y, y, y + sprite_height){ // (mouse_x > x && mouse_y > y && mouse_x < x+sprite_width && mouse_y < y+sprite_height){

	parent.alarm[0] = 20;
}