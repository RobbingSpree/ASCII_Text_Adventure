str = @" ___
|[_]|
|+ ;|
`---'"

//dimentions in characters from monospace font
wid = 4;
hei = 4;

h_out_char = "+";
v_out_char = "+";
corner_char = " ";

font = smaller_font;
draw_set_font(font);

unitx = "a";
unity = string_height(unitx);
unitx = string_width(unitx);

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

draw_set_font(-1);

mouseover = false;
ui_label = instance_create_layer(x+(wid/2*unitx),y+(hei/2*unity),"Instances",ui_circle_text);
ui_label.str = "Map!  Map!  Map!  Map! "
ui_label.mom = self;