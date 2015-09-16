///scr_DebugCommandId()

//sprawdzenie co znajduje sie pod kursorem
mask_index = spr_HeroMask;  //ustawiamy maske zeby wykrywac kolizje
var obj = instance_place(mouse_x,mouse_y,all);
mask_index = noone;         //resetujemy maske

//sprawdzamy czy cos wskazano
if (obj!=noone)
    debug_log("Wskazano obiekt o id = " + string(obj.id),DEBUG_SUCCESS);
else
    debug_log("Nie znaleziono obiektu",DEBUG_WARN);

ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen