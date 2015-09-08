//scr_DebugCommandLog
if (string_length(4)) //czyli jezeli wpisano samo "log "
    debug_log("pusty log",DEBUG_WARN);
else
{
    var comm = string_copy(prompt,5,string_length(prompt)); //pobrany argument czyli to co bylo napisane po "log "
    var dateTime = date_datetime_string( date_current_datetime() )+ " :: ";
    
    scr_DebugLogToFileSave(dateTime+comm);
    
    //var dir = "D:\Game Maker Studio\PlatformRpgProject\PlatformRpgProject\Project1.gmx\";
    //var file = file_text_open_append(dir+'log.txt');
    //file_text_write_string(file,dateTime+comm);    
    //file_text_close(file);
    
    ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen
}
