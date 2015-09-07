//scr_DebugCommandLog
if (string_length(4)) //czyli jezeli wpisano samo "log "
    debug_log("pusty log",DEBUG_WARN);
else
{
    var comm = string_copy(prompt,5,string_length(prompt)); //pobrany argument czyli to co bylo napisane po "log "
    debug_log(comm,DEBUG_SUCCESS);
    ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen
}
