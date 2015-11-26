///scr_TreasureClassGenerateItem(itemToDropType)
var type = argument0;

if (type == ITEM_NONE)
{
instance_destroy(); exit;
}

if (type == ITEM_GOLD)
{

    var gold = 1+irandom(2);    
    gold += round(random_range( level*sqrt(level),(random(4)+1) * (level*sqrt(level)) ));
    //TODO: tworzenie obj_Gold
    //var objGold = instance_create(x,y,obj_Gold);
    //objGold.gold = gold;
        show_message("GOLD: " +string(gold));
    instance_destroy(); exit;
}

if (type = ITEM_MIXTURE)
{
    //50% szans ze wypadnie kazda z mikstur
    if (choose(0,1))    
        instance_create(x,y,obj_Brew);
    else
        instance_create(x,y,obj_Mixture);    
    instance_destroy(); exit;
}

if (type = ITEM_AMMO)
{
    var ammoObj;
    //losowanie ilosci amunicji
    var ammoCount = round(1 + irandom(2) + level * sqrt(level));
    
    //losowanie jaki rodzaj amunicji wypadnie
    if (choose(0,1))
    {
        am = instance_create(x,y,obj_Ammo);
        am.ammo+=ammoCount;
    }
    else
    {
        am = instance_create(x,y,obj_Arrows);
        am.arrows+=ammoCount;
    }        
        
    instance_destroy(); exit;
}

if (type = ITEM_WEAPON)
{   
    var _sprIndex = 0;
    
    //Wybieramy rodzaj broni poprzez obrazki
    var _sprite_index = choose(spr_FloorItemsSword,spr_FloorItemsStick,spr_FloorItemsHammer,spr_FloorItemsAxe);
    
    //losowanie klasy broni poprzez podobrazki
    if (level == 1)    
        _sprIndex = choose(0,0,0,0,1,1,1,2,2,3);    
    else if (level == 2)    
        _sprIndex = choose(0,0,1,1,1,2,2,2,2,3,3,3,3,4);    
    else if (level == 3)    
        _sprIndex = choose(0,0,1,1,2,2,3,3,4);    
    else if (level >= 4)        
        _sprIndex = irandom(sprite_get_number(_sprite_index)-2);
    
    
    //Generowanie broni z bazowymi wartosciami
    var wpn = scr_ItemWeaponGenerateBase(_sprite_index,_sprIndex);

    //Na poziomie trzecim generuje zwyklaka
    if (level == 3) 
    {
        instance_destroy(); exit;
    }
    
    //Okreslamy maksymalny dodatek do wartosci
    var phyMax = 5*(level-2) * -(phyElemRatio-0.5);
    var elemMax = 5*(level-2) * (phyElemRatio+0.5);    

    //losujemy wartosc
    var _pierce = irandom(phyMax);
    var _slash = irandom(phyMax);
    var _blunt = irandom(phyMax);
    
    //myk, zeby np wlocznia nie zadawala obuchowych obrazen
    if (wpn.pierce==0) 
        _pierce = 0;
    if (wpn.slash==0) 
        _slash = 0;
    if (wpn.blunt==0) 
        _blunt = 0;
    
    //losujemy wartosc
    var _fire = irandom(elemMax);
    var _cold = irandom(elemMax);
    var _electro = irandom(elemMax);
        
    //Okreslamy zmiane wagi
    var _weight = -level+(3+ sign(-level+3)*irandom(5));
    //Okreslamy zmiane szybkosci
    var _aSpeed = (level-3) * 0.25;
    
    //WYKONCZENIE BRONI ( BRON JUZ GOTOWA I ZACZAROWANA :) )    
    scr_ItemWeaponSet(wpn,wpn.name, max(0,wpn.pierce + _pierce), max(0,wpn.slash + _slash), max(0,wpn.blunt + _blunt), max(0,_fire), max(0,_cold), max(0,_electro), wpn.dmgTrue, max(0,wpn.weight+_weight), wpn.attackSpeed + _aSpeed, _sprite_index, _sprIndex);
    
    instance_destroy(); exit;
}

