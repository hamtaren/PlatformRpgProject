///scr_ParticlesWoodCreate(number)
var number = argument0;
repeat(10)
{
part_particles_create(
                        ParticleSystem,
                        x+random_range(-5,5),
                        y+random_range(-8,-40),
                        scr_ParticlesWoodInit(),
                        number
                     );
}
