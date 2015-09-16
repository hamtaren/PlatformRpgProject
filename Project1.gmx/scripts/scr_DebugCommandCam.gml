///scr_DebugCommandCam(isFallowById)
//zmiana kamery
var isFallowById = argument0; 
var newTarget;

if (isFallowById)// podazanie za obiektem o podanym id
{
    if (string_length(4)) //czyli jezeli wpisano samo "cam "
        debug_log("Trzeba podac za czym podążac",DEBUG_WARN);
    else
    {
        var comm = string_copy(prompt,5,string_length(prompt)); //pobrany argument czyli to co bylo napisane po "log "
        
        if instance_exists(real(comm))            
            newTarget = real(comm);        
    }
}
else //podoazanie za myszką
    newTarget = noone;
    
if (camTarget == noone)
{
    ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen
    camTarget = obj_Camera.target;
    obj_Camera.target = newTarget;
    debug_log("Kamera podąża za nowym celem",DEBUG_SUCCESS);
}
else
{
    obj_Camera.target = camTarget;
    camTarget = noone;
    debug_log("Kamera podąża za poprzednim celem",DEBUG_SUCCESS);
}