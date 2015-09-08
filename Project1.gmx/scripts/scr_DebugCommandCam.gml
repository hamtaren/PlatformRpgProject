if (camTarget == noone) //wlaczenie trybu wolnej kamery
{
    ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen
    camTarget = obj_Camera.target;
    obj_Camera.target = noone;
    debug_log("Kamera podąża za myszką",DEBUG_SUCCESS);
}
else
{
    obj_Camera.target = camTarget;
    camTarget = noone;
    debug_log("Kamera podąża za poprzednim celem",DEBUG_SUCCESS);
}