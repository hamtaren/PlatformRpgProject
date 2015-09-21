///scr_ActorCreateDamage(xOffset,yOffset,DamageObject)

//przesuniecie tworzonego dmgObj
var xOffset = argument0 * image_xscale;
var yOffset = argument1;
//Rodzaj tworzonego dmg, np obj_DamageSlash
var dmgObj = argument2;

var refDmg = instance_create(x + xOffset,y + yOffset, dmgObj);
refDmg.image_xscale = image_xscale;

if (instance_exists(refDmg))
{
    //TODO: zrobic pobieranie ze statow obiektu
    var dmgPierce = 0, dmgSlash = 0, dmgBlunt = 0, dmgFire = 0, dmgCold = 0, dmgElectro = 0, dmgPoison = 0, dmgHoly = 0, dmgDeath = 0, dmgTrue = 0;
    
    //Bonusowe obrazenia od szybkosci
    var speedBonus = (abs(hspd) / 2);
    
    //Nadawanie wartosci
    refDmg.dmgPierce = dmgPierce + speedBonus;
    refDmg.dmgSlash = dmgSlash + speedBonus;
    refDmg.dmgBlunt = dmgBlunt + speedBonus;
                
    refDmg.dmgFire = dmgFire;
    refDmg.dmgCold = dmgCold;
    refDmg.dmgElectro = dmgElectro;
    refDmg.dmgPoison = dmgPoison;
        
    refDmg.dmgHoly = dmgHoly;
    refDmg.dmgDeath = dmgDeath;
        
    refDmg.dmgTrue = dmgTrue;
}
