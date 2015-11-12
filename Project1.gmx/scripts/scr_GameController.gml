///scr_GameController()

//TWORZENIE DEBUGERA
if (os_type!= os_android)
    if (!instance_exists(obj_DebugController))
        instance_create(x,y,obj_DebugController);

//FULLSCREEN (tlylko na pc do testow)
if (os_type != os_android && keyboard_check_pressed(vk_f4))
    window_set_fullscreen(!window_get_fullscreen());
//WYCHODZENIE Z GRY
else if (keyboard_check_pressed(vk_escape))
{
    //czyszczenie pamieci
    //TODO: zrobic czyszzenie pamieci wszystkich ds'ow ktore sa deklarowane jako var
    ds_list_destroy(obj_DebugController.log); //debug logi   
    ds_list_destroy(obj_DebugController.lastCommands); //debug ostatnie polecenia
    ds_list_destroy(obj_DebugController.availableCommands); //debug dostepne polecenia

    //koniec gry ;( 
    game_end();
}
