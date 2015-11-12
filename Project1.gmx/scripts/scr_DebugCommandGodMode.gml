///scr_DebugCommandGodMode()

godMode = !godMode;

if (godMode)
{
    ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen
    debug_log("god mode: ON",DEBUG_SUCCESS);    
}    
else
    debug_log("god mode: OFF",DEBUG_SUCCESS);
