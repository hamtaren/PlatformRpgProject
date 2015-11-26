///scr_ItemWeaponSet(itemObjRef,name,pierce,slash,blunt,fire,cold,electro,dmgTrue,weight,attackSpeed,sprite_index,sprIndex)
var item = argument0;
var _name = argument1;
var _pierce = argument2;
var _slash = argument3;
var _blunt = argument4;
var _fire = argument5;
var _cold = argument6;
var _electro = argument7;
var _dmgTrue = argument8;
var _weight = argument9;
var _attackSpeed = argument10;
var _sprite_index = argument11;
var _sprIndex = argument12;

item.name = _name;
item.pierce = _pierce;
item.slash = _slash;
item.blunt = _blunt;
item.fire = _fire;
item.cold = _cold;
item.electro = _electro;
item.dmgTrue = _dmgTrue;
item.weight = _weight;
item.attackSpeed = _attackSpeed;
item.sprite_index = _sprite_index;
item.sprIndex = _sprIndex;

//dobieranie odpowiedniego EQUIP spritea
if (_sprite_index == spr_FloorItemsAxe)
    item.sprEq = spr_EqItemsAxe;
else if (_sprite_index == spr_FloorItemsSword)
    item.sprEq = spr_EqItemsSword;
else if (_sprite_index == spr_FloorItemsStick)
    item.sprEq = spr_EqItemsStick;
else if (_sprite_index == spr_FloorItemsHammer)
    item.sprEq = spr_EqItemsHammer;

