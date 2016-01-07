///scr_SaveHero()
var h = obj_Hero;
ini_write_real("Hero","level", h.level);
ini_write_real("Hero","epMax", h.epMax);
ini_write_real("Hero","ep", h.ep);
ini_write_real("Hero","sp", h.sp);

ini_write_real("Hero","strength", h.strength);
ini_write_real("Hero","dextarity", h.dextarity);
ini_write_real("Hero","endurance", h.endurance);
ini_write_real("Hero","energy", h.energy);
ini_write_real("Hero","vitality", h.vitality);
