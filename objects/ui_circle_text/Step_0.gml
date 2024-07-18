/// @description check parent status

if mom.mouseover 
	rad_growth = 1
else 
	rad_growth = -1
	
radius += rad_growth;

if radius <0 {
	radius = 0
}

if radius > max_radius {
	radius = max_radius;
}


//angle wraparound
for(var i=0; i<str_len; i++){
	array[i] ++;
	if array[i]> 360
		array[i] -= 360;
}
