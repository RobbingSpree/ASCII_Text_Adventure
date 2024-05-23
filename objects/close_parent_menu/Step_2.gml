// follows parent object
x=parent.x;
y=parent.y;

//click detection
if (mouse_x>= x && mouse_x <= x+unitx*wid && mouse_y >= y && mouse_y <= y+unity*hei) && device_mouse_check_button(0,mb_left) {
	parent.alarm[0] = 2;
}