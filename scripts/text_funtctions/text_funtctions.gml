
function add_linebreaks(str,width,height){
	var len = string_length(str);
	var last_space = 0;
	var line = 1;
	var replaces = 0;
	var skip_chars = 0;
	for (var i=0; i<len; i++) {
		var ch = string_char_at(str,i+replaces);
		if ch == "[" || ch == "/" || ch == "("
			if ch == "/"
				skip_chars+=2
			if ch == "[" {
				var jump = 0;
				while string_char_at(str,i+jump) != "]" {
					jump++
				}
				skip_chars+=jump;	
			}
			if ch == "(" {
				var jump = 0;
				while string_char_at(str,i+jump) != ")" {
					jump++
				}
				skip_chars+=jump;
			}
				
		if ch == " "
			last_space = i;
		if (i-skip_chars)/width > line {
			line++
			str = string_delete(str,last_space,1);
			str = string_insert("\n",str,last_space);
			replaces++
		}	
	}
	//put in a bit later where it throws a note to the compiler if a line is too tall for the box it's in or resizes the box if allowed
	return str;
}

function find_linebreaks(str,width,height,len){
	var last_space = 0;
	var line = 1;
	var replaces = 0;
	var skip_chars = 0;
	var lb = [];
	for (var i=0; i<len; i++) {
		var ch = string_char_at(str,i+replaces);
		if ch == "[" || ch == "/" || ch == "("
			if ch == "/"
				skip_chars+=2
			if ch == "[" {
				var jump = 0;
				while string_char_at(str,i+jump) != "]" {
					jump++
				}
				skip_chars+=jump;	
			}
			if ch == "(" {
				var jump = 0;
				while string_char_at(str,i+jump) != ")" {
					jump++
				}
				skip_chars+=jump;
			}
				
		if ch == " "
			last_space = i;
		if (i-skip_chars)/width > line {
			lb[line-1]=i;
			line++
			
		}	
	}
	//put in a bit later where it throws a note to the compiler if a line is too tall for the box it's in or resizes the box if allowed
	return lb;
}

function draw_text_markup(xx,yy,str,index,object) {
	var text_x = 0; //current horrozontal point
	var text_y = 0; //how many line returns we've added
	var disx = object.unitx;
	var disy = object.unity;
	
	//unitx,unity,width-4
	
	for(var i=1; i<=index; i++) {
		var nxt_ch = string_char_at(str,i);
		//check for markup
		if nxt_ch == "[" || nxt_ch == "/" || nxt_ch == "(" { 
			if nxt_ch == "/" //skip ahead by 2
				i++
			if nxt_ch == "[" { //color change command
				if string_char_at(str,i+1) == "]" {//if is end markup sign
					i++;
					draw_set_color(c_white);
				} else {
					var jump = 0;
					var col = "";
					while string_char_at(str,i+jump) != "]" {
						col += string_char_at(str,i+jump);
						jump++
					}
					i+=jump;
					col = string_delete(col,1,1);
					text_color_change(col);
				}
			}
			if nxt_ch == "(" { //skip ahead until close bracket
				if string_char_at(str,i+1) == ")" //if is end markup sign
					i++;
				else {
					var jump = 0;
					var box = "";
					while string_char_at(str,i+jump) != ")" {
						box += string_char_at(str,i+jump);
						jump++
					}
					i+=jump;
					//need to count how wide the hitbox is
					var len = 0
					while string_char_at(str,i+len) != "(" {
						len++
					}
					hitbox_maker(box,xx+text_x*disx,yy+text_y*disy,len,object)
				}
			}		
		} else {
			if nxt_ch == " " {
				if text_y< array_length(object.lb) && i > object.lb[text_y] {
					text_x = -1;
					text_y++
				}
			}
			draw_text(xx+text_x*disx,yy+text_y*disy,nxt_ch);
			text_x++
		}
	}
}


function text_color_change(flag) {
	switch(flag) {
		case "blue": draw_set_color(c_blue); break;
		case "red": draw_set_color(c_red); break;
		case "pink": draw_set_color(c_fuchsia); break;
		case "green": draw_set_color(c_lime); break;
		default: draw_set_color(c_white);
	}
}

function hitbox_maker(title,xx,yy,wid,parent) {
	title = string_delete(title,1,1); //takkes off the [ at the start of the string
	var bx = instance_create_layer(xx-10,yy-3,parent.layer,text_bounding_box);
	bx.parent = parent;
	bx.wid = wid*parent.unitx;
	bx.hei = parent.unity+6
	bx.image_xscale = bx.wid/bx.sprite_width;
	bx.image_yscale = bx.hei/bx.sprite_height;
	parent.links[parent.link_count] = bx
	parent.link_count++
	bx.debug = wid;
}

