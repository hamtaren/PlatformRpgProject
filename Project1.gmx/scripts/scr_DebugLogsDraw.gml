///scr_DebugLogsDraw(view_xview,view_yview)
//rysowanie listy logow pod napisem DEBUG MODE
var vx = argument0;
var vy = argument1;

for (var i = 0; i< ds_list_size(log) && i< logShowLen; i++)
{
    //pobieramy mape z listy
    var json = ds_list_find_value(log,ds_list_size(log) - i-1);
    var map =  json_decode(json);

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