///scr_ParticlesBlingsInit()

var particle = part_type_create();

//kolory
var color1 = c_yellow;//make_colour_rgb(100,50,0);
var color2 = c_orange;//make_colour_rgb(128,64,0);

part_type_shape(particle,pt_shape_square);
part_type_size(particle,0.02,0.04,-0.001,0);
part_type_color2(particle,color1,color2);
part_type_speed(particle,1,3,-0.1,0);
part_type_direction(particle,0,360,0,0);
part_type_gravity(particle,0,0);
part_type_life(particle,8,13);

return particle;
