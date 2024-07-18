/// @description actual update

for(var i=0; i<str_len; i++){
	array[i] ++;
	if array[i]> 360
		array[i] -= 360;
}

if radius <= max_radius {
	radius += rad_growth;
	if radius > max_radius {
		radius = max_radius;
		rad_growth = 0;
	}
}

alarm[0] = spd;