///scr_DebugCommands()
//todo: dodac mozliwosc odpalania poprzednich komend z listy, przesuwanie strzalkami gora dol (listowac tylko te udane)
if (keyboard_check_pressed(vk_enter))
{
    if ( string_pos("log ",prompt) !=0)
    {
        var comm = string_copy(prompt,5,string_length(prompt));
        debug_log(comm,DEBUG_SUCCESS);

    }
    else
    {
        debug_log("Nie ma komendy: "+ prompt,DEBUG_ERROR);
    }
    //czyszczenie prompta
    keyboard_string = "";
}
else if (keyboard_check_pressed(vk_up))
{
    //pobieranie poprzedniego commanda
}
else if (keyboard_check_pressed(vk_down))
{
    //pobieranie nastepnego commanda
}
else
    prompt = keyboard_string; //pobieranie znakow z klawiatury


