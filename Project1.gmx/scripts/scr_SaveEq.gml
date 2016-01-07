///scr_SaveEq()
var h = obj_Hero.objEq;

ini_write_real("Eq","ammo",h.ammo);
ini_write_real("Eq","arrows",h.arrows);

ini_write_real("Eq","brews",h.brews);
ini_write_real("Eq","mixtures",h.mixtures);

scr_SaveEqMelee(0);
scr_SaveEqMelee(1);
scr_SaveEqMelee(2);

scr_SaveEqDist(0);
scr_SaveEqDist(1);

scr_SaveEqArmor(0);
scr_SaveEqArmor(1);
