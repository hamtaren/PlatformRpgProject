///scr_SaveEqMelee(melee)

var index = argument0;                  //index broni
var wpn = obj_Hero.objEq.melee[index];  //ref na bron
var section = "EqMelee"+string(index);  //skrot do nazwy sekcji
var have = false;                               //sprawdzamy czy mamy bron

have = ini_read_real(section,"have",have);

if (have)
{
    wpn = instance_create(-20,-20,obj_Weapon);    
    wpn.type = WPN_MELEE;
    
    wpn.sprite_index = ini_read_real(section,"sprite_index",wpn.sprite_index);
    wpn.sprEq = ini_read_real(section,"sprEq",wpn.sprEq);
    wpn.sprIndex = ini_read_real(section,"sprIndex",wpn.sprIndex);
    wpn.name = ini_read_string(section,"name",wpn.name);
    
    wpn.pierce = ini_read_real(section,"pierce",wpn.pierce);
    wpn.slash = ini_read_real(section,"slash",wpn.slash);
    wpn.blunt = ini_read_real(section,"blunt",wpn.blunt);
    wpn.fire = ini_read_real(section,"fire",wpn.fire);
    wpn.cold = ini_read_real(section,"cold",wpn.cold);
    wpn.electro = ini_read_real(section,"electro",wpn.electro);
    wpn.dmgTrue = ini_read_real(section,"dmgTrue",wpn.dmgTrue);
    
    wpn.weight = ini_read_real(section,"weight",wpn.weight);
    wpn.attackSpeed = ini_read_real(section,"attackSpeed",wpn.attackSpeed);
    
    obj_Hero.objEq.melee[index] = wpn;
}
