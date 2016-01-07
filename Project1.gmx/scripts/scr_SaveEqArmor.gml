///scr_SaveEqArmor(arm)

var index = argument0;                  //index broni
var wpn = obj_Hero.objEq.armor[index];  //ref na bron
var section = "EqArmor"+string(index);  //skrot do nazwy sekcji
var have = (wpn != noone);              //sprawdzamy czy mamy bron

ini_write_real(section,"have",have);

if (have)
{
    ini_write_real(section,"sprEq",wpn.sprEq);
    ini_write_real(section,"sprIndex",wpn.sprIndex);
    ini_write_string(section,"name",wpn.name);
    
    ini_write_real(section,"pierce",wpn.pierce);
    ini_write_real(section,"slash",wpn.slash);
    ini_write_real(section,"blunt",wpn.blunt);
    ini_write_real(section,"fire",wpn.fire);
    ini_write_real(section,"cold",wpn.cold);
    ini_write_real(section,"electro",wpn.electro);
    
    ini_write_real(section,"weight",wpn.weight);
    
    ini_write_real(section,"hpRegBonus",wpn.hpRegBonus);
    ini_write_real(section,"staminaRegBonus",wpn.staminaRegBonus);
    ini_write_real(section,"hpMaxBonus",wpn.hpMaxBonus);
    ini_write_real(section,"staminaMaxBonus",wpn.staminaMaxBonus);
}
