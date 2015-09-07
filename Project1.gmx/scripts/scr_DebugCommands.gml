///scr_DebugCommands()
if (keyboard_check_pressed(vk_enter))
{    
    if (prompt == "")
        exit;
        
    for (var i = 0; i<ds_list_size(availableCommands); i++)
    {
        var commandFromList = ds_list_find_value(availableCommands,i);
        var stringPos = string_pos(commandFromList,prompt);
        if (stringPos !=0 && stringPos==1)
        {
        //KOMENDY
            switch(commandFromList) //sprawdzac nazwy z scr_DebugCommandsAvailable (tam jest tez napisane co robią), wszelkie zmiany w nazwach tu i tam
            {
                case "log ": scr_DebugCommandLog(); break;
                case "comm -l": scr_DebugCommandComm("l"); break;
                case "comm":
                case "comm -a": scr_DebugCommandComm("a"); break;
                case "help": scr_DebugCommandHelp(); break;
                case "reset": scr_DebugCommandReset(); break;
                case "god mode": scr_DebugCommandGodMode(); break;
                case "teleport": scr_DebugCommandTeleport(); break;
                case "cam": scr_DebugCommandCam(); break;
                case "keys": scr_DebugCommandKeys(); break;
                default: debug_log("Nie dodano do switcha w scr_DebugCommands",DEBUG_ERROR); break;
            }
            break;
        }
        
        if (i==ds_list_size(availableCommands)-1)
            debug_log("Nie ma komendy: "+ prompt,DEBUG_ERROR);
    }

    //resetujemy wskaznik na liscie ostatnich polecen
    commandSelected = ds_list_size(lastCommands); 

    //czyszczenie prompta
    keyboard_string = "";
    
}//PRZESUWANIE POLECEN Z LISTY OSTATNICH KOMEND
else if (keyboard_check_pressed(vk_up)) //wywolywanie poprzedniego polecenia w prompcie
{
    if (ds_list_size(lastCommands)>0)
    {
        if (commandSelected>0)
            commandSelected--;
            
        keyboard_string = ds_list_find_value(lastCommands,commandSelected); 
    }
}
else if (keyboard_check_pressed(vk_down)) //wywolanie nastepnego polecenia w prompcie
{
    if (ds_list_size(lastCommands)>0)
    {
        if (commandSelected<ds_list_size(lastCommands))
            commandSelected++;
        
        keyboard_string = ds_list_find_value(lastCommands,commandSelected); 
    }
}
else
    prompt = keyboard_string; //pobieranie znakow z klawiatury
