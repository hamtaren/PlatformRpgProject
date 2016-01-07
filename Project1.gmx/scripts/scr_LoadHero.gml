///scr_LoadHero()

var h = obj_Hero;

h.level = ini_read_real("Hero","level", h.level);
h.epMax = ini_read_real("Hero","epMax", h.epMax);
h.ep = ini_read_real("Hero","ep", h.ep);
h.sp = ini_read_real("Hero","sp", h.sp);

h.strength = ini_read_real("Hero","strength", h.strength);
h.dextarity = ini_read_real("Hero","dextarity", h.dextarity);
h.endurance = ini_read_real("Hero","endurance", h.endurance);
h.energy = ini_read_real("Hero","energy", h.energy);
h.vitality = ini_read_real("Hero","vitality", h.vitality);

with(h)
scr_HeroRefreshStatistics();

h.hp = h.hpMax;
h.stamina = h.staminaMax;
