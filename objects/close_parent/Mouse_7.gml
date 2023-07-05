if parent != noone {
	instance_destroy(parent);
	instance_destroy(self);
}