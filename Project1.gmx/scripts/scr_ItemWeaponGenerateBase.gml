///scr_ItemWeaponGenerateBase(sprite_index,image_index)
//tworzy bazowa bron
_sprite_index = argument0;
_sprIndex = argument1;

//tworzenie przedmiotu
var wpn = instance_create(x,y,obj_Weapon);

//Nazwa przedmiotu
var _name = scr_ItemWeaponGetName(_sprite_index,_sprIndex);

var _pierce = scr_ItemWeaponGetBase(_sprite_index,_sprIndex,0);
var _slash = scr_ItemWeaponGetBase(_sprite_index,_sprIndex,1);
var _blunt = scr_ItemWeaponGetBase(_sprite_index,_sprIndex,2);
var _weight = scr_ItemWeaponGetBase(_sprite_index,_sprIndex,3);
var _attackSpeed = scr_ItemWeaponGetBase(_sprite_index,_sprIndex,4);

//Bazowe przedmioty nie sa naladowane niczym procz obrazen fizycznych
var _fire = 0, _cold = 0, _electro = 0, _dmgTrue = 0;

//TRUE DEMYDŻ dla karmazynowego oreza
if (_sprIndex = sprite_get_number(_sprite_index)-1)
{
    if (_sprite_index == spr_FloorItemsHammer || _sprite_index == spr_FloorItemsAxe )
        _dmgTrue = 100;
    else if (_sprite_index == spr_FloorItemsSword)
        _dmgTrue = 33;
    else if (_sprite_index == spr_FloorItemsStick)
        _dmgTrue = 50;    
}

//ustawienie wszystkich rzeczy
scr_ItemWeaponSet(wpn,_name,_pierce,_slash,_blunt,_fire,_cold,_electro,_dmgTrue,_weight,_attackSpeed,_sprite_index,_sprIndex);

return wpn;
