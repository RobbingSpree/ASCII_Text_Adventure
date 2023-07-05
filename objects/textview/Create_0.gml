//dimentions in characters from monospace font
wid = 44;
hei = 10;

str = "This is a [blue]debug string[] for (debug,box)when() /wnothing is loaded into memory/? or a scene ends early or starts late";

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

//get box background sizes
image_xscale = string_width(box_h)/sprite_width;
image_yscale = string_width(box_h)/sprite_height;
draw_set_font(-1);

//links from this line of dialog to other textboxes
links = [];
link_count = 0;

//get linebreak points
str_len = string_length(str);
lb = find_linebreaks(str,wid-4,hei-4,str_len); 


writing = true; //flag for if we're writing text to the textbox
delay = 4; //frame to delay advancing text by between each new item drawn onscreen 
pause = 0 //used to delay advancing text when you hit punctuation
char_at = 1; //which character we're at if writing character by character
word_at = 0; //which word we're at if writing word by word
skip = false; //toggle for if we skip the writing
line = 0; //which line in a scene we're displaying
advance_by = "characters"; //toggle for if we're displaying by words or characters
