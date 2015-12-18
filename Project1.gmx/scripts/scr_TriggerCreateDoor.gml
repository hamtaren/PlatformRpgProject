///scr_TriggerCreateDoor(trigId)
//tworzenie obiektu triggera, ktory otwiera drzwi
var trig = instance_create(x,y,obj_TriggerDoor);
trig.doorId = id;
trig.trigId = argument0;
