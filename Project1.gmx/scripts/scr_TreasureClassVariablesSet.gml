///scr_TreasureClassVariablesSet(level, noDrop,ammo, armor, weapon, dist, gold, mixture, phyElemRatio[-1/2,1/2])

var TC = instance_create(x,y,obj_TreasureClass);
//poziom TC (1-7)
TC.level = argument0;

//sznse na drop
TC.noDropChance = argument1;
TC.ammoChance = argument2;
TC.armorChance = argument3;
TC.weaponChance = argument4;
TC.distChance = argument5;
TC.goldChance = argument6;
TC.mixtureChance = argument7;

//stosunek obrazen fizycznych do elemental
//-1/2 to tylko phy; 0 to po polowie; 1/2 to tylko elem
TC.phyElemRatio = argument8;

//DROPUJ ITEM!
with(TC) scr_TreasureClassDrop();

