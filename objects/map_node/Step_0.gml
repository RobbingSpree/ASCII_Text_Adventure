if clamp(draw_length, 0+1, string_length(label)-1) {
	draw_length += growth;
} else {
	growth = 0;
}

x = parent.x + x_off;
y = parent.y + y_off;