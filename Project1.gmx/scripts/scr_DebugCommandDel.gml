///scr_DebugCommandDel(isDeletionByID)
var isDeletionById = argument0;

if (isDeletionById) //uwuwanie przy pomocy podania id
{
    if (string_length(4)) //czyli jezeli wpisano samo "del "
        debug_log("Trzeba podac co usunac",DEBUG_WARN);
    else
    {
        var comm = string_copy(prompt,5,string_length(prompt)); //pobrany argument czyli to co bylo napisane po "log "
        if instance_exists(real(comm))    
        {
            with (real(comm)) instance_destroy();
            debug_log("Zniszczono obiekt",DEBUG_SUCCESS);
        }
        else
            debug_log("Nie istnieje podany obiekt",DEBUG_WARN);
        
        ds_list_add(lastCommands,"del ");   //dodanie do listy ostatnich polecen
    }
}
else //usuwanie przez wskazanie kursorem
{
    //sprawdzenie co znajduje sie pod kursorem
    mask_index = spr_HeroMask;  //ustawiamy maske zeby wykrywac kolizje
    var obj = instance_place(mouse_x,mouse_y,all);    
    mask_index = noone;         //resetujemy maske
    
    //sprawdzamy czy cos wskazano
    if (instance_exists(obj))
    {        
        debug_log("Zniszczono obiekt o id = " + string(obj.id),DEBUG_SUCCESS);
        with(obj)instance_destroy();
    }
    else
        debug_log("Nie znaleziono obiektu",DEBUG_WARN);
    
    ds_list_add(lastCommands,"del -m");   //dodanie do listy ostatnich polecen
}
