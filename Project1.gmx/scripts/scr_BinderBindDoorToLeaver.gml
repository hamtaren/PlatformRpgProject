var mapIndex = argument0;

var door = ds_map_find_value(maps[mapIndex],"bindTarget");
var leaver = ds_map_find_value(maps[mapIndex],"bindTo");

    if (instance_exists(door) && instance_exists(leaver))
    {
        leaver.door = door;
        //debug_log("Przypisano " + string(leaver.id) + " do " + string(door.id), DEBUG_SUCCESS);
    }
    else
        debug_log("Nie udało się przypisac dźwigni do drzwi",DEBUG_ERROR);
