///scr_DoorOpen(doorRef)
//skrypt otwierania drzwi
var door = argument0;

if (instance_exists(door) && door!=noone)
{
    if (!door.opening && !door.bashed)
    {
        door.opened = !door.opened;   //zmiana
        door.opening = true;          //poniewaz zmienilismy to dzwignia nie jest jeszcze przeciagnieta na miejsce docelowe
    }
}
else
    debug_log("Nie mozna otworzyc drzwi bo door==noone! lub nie istnieja takie drzwi",DEBUG_ERROR);
