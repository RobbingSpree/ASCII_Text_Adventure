str = @"---
|X|
---"
 
draw_set_font(default_text);

image_yscale = string_height(str)/sprite_height;
image_xscale = string_width(str)/sprite_width;

draw_set_font(-1);

parent = noone;