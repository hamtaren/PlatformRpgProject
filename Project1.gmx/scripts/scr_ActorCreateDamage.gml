///scr_ActorCreateDamage(xOffset,yOffset,DamageObject)

//przesuniecie tworzonego dmgObj
var xOffset = argument0 * image_xscale;
var yOffset = argument1;
//Rodzaj tworzonego dmg reprezentowane przez obiekt, np obj_DamageSlash
var dmgObj = argument2;

//tworzenie, przesuwanie i obracanie
var refDmg = instance_create(x + xOffset,y + yOffset, dmgObj);
refDmg.image_xscale = image_xscale;

//Nadanie obrazen od obiektu dmgObject, ktory przechowuje takie dla kazdego Actora
refDmg.dmg = dmgObject;

//Bonusowe obrazenia od szybkosci
refDmg.speedBonus = 1 + (abs(hspd)*0.05 + abs(vspd)*0.01);

