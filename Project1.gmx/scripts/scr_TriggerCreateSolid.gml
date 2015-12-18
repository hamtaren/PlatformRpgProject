///scr_TriggerCreateSolid(trigId)
//tworzenie obiektu triggera, ktory otwiera drzwi
var trig = instance_create(x,y,obj_TriggerSolid);
trig.solidId = id;
trig.trigId = argument0;
