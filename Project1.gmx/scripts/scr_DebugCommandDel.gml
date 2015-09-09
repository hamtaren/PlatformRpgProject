///scr_DebugCommandDel()
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
