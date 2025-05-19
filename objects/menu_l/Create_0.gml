edge = @"\
 |
/
|
";

animate = 0; //direction of menu slide, positive means slide in, negetive means slide out
slide_spd = 10; //speed menu moves onscreen
x=0-room_width;

close = instance_create_layer(x,y,"Instances_higher_still",close_parent_menu);
close.parent = self;

//menu tabs
selected = "map";
map_tab = instance_create_layer(x,y,"Instances_higher_still",menu_tab);
map_tab.tab_position=1;
map_tab.parent = self;
bag_tab = instance_create_layer(x,y,"Instances_higher_still",menu_tab);
bag_tab.tab_position=2;
bag_tab.parent = self;

change_to = 1;

//map points
debug = instance_create_layer(x-300,y-300,"Instances_higher_still",map_node);
debug.parent = self;
debug.x_off = 300;
debug.y_off = 300;