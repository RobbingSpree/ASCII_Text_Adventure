str=[];
str[0]=""
str[1] = @"|       |
|  MAP  |
---------"
str[2] = @"|       |
|  BAG  |
---------"
 
draw_set_font(default_text);

image_yscale = string_height(str[1])/sprite_height;
image_xscale = string_width(str[1])/sprite_width;

//dimentions in characters from monospace font
wid = 9;
hei = 3;
unitx = "a";
unity = string_height(unitx);
unitx = string_width(unitx);

draw_set_font(-1);

parent = noone;
tab_position = 0;

tab_width = (wid+2)*unitx
