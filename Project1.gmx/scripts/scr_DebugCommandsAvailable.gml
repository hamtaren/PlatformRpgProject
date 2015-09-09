///scr_DebugCommandsAvailable()

var list = ds_list_create();

//sprawdzac z scr_DebugCommands, wszelkie zmiany w nazwach tu i tam
//po dodaniu tutaj jakiejs komendy dodaj takze do switcha w scr_DebugCommands

ds_list_add(list,"log ");           //zapisuje do pliku log.txt to co napisze po "log "
ds_list_add(list,"comm -l");        //wyswietla ostatnio uzywane komendy
ds_list_add(list,"comm");           //to co nizej
ds_list_add(list,"comm -a");        //wyswietla dostepne komendy
ds_list_add(list,"help");           //wyswietla mala pomoc (dla przypomnienia, albo zebym nie musial ciagle tu zagladac
ds_list_add(list,"reset");          //resetuje room
ds_list_add(list,"god mode");       //wlacza wylacza god mode
ds_list_add(list,"teleport");       //teleportuje do myszki jezeli moze
ds_list_add(list,"cam");            //kamera podaza za myszka
ds_list_add(list,"keys");           //wyswietla klawisze debugera F6 itp...
ds_list_add(list,"id");             //wyswietla w logu id wskazanego przez mysz obiektu
ds_list_add(list,"del ");           //niszczy obiekt podany jako id po "del "

return list;

//HINT: tworzac komende z argumentami spojrz na scr_DebugCommandLog
