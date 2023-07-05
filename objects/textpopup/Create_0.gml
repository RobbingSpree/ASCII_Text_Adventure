//dimentions in characters from monospace font
wid = 44;
hei = 8;

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
for (var i=0; i<wid-2; i++) {
	box_h += h_out_char;
}
for (var i=0; i<hei-2; i++) {
	box_v += v_out_char;
	box_v += "\n";
}
box_h += corner_char;
box_v += corner_char;
image_xscale = string_width(box_h)/sprite_width;
image_yscale = string_height(box_v)/sprite_height;

str = "This is another test string for when we need to test a textbox and it's basic functions"
str = add_linebreaks(str,wid-4,hei-4);

draw_set_font(-1);

close_button = instance_create_layer(x+unitx*(wid-3),y,"Instances_higher",close_parent);
close_button.parent = self;
close_button.image_index = image_index;