if (type = ITEM_ARMOR)
{
    
    var _sprIndex = 0;
    
    //losowanie klasy zbroi poprzez podobrazki
    if (level == 1)    
        _sprIndex = choose(0,0,0,0,1,1,1,2,3);    
    else if (level == 2)    
        _sprIndex = choose(0,0,1,1,1,2,2,3,4,5);    
    else if (level == 3)    
        _sprIndex = choose(0,1,1,2,2,3,3,4,4,5,6,7,8,9);    
    else if (level >= 4)        
        _sprIndex = irandom(sprite_get_number(spr_FloorItemsArmor)-3);
        
    //Generowanie zbroi z bazowymi wartosciami
    var arm = scr_ItemArmorGetBase(_sprIndex);

    //Na poziomie trzecim generuje zwyklaka
    if (level == 3) 
    {
        instance_destroy(); 
        exit;
    }
    
    //Zakres wartosci dodatkowych odpornosci
    var range, rangeMin, rangeMax;
    switch(level)
    {
        case  1: rangeMin = -25; rangeMax = 5; break;
        case  2: rangeMin = -25; rangeMax = 5; break;
        case  3: break; //i tak nie moze tu wejsc ale zeby bylo widac ze reszta to wieksze od 4
        case  4: rangeMin = -25; rangeMax = 5; break;        
        default: rangeMin = 0; rangeMax = 5 * (level-1);
    }       
   
    
    //Okreslamy maksymalny dodatek do wartosci
    //var phyMax =  random_range(rangeMin,rangeMax) * 0.01 * -(phyElemRatio-0.5); 
    //var elemMax = random_range(rangeMin,rangeMax) * 0.01 * (phyElemRatio+0.5); 

    //losujemy wartosc
    var _pierce = random_range(rangeMin,rangeMax) * 0.01 * -(phyElemRatio-0.5);
    var _slash = random_range(rangeMin,rangeMax) * 0.01 * -(phyElemRatio-0.5);
    var _blunt = random_range(rangeMin,rangeMax) * 0.01 * -(phyElemRatio-0.5);
    
    //losujemy wartosc
    var _fire = random_range(rangeMin,rangeMax) * 0.01 * (phyElemRatio+0.5);
    var _cold = random_range(rangeMin,rangeMax) * 0.01 * (phyElemRatio+0.5);
    var _electro = random_range(rangeMin,rangeMax) * 0.01 * (phyElemRatio+0.5);
        
    
    //Okreslamy zmiane wagi
    var _weight = -level+(3+ sign(-level+3)*irandom(5));
    
    //Zmienne bonusowe
    random_range(level*0.1,level*0.3)
    
    var _hpReg = random_range(level*0.1,level*0.3)*choose(-1,1,0,0,0,0, sign(level-4), sign(level-5)) * 0.0005; 
    var _stamReg = random_range(level*0.1,level*0.3)*choose(-1,1,0,0,0,0, sign(level-4), sign(level-5)) * 0.005; 
    var _hpMax = random_range(level,level*2)*choose(-1,1,0,0,0,0, sign(level-4), sign(level-5));
    var _stamMax = random_range(level,level*2)*choose(-1,1,0,0,0,0, sign(level-4), sign(level-5)); 
    
    //WYKONCZENIE ZBROI
    scr_ItemArmorSet(arm, arm.name, arm.pierce + _pierce,arm.slash + _slash, arm.blunt + _blunt, arm.fire + _fire, arm.cold + _cold,arm.electro + _electro, clamp(arm.weight+_weight, -2, 50), _hpReg, _stamReg, _hpMax, _stamMax, _sprIndex);
    
    instance_destroy(); 
    exit;
}

