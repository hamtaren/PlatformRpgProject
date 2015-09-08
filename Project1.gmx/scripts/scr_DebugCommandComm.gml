///scr_DebugCommandComm(option)
//(nie dodaje do listy ostatnich polecen)
var option = argument0;

if (option == "l")
{
    //wypisanie listy ostatnio uzywanych komend
    if (ds_list_size(lastCommands)>0)
    {
        var result = "";
        for(var i =0; i<ds_list_size(lastCommands);i++)    
            result+=ds_list_find_value(lastCommands,i) + ", ";
        
        debug_log(result,DEBUG_SUCCESS);
    }
    else
        debug_log("Nie używano żadnych komend",DEBUG_ERROR);   
}
else if (option == "a")
{
    //wypisanie wszystkich dostepnych komend
    var result = "";
    for(var i =0; i<ds_list_size(availableCommands);i++)    
        result+=ds_list_find_value(availableCommands,i) + ", ";
    
    debug_log(result,DEBUG_SUCCESS);
}