///scr_DebugCommandShow

if (string_length(5)) //czyli jezeli wpisano samo "log "
    debug_log("Lista dostepnych rzeczy do wyswietlenia w scr_DebugCommandShow",DEBUG_WARN);
else
{
    var comm = string_copy(prompt,6,string_length(prompt)); //pobrany argument czyli to co bylo napisane po "log "
    
    switch(comm)
    {
        case "leader":
        {
            var mapShow = ds_map_create();
            
            ds_map_add(mapShow,"x",obj_Hero.x);
            ds_map_add(mapShow,"y",obj_Hero.y);
            ds_map_add(mapShow,"text", "Leader: " + string( place_meeting(x,y,obj_Leader) && !place_meeting(x,y+cspd,obj_Leader) ));
            
            ds_list_add(show,mapShow);

            break;
        }
    }
}
