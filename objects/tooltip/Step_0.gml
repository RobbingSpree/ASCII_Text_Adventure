/// @description handle animation

if animate {
//if keyboard_check_released(vk_space){
	draw0 = string_insert(str_top,draw0,2);
	if ani_step <= outer_buffer
		draw1 = string_insert(" ",draw1,2);
	else{ 
		var ch = "?"
		if ani_step-outer_buffer <= string_length(str)
			ch = string_char_at(str,ani_step-outer_buffer);
		else 
			ch = " ";
		draw1 = string_insert(ch,draw1,ani_step);
	}
	ani_step++
	if ani_step = string_length(str)+outer_buffer+outer_buffer
		animate = false;
}

