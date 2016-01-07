///scr_HeroRefreshStatistics()
//Aktualizowanie statystyk na podstawie posiadanych broni, dobytego doswiadczenia itp

if (hp<=0)
{
    dead = true;
}

//Zdobywanie nastepnego poziomu
if (ep >= epMax)
{
    if (level<50) 
    {
        sp+=5;
        level++;
        ep -=epMax;
        epMax *=1.10;
        epMax=round(epMax);
        sound_play(s_LevelUp);
        scr_ParticlesBlingsCreate(15);
    }
    else    
        ep = epMax;    
}

////AKTUALIZOWANIE OBRAZEN////
    var wpnPierce = 0, wpnSlash = 0, wpnBlunt = 0, wpnFire = 0, wpnCold = 0, wpnElectro = 0, wpnDmgTrue = 0;
    var wpnAttackSpeed = 1, wpnWeight = 0;
    
    var _pierce = wpnPierce, _slash = wpnSlash, _blunt = wpnBlunt, _fire = wpnFire, _cold = wpnCold, _electro = wpnElectro, _dmgTrue = wpnDmgTrue;
    
    var wpn;
    
    //BRON DO WALKI WRECZ CZY DYSTANSOWA
    if (objEq.weaponType == WPN_MELEE)
        wpn = objEq.melee[objEq.mSel];
    else
        wpn = objEq.distance[objEq.dSel];
    
    if (instance_exists(wpn))
    {
        
        //obrazenia
        wpnPierce = wpn.pierce;
        //(tylko melee)
        if (objEq.weaponType == WPN_MELEE)
            wpnSlash = wpn.slash;
        wpnBlunt = wpn.blunt;
        
        wpnFire = wpn.fire;
        wpnCold = wpn.cold;
        wpnElectro = wpn.electro;  
        
        wpnDmgTrue = wpn.dmgTrue;
        //ciezar broni (tylko dla melee)
        if (objEq.weaponType == WPN_MELEE)
          wpnWeight = wpn.weight;
        //szybkosc
        wpnAttackSpeed = wpn.attackSpeed;
    }
    
    if (wpnPierce>0)
        _pierce = (strength div 3) + wpnPierce;
    if (wpnSlash>0)
        _slash = (strength div 4) + wpnSlash;
    if (wpnBlunt>0)
        _blunt = (strength div 3) + wpnBlunt;
    
    if (wpnFire>0)
        _fire = (vitality div 5) + wpnFire;
    if (wpnCold>0)
        _cold = (energy div 5) + wpnCold;
    if (wpnElectro>0)
        _electro = (endurance div 5) + wpnElectro;
    
    //stamina -= 1 + wpn.weight (tylko dla melee
    if (objEq.weaponType == WPN_MELEE)
        stamAttack = 1 + wpnWeight;    
    
    //szybkosc ataku    
    var aSpd = ((dextarity div 2) * 0.08  + 0.5)*wpnAttackSpeed;     //bonus ze zrecznosci (przy maxie (50) daje 2.5 ataku/sek)
    attackSpeed = clamp(aSpd, 0.25, 3);             //najwolniej mozemy atakowac 1raz na 4sek, a najszybciej 3razy na 1sek    
        
    //OBLICZANIE OBRAZEN NA SEKUNDE (wykorzystywana w Karcie postaci - ekwip)
    scr_DPSCalc(_pierce,_slash,_blunt,_fire,_cold,_electro,wpnDmgTrue);
    
    //ODSWIEZENIE WSZYSTKICH WARTOSCI
    scr_DRSet(dmgObject,_pierce,_slash,_blunt,_fire,_cold,_electro,wpnDmgTrue);
    
    
////AKTUALIZOWANIE ODPORNOSCI ORAZ STATYSTYK////
    //Odpornosci
    var armPierce = 0, armSlash = 0, armBlunt = 0, armFire = 0, armCold = 0, armElectro = 0;
    //Statystyki
    var armHpMax = 0, armStaminaMax = 0, armHpReg = 0, armStaminaReg = 0, armWeight = 0;
    if (instance_exists(objEq.armor[objEq.aSel]))
    {
        var arm = objEq.armor[objEq.aSel];
        //odpornosci
        armPierce = arm.pierce;
        armSlash = arm.slash;
        armBlunt = arm.blunt;
        armFire = arm.fire;
        armCold = arm.cold;
        armElectro = arm.electro;  
        //statystyki
        armHpMax = arm.hpMaxBonus;
        armStaminaMax = arm.staminaMaxBonus;
        armHpReg = arm.hpRegBonus;
        armStaminaReg = arm.staminaRegBonus;
        //ciezar zbroi
        armWeight = arm.weight;
    }
    //zwiekszanie zapotrzebowania na energie w zaleznosci od ciezaru zbroi
    stamJump = 5 + armWeight;
    //zmiana maksymalnych wartosci zycia i energii
    hpMax = 20 + (vitality)*5 + armHpMax;
    staminaMax = 50 + (energy div 2)*2 + armStaminaMax;
    //zmiana szybkosci regeneracji zycia i energii
    hpReg = 0.005 + (endurance div 3)*0.002 + armHpReg;
    staminaReg = 0.05 + (endurance div 2)*0.0075 + armStaminaReg;
    
    //CLAMPOWANIE statystyk (zeby nie byly wieksze niz maksymalne i mniejsze niz minimalne
    hpMax = max(5,hpMax);
    hp = clamp(hp,0,hpMax);
    staminaMax = max(15,staminaMax);
    stamina = clamp(stamina,0,staminaMax);        
    
    //finalne wartosci odpornosci (1 to wejsciowe 0%)
    var _pierce = 1, _slash = 1, _blunt = 1, _fire = 1, _cold = 1, _electro = 1;        
    
    //odpornosci fizyczne
    _pierce -= (armPierce +  (endurance div 5)*0.02);
    _slash -= (armSlash +  (endurance div 5)*0.02);
    _blunt -= (armBlunt +  (endurance div 5)*0.02);
    //odpornosci elemental
    _fire -= (armFire + (energy div 5 + vitality div 5)*0.01);
    _cold -= (armCold + (energy div 5 + vitality div 5)*0.01);
    _electro -= (armElectro + (energy div 5 + vitality div 5)*0.01);
    
    //OBLICZANIE ODPORNOSCI ZBIOROWEJ fizycznej/elemental (wykorzystywana w Karcie postaci - ekwip)
    scr_RESCalc(_pierce,_slash,_blunt,_fire,_cold,_electro);
    
    //ODSWIEZENIE WSZYSTKICH WARTOSCI
    scr_DRSet(resObject,_pierce,_slash,_blunt,_fire,_cold,_electro, 1);
    
