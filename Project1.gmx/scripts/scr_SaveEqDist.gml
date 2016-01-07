///scr_SaveEqMelee(melee)

var index = argument0;                  //index broni
var wpn = obj_Hero.objEq.distance[index];  //ref na bron
var section = "EqDistance"+string(index);  //skrot do nazwy sekcji
var have = (wpn != noone);              //sprawdzamy czy mamy bron

ini_write_real(section,"have",have);

if (have)
{
    ini_write_real(section,"sprite_index",wpn.sprite_index);
    ini_write_real(section,"sprEq",wpn.sprEq);
    ini_write_real(section,"sprIndex",wpn.sprIndex);
    ini_write_string(section,"name",wpn.name);
    
    ini_write_real(section,"pierce",wpn.pierce);
    ini_write_real(section,"blunt",wpn.blunt);
    ini_write_real(section,"fire",wpn.fire);
    ini_write_real(section,"cold",wpn.cold);
    ini_write_real(section,"electro",wpn.electro);
    ini_write_real(section,"dmgTrue",wpn.dmgTrue);
    
    ini_write_real(section,"ammo",wpn.ammo);
    ini_write_real(section,"ohth",wpn.ohth);
    ini_write_real(section,"attackSpeed",wpn.attackSpeed);
}
