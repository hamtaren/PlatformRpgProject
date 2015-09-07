///scr_DebugDraw()
//rysowanie wszystkich informacji debugowych
if (debug)
{
    var vx,vy;
    //jezeli mamy wlaczone widoki
    if (view_enabled)
    {
        vx = view_xview[0];
        vy = view_yview[0];
    }
    else
    {
        vx = 0;
        vy = 0;
    }
    
    var commandText ="";
    
    if (command)
    {
        commandText = ": " + prompt;
    }
    
    //Napis na samej gorze ze jest wloczony debug mode
    draw_debug_text(vx+4,vy+4,'DEBUG MODE' + commandText,c_red);
    
    //scr_DebugLogDraw
    for (var i = 0; i< ds_list_size(log) && i< logShowLen; i++)
    {
        //pobieramy mape z listy
        var map = ds_list_find_index(log,ds_list_size(log) - i-1);
        //pobieramy wartosci z mapy
        var logText = ds_map_find_value(map,'log');
        var logType = ds_map_find_value(map,'type');
        var logColor;
        //ustawianie koloru loga na podstawie typu
        switch(logType)
        {
            case DEBUG_INFO: logColor = c_black; break;
            case DEBUG_WARN: logColor = c_yellow; break;
            case DEBUG_ERROR: logColor = c_red; break;
            case DEBUG_SUCCESS: logColor = c_green; break;
            default: logColor = c_black; break;                                                
        }
        
        //rysujemy wartosci
        draw_debug_text(vx+10,vy+14 +10*i,logText,logColor);
    }
}
