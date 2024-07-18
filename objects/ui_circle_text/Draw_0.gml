/// @description
var temp = draw_get_halign();
draw_set_halign(fa_left)
var c = draw_get_color();

if radius >= start_radius +5 && mom != noone
	for(var i=1; i<str_len; i++) {
		var ang = array[i];
		var xx = lengthdir_x(radius,ang);
		var yy = lengthdir_y(radius,ang);
		//draw_text_transformed(x+(sin(ang)*radius),y+(cos(ang)*radius),string_char_at(str,i),1,1,ang);
		//draw_text_transformed(x+xx,y+yy,string_char_at(str,i),1,1,ang+270);
		draw_text_transformed_color(x+xx,y+yy,string_char_at(str,i),1,1,ang+270,c,c,c,c,radius/max_radius)
		//draw_text(x+100,y+20*i,ang);
	}

draw_set_halign(temp);