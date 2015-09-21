///scr_ParticlesWoodInit()

var particle = part_type_create();

//kolory
var color1 = make_colour_rgb(100,50,0);
var color2 = make_colour_rgb(128,64,0);

part_type_shape(particle,pt_shape_square);
part_type_size(particle,0.03,0.05,0,0);
part_type_color2(particle,color1,color2);
part_type_speed(particle,2,3,-0.1,0);
part_type_direction(particle,20,160,5,5);
part_type_gravity(particle,0.3,270);
part_type_life(particle,5,15);

return particle;
