///scr_LoadEq()

var h = obj_Hero.objEq;

h.ammo = ini_read_real("Eq","ammo",h.ammo);
h.arrows = ini_read_real("Eq","arrows",h.arrows);

h.brews = ini_read_real("Eq","brews",h.brews);
h.mixtures = ini_read_real("Eq","mixtures",h.mixtures);

scr_LoadEqMelee(0);
scr_LoadEqMelee(1);
scr_LoadEqMelee(2);

scr_LoadEqDist(0);
scr_LoadEqDist(1);

scr_LoadEqArmor(0);
scr_LoadEqArmor(1);
