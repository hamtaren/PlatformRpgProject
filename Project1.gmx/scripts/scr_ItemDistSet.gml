///scr_ItemDistSet(itemObjRef,name,pierce,blunt,fire,cold,electro,dmgTrue,ohth,ammo,attackSpeed,sprite_index,sprIndex)
var item = argument0;
var _name = argument1;
var _pierce = argument2;
var _blunt = argument3;
var _fire = argument4;
var _cold = argument5;
var _electro = argument6;
var _dmgTrue = argument7;
var _ohth = argument8;
var _ammo = argument9;
var _attackSpeed = argument10;
var _sprite_index = argument11;
var _sprIndex = argument12;


item.name = _name;
item.pierce = _pierce;
item.blunt = _blunt;
item.fire = _fire;
item.cold = _cold;
item.electro = _electro;
item.dmgTrue = _dmgTrue;
item.ohth = _ohth;
item.ammo = _ammo;
item.attackSpeed = _attackSpeed;
item.sprite_index = _sprite_index;
item.sprIndex = _sprIndex;

//dobieranie odpowiedniego EQUIP spritea
if (_sprite_index == spr_FloorItemsBow)
    item.sprEq = spr_EqItemsBow;
else if (_sprite_index == spr_FloorItemsGun)
    item.sprEq = spr_EqItemsGun;


