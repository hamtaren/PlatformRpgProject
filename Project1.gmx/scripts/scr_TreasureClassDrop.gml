///scr_TreasureClassDrop()
//wybieranie jaki rodzaj przedmiotu ma zostac wygenerowany

var sum = noDropChance + ammoChance + armorChance + weaponChance + distChance + mixtureChance; //suma prawdopodobienstwa
var result = irandom(sum-1)+1;                                                     //"rzut koscia"
var drop = ITEM_NONE;                                                            //zmienna przechowujaca co wypadnie

var nd = noDropChance;
var am = nd + ammoChance;
var ar = am + armorChance;
var wp = ar + weaponChance;
var d = wp + distChance;
var m = d + mixtureChance;

if (result <= nd)
    drop = ITEM_NONE;
else if (result <= am)
    drop = ITEM_AMMO;
else if (result <= ar)
    drop = ITEM_ARMOR;
else if (result <= wp)
    drop = ITEM_WEAPON;
else if (result <= d)
    drop = ITEM_DIST;
else if (result <= m)
    drop = ITEM_MIXTURE;

scr_TreasureClassGenerateItem(drop);

