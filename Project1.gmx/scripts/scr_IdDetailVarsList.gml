///scr_IdDetailVarsList()
//TODO: dodawanie zmiennych do wyswietlania
/*
sprawdzanie ktory obiekt w refie i czy istnieje
dodawnie konkretnych zmiennych do listy i czy istnieja (jezeli sie da?)
*/

if (instance_exists(ref))
{
    ds_list_clear(varsList); //trzeba czyscic za kazdym razem zeby byl efekt odswiezania
    switch (object_get_name(ref.object_index))
    {
        case "obj_Door" : scr_IdDetailobj_Door(); break;
        case "obj_LeaverDoor" : scr_IdDetailobj_LeaverDoor(); break;
        case "obj_Hero" : scr_IdDetailobj_Hero(); break;
    }
}
