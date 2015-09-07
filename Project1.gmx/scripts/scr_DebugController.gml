///scr_DebugController
//rozne akcje takie jak wlaczenie i wylaczenie debug moda itp

//wlaczenie i wylaczenie debuga
if (keyboard_check_pressed(key_Mode))
    debug = !debug;


if (debug)
{
    //wlaczenie komend
    if (keyboard_check_pressed(key_Commands))
    {
        //czyszczenie prompta
        keyboard_string = "";
        //przelaczanie trybu
        command = !command;
        
        //wyswietlanie loga ze komendy sa nie/aktywne
        if (!command)        
            debug_log("Wyłączono listę komend, można sie ruszac",DEBUG_INFO);              
        else
            debug_log("Włączono listę komend, nie mozna sie poruszac",DEBUG_INFO); 

                       
    }

    //wlaczenie podswietlenia
    if (keyboard_check_pressed(key_Background))
        textBackground = !textBackground;
    
    //czyszczenie loga
    if (keyboard_check_pressed(key_ClearLog))
    {
        ds_list_clear(log);   //czyszczenie cos psuje
        commandSelected = 0;
    }
        
    //zmiana ilosci wyswietlanych logow
    if (keyboard_check_pressed(key_ChangeLogShowLen))
    {
        switch(logShowLen)
        {
            case LOG_TINY: logShowLen = LOG_SMALL ;break;
            case LOG_SMALL: logShowLen = LOG_MED ;break;
            case LOG_MED: logShowLen = LOG_FULL ;break;
            case LOG_FULL: logShowLen = LOG_TINY ;break;
            default: debug_log("Nieokreslony typ dlugosci loga w switchu (scr_DebugController)",DEBUG_WARN) ;break;                                                
        }
    }     
    //obsluga komend
    if (command)    
        scr_DebugCommands();
            
}
else
    command = false;    

//wciskane klawisze nie wplywaja na postac jezeli sa wpisywane polecenia i debug_mode is on
scr_DebugCommandsKeyBlock(debug && command);        
