///scr_ActorTakeDamage(refDmg)
//obrazenia są otrzymywane przy zetknieciu sie z obiektem reprezentujacym atak (np. obj_Slash), albo pociski, albo pulapki
var refDmg = argument0;

if (instance_exists(refDmg))
{
    //TODO: pozniej przerobic zeby pobieral te wartosci z jakiegos obiektu specjalnego
    //absorb <0; niewrazliwosc = 0; odpornosc <1; neutral = 1; wrazliwosc >1
    var resPierce = 1, resSlash = 1, resBlunt = 1, resFire = 1, resCold = 1, resElectro = 1, resTrue = 1;
    
    
    var totalDmg = 0;
    
    totalDmg += refDmg.dmg.pierce * refDmg.speedBonus * resObject.pierce;
    totalDmg += refDmg.dmg.slash * refDmg.speedBonus * resObject.slash;
    totalDmg += refDmg.dmg.blunt * refDmg.speedBonus * resObject.blunt;
            
    totalDmg += refDmg.dmg.fire * resObject.fire;
    totalDmg += refDmg.dmg.cold * resObject.cold;
    totalDmg += refDmg.dmg.electro * resObject.electro;
    
    totalDmg += refDmg.dmg.dmgTrue;
    
    //Tworzenie obiektu wyswietlającego otrzymywane obrazenia
    scr_ActorDamageFigureCreate(totalDmg);
    
    return totalDmg;                   
}
else
{
    debug_log("Nie ma obiektu obj_Damage, nie otrzymano obrazen",DEBUG_ERROR);
    return 0;    
}
