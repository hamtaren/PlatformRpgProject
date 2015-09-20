///scr_ParticlesWoodInit()

var partWood = part_type_create();

//kolory
var brown1 = make_colour_rgb(100,50,0);
var brown2 = make_colour_rgb(128,64,0);

part_type_shape(partWood,pt_shape_square);
part_type_size(partWood,0.03,0.05,0,0);
part_type_color2(partWood,brown1,brown2);
part_type_speed(partWood,2,3,-0.1,0);
part_type_direction(partWood,20,160,5,5);
part_type_gravity(partWood,0.3,270);
part_type_life(partWood,5,15);

return partWood;
