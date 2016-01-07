///scr_ItemArmorGetBase(sprIndex)

var _sprIndex = argument0;

//nazwa
var _name = scr_ItemArmorNames(_sprIndex);

//zadeklarowanie wszystkich zmiennych
var _pierce,_slash,_blunt,_fire,_cold,_electro,_weight,_hpReg,_stamReg,_hpMax,_stamMax;

//zainicjowanie w zalzeznosci od broni
switch(_sprIndex)
{
    case 0: _pierce = 0;_slash = 0; _blunt = 0; _fire = -0.1; _cold = 0.05; _electro = 0; _weight=0; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 1: _pierce = 0; _slash = 0; _blunt = 0; _fire = 0; _cold = 0; _electro = 0; _weight=1; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 2: _pierce = 0; _slash = 0.05; _blunt = 0; _fire = -0.05; _cold = 0.10; _electro = 0.05; _weight=2; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 3: _pierce = 0; _slash = 0.05; _blunt = 0.1; _fire = 0; _cold = 0.15; _electro = 0.05; _weight=3; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 4: _pierce = 0.05; _slash = 0.05; _blunt = 0.05;_fire = 0; _cold = 0.1; _electro = 0.05; _weight=4; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 5: _pierce = 0.05; _slash = 0.15; _blunt = 0; _fire = 0; _cold = 0; _electro = 0; _weight=5; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 6: _pierce = 0.1; _slash = 0.1; _blunt = 0.1; _fire = 0; _cold = 0; _electro = 0.05;_weight=6; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 7: _pierce = 0.15; _slash = 0.15; _blunt = 0.1; _fire = 0.05; _cold = 0; _electro = 0.05; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 8: _pierce = 0.15;_slash = 0.20; _blunt = 0.15; _fire = 0.05; _cold = 0.05; _electro = 0.05; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 9: _pierce = 0.25; _slash = 0.25; _blunt = 0.25; _fire = 0.1; _cold = 0.1; _electro = 0.1; _weight=15; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 10: _pierce = 0.3; _slash = 0.3; _blunt = 0.3; _fire = 0.3; _cold = 0.3; _electro = 0.3; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 11: _pierce = 0.5; _slash = 0.5; _blunt = 0.5; _fire = 0.5; _cold = 0.5; _electro = 0.5; _weight=15; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;    
}

var arm = instance_create(x,y,obj_Armor);
scr_ItemArmorSet(arm,_name,_pierce,_slash,_blunt,_fire,_cold,_electro,_weight,_hpReg,_stamReg,_hpMax,_stamMax,_sprIndex);

return arm;
