///scr_ActorTakeDamage(refDmg)

var refDmg = argument0;

if (instance_exists(refDmg))
{
    //TODO: pozniej przerobic zeby pobieral te wartosci z jakiegos obiektu specjalnego
    //neutral = 1, resistant <1,  unvunereable = 0, absorbtion <0, vunereable >1
    var resPierce = 1, resSlash = 1, resBlunt = 1, resFire = 1, resCold = 1, resElectro = 1, resPoison = 1, resHoly = 1, resDeath = 1, resTrue = 1;
    var dmg = 0;
    
    dmg += refDmg.dmgPierce * resPierce;
    dmg += refDmg.dmgSlash * resSlash;
    dmg += refDmg.dmgBlunt * resBlunt;
            
    dmg += refDmg.dmgFire * resFire;
    dmg += refDmg.dmgCold * resCold;
    dmg += refDmg.dmgElectro * resElectro;
    dmg += refDmg.dmgPoison * resPoison;
    
    dmg += refDmg.dmgHoly * resHoly;
    dmg += refDmg.dmgDeath * resDeath;
    
    dmg += refDmg.dmgTrue;
    
    //Tworzenie obiektu z wartoscia otrzymanych obrazen
    scr_ActorDamageFigureCreate(dmg);
    
    return dmg;                   
}
else
{
    debug_log("Nie ma obiektu obj_Damage, nie otrzymano obrazen",DEBUG_ERROR);
    return 0;    
}
