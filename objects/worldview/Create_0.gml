//dimentions in characters from monospace font
width = 44;
height = 20;

h_out_char = "-";
v_out_char = "|";
corner_char = "*";

font = default_text;
draw_set_font(font);

unitx = "a";
unitx = string_width(unitx);
unity = "a";
unity = string_height(unity)

box_h = corner_char;
box_v = corner_char + "\n";
for (var i=0; i<width-2; i++) {
	box_h += h_out_char;
}
for (var i=0; i<height-2; i++) {
	box_v += v_out_char;
	box_v += "\n";
}
box_h += corner_char;
box_v += corner_char;

image_xscale = string_width(box_h)/sprite_width;
image_yscale = string_width(box_v)/sprite_height;

draw_set_font(-1);

