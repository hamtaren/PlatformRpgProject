///scr_LoadEqArmor(arm)

var index = argument0;                  //index broni
var wpn = obj_Hero.objEq.armor[index];  //ref na bron
var section = "EqArmor"+string(index);  //skrot do nazwy sekcji
var have = false;                               //sprawdzamy czy mamy bron

have = ini_read_real(section,"have",have);

if (have)
{
    wpn = instance_create(-20,-20,obj_Armor);    
    wpn.type = ITEM_ARMOR;
    
    wpn.sprEq = ini_read_real(section,"sprEq",wpn.sprEq);
    wpn.sprIndex = ini_read_real(section,"sprIndex",wpn.sprIndex);
    wpn.name = ini_read_string(section,"name",wpn.name);
    
    wpn.pierce = ini_read_real(section,"pierce",wpn.pierce);
    wpn.slash = ini_read_real(section,"slash",wpn.slash);
    wpn.blunt = ini_read_real(section,"blunt",wpn.blunt);
    wpn.fire = ini_read_real(section,"fire",wpn.fire);
    wpn.cold = ini_read_real(section,"cold",wpn.cold);
    wpn.electro = ini_read_real(section,"electro",wpn.electro);
    
    wpn.weight = ini_read_real(section,"weight",wpn.weight);
    
    wpn.hpRegBonus = ini_write_real(section,"hpRegBonus",wpn.hpRegBonus);
    wpn.staminaRegBonus = ini_write_real(section,"staminaRegBonus",wpn.staminaRegBonus);
    wpn.hpMaxBonus = ini_write_real(section,"hpMaxBonus",wpn.hpMaxBonus);
    wpn.staminaMaxBonus = ini_write_real(section,"staminaMaxBonus",wpn.staminaMaxBonus);
    
    obj_Hero.objEq.armor[index] = wpn;
}
