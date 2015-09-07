///scr_DebugLogAdd(mapLog)
//dodawanie mapy loga do listy loga przekazanej ze skryptu debug_log(), ktory wywolywany jest w poszczegolnych obiektach
var mapLog = argument0;

var logList = obj_DebugController.log;

ds_list_add(logList,mapLog);
