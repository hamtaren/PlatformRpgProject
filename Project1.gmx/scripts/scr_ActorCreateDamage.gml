///scr_ActorCreateDamage(xOffset,yOffset,DamageObject)

//przesuniecie tworzonego dmgObj
var xOffset = argument0 * image_xscale;
var yOffset = argument1;
//Rodzaj tworzonego dmg reprezentowane przez obiekt, np obj_DamageSlash
var dmgObj = argument2;

//tworzenie, przesuwanie i obracanie
var refDmg = instance_create(x + xOffset,y + yOffset, dmgObj);
refDmg.image_xscale = image_xscale;

//sprawdzamy czy tworzony obiekt jest uderzeniem czy pociskiem
if (object_get_name((object_get_parent(dmgObj))) == "obj_Projectile")
{ 
    if (id == obj_Hero.id)
    {
        refDmg.speed = 8;
        refDmg.direction =  -90*(image_xscale-1) + (22.5 * shootingDir -45)*image_xscale;
        refDmg.image_index = shootingDir;
    }
    else
    {
        refDmg.speed = 7;
        refDmg.direction = point_direction(x,y-8,obj_Hero.x,obj_Hero.y);
        refDmg.image_index = 2;
        refDmg.image_angle = refDmg.direction;
    }
}



//Nadanie obrazen od obiektu dmgObject, ktory przechowuje takie dla kazdego Actora
refDmg.dmg = dmgObject;

//Bonusowe obrazenia od szybkosci
refDmg.speedBonus = 1 + (abs(hspd)*0.05 + abs(vspd)*0.01);

//Kto jest wlascicielem obrazen
if (id == obj_Hero.id)
    refDmg.owner = OWN_HERO;
else
    refDmg.owner = OWN_ENEMY;
