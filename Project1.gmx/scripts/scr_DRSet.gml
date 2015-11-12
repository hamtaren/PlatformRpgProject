///scr_DRSet(drObject,pierce,slash,blunt,fire,cold,electro,true)
//Ustawia konkretne wartosci kazdemu z typow zadawanych obrazen lub resista
var drObject = argument0;
if (instance_exists(drObject))
{
    drObject.pierce = argument1;
    drObject.slash = argument2;
    drObject.blunt = argument3;
    
    drObject.fire = argument4;
    drObject.cold = argument5;
    drObject.electro = argument6;
    
    drObject.dmgTrue =argument7;
}
else
{
    debug_log("Brak obj_DR!",DEBUG_WARN);
}
