str = @"---
|X|
---"
 
draw_set_font(default_text);

image_yscale = string_height(str)/sprite_height;
image_xscale = string_width(str)/sprite_width;

//dimentions in characters from monospace font
wid = 3;
hei = 3;
unitx = "a";
unity = string_height(unitx);
unitx = string_width(unitx);

draw_set_font(-1);

parent = noone;


