/// @description a template object for testing rotating UI text

str = "this is a test string!!"
mom = noone;

max_radius = 45;
start_radius = 0;
radius = start_radius;
rad_growth = 0;

char_spacing = 15;

spd = 1;

starting_rotation = 270;

array = [];

str_len = string_length(str);

for(var i=1; i<str_len; i++) {
	array[i]=starting_rotation-char_spacing*i;
}

//alarm[0] = spd;