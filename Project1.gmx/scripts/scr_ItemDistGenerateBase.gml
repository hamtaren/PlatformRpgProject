///scr_ItemDistGenerateBase(sprite_index,image_index)
//tworzy bazowa bron
_sprite_index = argument0;
_sprIndex = argument1;

//tworzenie przedmiotu
var wpn = instance_create(x,y,obj_Dist);

//Nazwa przedmiotu
var _name = scr_ItemDistGetName(_sprite_index,_sprIndex);

var _ohth = scr_ItemDistGetBase(_sprite_index,_sprIndex,0); //one hand/two hand
var _pierce = scr_ItemDistGetBase(_sprite_index,_sprIndex,1);
var _blunt = scr_ItemDistGetBase(_sprite_index,_sprIndex,2);
var _ammo = scr_ItemDistGetBase(_sprite_index,_sprIndex,3);
var _attackSpeed = scr_ItemDistGetBase(_sprite_index,_sprIndex,4);

//Bazowe przedmioty nie sa naladowane niczym procz obrazen fizycznych
var _fire = 0, _cold = 0, _electro = 0, _dmgTrue = 0;

//ustawienie wszystkich rzeczy
scr_ItemDistSet(wpn,_name,_pierce,_blunt,_fire,_cold,_electro,_dmgTrue,_ohth,_ammo,_attackSpeed,_sprite_index,_sprIndex);

return wpn;

