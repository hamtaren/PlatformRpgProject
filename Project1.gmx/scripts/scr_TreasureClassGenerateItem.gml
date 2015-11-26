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
    show_message("Stworzono zbroje :P... pst... ni chuja, zbroi nie ma :D");
    instance_destroy(); exit;
}

