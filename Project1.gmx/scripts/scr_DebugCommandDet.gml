///scr_DebugCommandDetail(option)
var option = argument0;
if (option == "d")  //usuwanie
{
    with (obj_IdDetail) instance_destroy();
    debug_log("Usunieto wszystkie IdDetail",DEBUG_INFO);    
}
else if (option == "s") //chowanie/wyswietlanie
{
    with (obj_IdDetail) show=!show;
    debug_log("Wyswietlanie/Chowanie IdDetail",DEBUG_INFO);    
}
else //tworzenie
{
mask_index = spr_HeroMask;
var obj = instance_place(mouse_x,mouse_y,all);
mask_index = noone;

if (instance_exists(obj))
    scr_IdDetailCreate(obj);
else
    debug_log("Nalezy wskazac jakis obiekt",DEBUG_WARN);
}

//Dodawanie do listy ostatnich komend
ds_list_add(lastCommands, "det -"+option);
